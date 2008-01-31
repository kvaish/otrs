# --
# Kernel/Output/HTML/PreferencesSMIME.pm
# Copyright (C) 2001-2008 OTRS AG, http://otrs.org/
# --
# $Id: PreferencesSMIME.pm,v 1.9 2008-01-31 06:21:30 tr Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl-2.0.txt.
# --

package Kernel::Output::HTML::PreferencesSMIME;

use strict;
use warnings;

use Kernel::System::Crypt;

use vars qw($VERSION);
$VERSION = qw($Revision: 1.9 $) [1];

sub new {
    my ( $Type, %Param ) = @_;

    # allocate new hash for object
    my $Self = { %Param };
    bless( $Self, $Type );

    # get needed objects
    for (qw(ConfigObject LogObject DBObject LayoutObject UserID ParamObject ConfigItem MainObject))
    {
        die "Got no $_!" if ( !$Self->{$_} );
    }

    return $Self;
}

sub Param {
    my ( $Self, %Param ) = @_;

    my @Params = ();
    if ( !$Self->{ConfigObject}->Get('SMIME') ) {
        return ();
    }
    push(
        @Params,
        {   %Param,
            Name     => $Self->{ConfigItem}->{PrefKey},
            Block    => 'Upload',
            Filename => $Param{UserData}->{"SMIMEFilename"},
        },
    );
    return @Params;
}

sub Run {
    my ( $Self, %Param ) = @_;

    my %UploadStuff = $Self->{ParamObject}->GetUploadAll(
        Param  => "UserSMIMEKey",
        Source => 'String',
    );
    if ( !$UploadStuff{Content} ) {
        return 1;
    }
    my $CryptObject = Kernel::System::Crypt->new(
        LogObject    => $Self->{LogObject},
        DBObject     => $Self->{DBObject},
        ConfigObject => $Self->{ConfigObject},
        CryptType    => 'SMIME',
        MainObject   => $Self->{MainObject},
    );
    if ( !$CryptObject ) {
        return 1;
    }
    my $Message = $CryptObject->CertificateAdd( Certificate => $UploadStuff{Content} );
    if ( !$Message ) {
        $Self->{Error} = $Self->{LogObject}->GetLogEntry(
            Type => 'Error',
            What => 'Message',
        );
        return;
    }
    else {
        my %Attributes
            = $CryptObject->CertificateAttributes( Certificate => $UploadStuff{Content}, );
        if ( $Attributes{Hash} ) {
            $UploadStuff{Filename} = "$Attributes{Hash}.pem";
        }
        $Self->{UserObject}->SetPreferences(
            UserID => $Param{UserData}->{UserID},
            Key    => "SMIMEHash",
            Value  => $Attributes{Hash},
        );
        $Self->{UserObject}->SetPreferences(
            UserID => $Param{UserData}->{UserID},
            Key    => "SMIMEFilename",
            Value  => $UploadStuff{Filename},
        );

        #        $Self->{UserObject}->SetPreferences(
        #            UserID => $Param{UserData}->{UserID},
        #            Key => 'SMIMECert',
        #            Value => $UploadStuff{Content},
        #        );
        #        $Self->{UserObject}->SetPreferences(
        #            UserID => $Param{UserData}->{UserID},
        #            Key => "SMIMEContentType",
        #            Value => $UploadStuff{ContentType},
        #        );
        $Self->{Message} = $Message;
        return 1;
    }
}

sub Download {
    my ( $Self, %Param ) = @_;

    my $CryptObject = Kernel::System::Crypt->new(
        LogObject    => $Self->{LogObject},
        DBObject     => $Self->{DBObject},
        ConfigObject => $Self->{ConfigObject},
        CryptType    => 'SMIME',
        MainObject   => $Self->{MainObject},
    );
    if ( !$CryptObject ) {
        return 1;
    }

    # get preferences with key parameters
    my %Preferences = $Self->{UserObject}->GetPreferences( UserID => $Param{UserData}->{UserID}, );

    # check if SMIMEHash is there
    if ( !$Preferences{'SMIMEHash'} ) {
        $Self->{LogObject}->Log(
            Priority => 'Error',
            Message  => 'Need SMIMEHash to get certificat key of ' . $Param{UserData}->{UserID},
        );
        return ();
    }
    else {
        $Preferences{'SMIMECert'}
            = $CryptObject->CertificateGet( Hash => $Preferences{'SMIMEHash'}, );
    }

    # check if cert exists
    if ( !$Preferences{'SMIMECert'} ) {
        $Self->{LogObject}->Log(
            Priority => 'Error',
            Message  => 'Couldn\'t get cert of hash ' . $Preferences{'SMIMEHash'},
        );
        return;
    }
    else {
        return (
            ContentType => 'text/plain',
            Content     => $Preferences{'SMIMECert'},
            Filename    => $Preferences{'SMIMEFilename'},
        );
    }
}

sub Error {
    my ( $Self, %Param ) = @_;

    return $Self->{Error} || '';
}

sub Message {
    my ( $Self, %Param ) = @_;

    return $Self->{Message} || '';
}

1;
