# --
# Kernel/Language/it.pm - provides it language translation
# Copyright (C) 2003 Remo Catelotti <Remo.Catelotti at bull.it>
#               2003 Gabriele Santilli <gsantilli at omnibus.net>
# --
# $Id: it.pm,v 1.19 2005-05-16 12:46:35 martin Exp $
# --
# This software comes with ABSOLUTELY NO WARRANTY. For details, see
# the enclosed file COPYING for license information (GPL). If you
# did not receive this file, see http://www.gnu.org/licenses/gpl.txt.
# --
package Kernel::Language::it;

use strict;

use vars qw($VERSION);
$VERSION = '$Revision: 1.19 $';
$VERSION =~ s/^\$.*:\W(.*)\W.+?$/$1/;

# --
sub Data {
    my $Self = shift;
    my %Param = @_;

    # $$START$$
    # Last translation file sync: Sun May  8 23:17:01 2005

    # possible charsets
    $Self->{Charset} = ['iso-8859-1', 'iso-8859-15', ];
    # date formats (%A=WeekDay;%B=LongMonth;%T=Time;%D=Day;%M=Month;%Y=Jear;)
    $Self->{DateFormat} = '%D/%M/%Y %T';
    $Self->{DateFormatLong} = '%A %D %B %Y %T';
    $Self->{DateInputFormat} = '%D/%M/%Y';
    $Self->{DateInputFormatLong} = '%D/%M/%Y - %T';

    $Self->{Translation} = {
      # Template: AAABase
      'Yes' => 'S�',
      'No' => '',
      'yes' => 's�',
      'no' => '',
      'Off' => 'Spento',
      'off' => 'spento',
      'On' => 'Acceso',
      'on' => 'acceso',
      'top' => 'inizio pagina',
      'end' => 'fine pagina',
      'Done' => 'Fatto',
      'Cancel' => 'Annulla',
      'Reset' => 'Ripristina',
      'day' => 'giorno',
      'days' => 'giorni',
      'hour' => 'ora',
      'hours' => 'ore',
      'minute' => 'minuto',
      'minutes' => 'minuti',
      'wrote' => 'ha scritto',
      'Message' => 'Messaggio',
      'Error' => 'Errore',
      'Bug Report' => 'Segnala anomalie',
      'Attention' => 'Attenzione',
      'Warning' => 'Attenzione',
      'Module' => 'Modulo',
      'Modulefile' => 'Archivio del modulo',
      'Subfunction' => 'Sotto-funzione',
      'Line' => 'Linea',
      'Example' => 'Esempio',
      'Examples' => 'Esempi',
      'invalid' => 'non valido',
      ' 2 minutes' => ' 2 minuti',
      ' 5 minutes' => ' 5 minuti',
      ' 7 minutes' => ' 7 minuti',
      '10 minutes' => '10 minuti',
      '15 minutes' => '15 minuti',
      'Mr.' => '',
      'Mrs.' => '',
      'Next' => 'Prossimo',
      'Back' => 'Indietro',
      'Next...' => 'Prossimo...',
      '...Back' => '...indietro',
      '-none-' => '',
      'none' => 'nessuno',
      'none!' => 'nessuno!',
      'none - answered' => 'nessuno - risposto',
      'please do not edit!' => 'per favore non modificare!',
      'AddLink' => 'Aggiungi link',
      'Link' => 'Collega',
      'Linked' => '',
      'Link (Normal)' => '',
      'Link (Parent)' => '',
      'Link (Child)' => '',
      'Normal' => 'Normale',
      'Parent' => '',
      'Child' => '',
      'Hit' => 'Accesso',
      'Hits' => 'Accessi',
      'Text' => 'Testo',
      'Lite' => 'Ridotta',
      'User' => 'Utenti',
      'Username' => 'Nome utente',
      'Language' => 'Lingua',
      'Languages' => 'Lingue',
      'Password' => '',
      'Salutation' => 'Titolo',
      'Signature' => 'Firma',
      'Customer' => 'Cliente',
      'CustomerID' => 'Codice cliente',
      'CustomerIDs' => '',
      'customer' => 'cliente',
      'agent' => 'operatore',
      'system' => 'sistema',
      'Customer Info' => 'Informazioni Cliente',
      'go!' => 'vai!',
      'go' => 'vai',
      'All' => 'Tutti',
      'all' => 'tutti',
      'Sorry' => 'Spiacente',
      'update!' => 'aggiorna!',
      'update' => 'aggiorna',
      'Update' => 'Aggiorna',
      'submit!' => 'accetta!',
      'submit' => 'Accetta',
      'Submit' => '',
      'change!' => 'Modifica!',
      'Change' => 'Modifica',
      'change' => 'modifica',
      'click here' => 'clicca qui',
      'Comment' => 'Commento',
      'Valid' => 'Valido',
      'Name' => 'Nome',
      'Group' => 'Gruppo',
      'Description' => 'Descrizione',
      'description' => 'descrizione',
      'Theme' => 'Tema',
      'Created' => 'Creato',
      'Created by' => '',
      'Changed' => '',
      'Changed by' => '',
      'Search' => 'Cerca',
      'and' => 'e',
      'between' => '',
      'Fulltext Search' => '',
      'Data' => '',
      'Options' => 'Opzioni',
      'Title' => 'Titolo',
      'Item' => '',
      'Delete' => 'Cancella',
      'Edit' => 'Modifica',
      'View' => 'Vista',
      'Number' => '',
      'System' => 'Sistema',
      'Contact' => 'Contatti',
      'Contacts' => '',
      'Export' => '',
      'Up' => '',
      'Down' => '',
      'Add' => 'Aggiungi',
      'Category' => 'Categoria',
      'New message' => 'Nuovo messaggio',
      'New message!' => 'Nuovo messaggio!',
      'Admin-Area' => 'Area Amministrazione',
      'Agent-Area' => 'Area Operatore',
      'FAQ-Area' => 'Area FAQ',
      'QueueView' => 'Lista ticket',
      'Stats' => 'Statistiche',
      'Please answer this ticket(s) to get back to the normal queue view!' => 'Per favore rispondi a queste richieste prima di tornare alla lista!',
      'You got new message!' => 'Hai un nuovo messaggio!',
      'You have %s new message(s)!' => 'Hai %s nuovi messaggi!',
      'You have %s reminder ticket(s)!' => 'Hai %s ticket(s) memorizzati',
      'The recommended charset for your language is %s!' => 'Il set di caratteri raccomandato per la tua lingua � %s!',
      'Passwords dosn\'t match! Please try it again!' => 'La password non corrisponde! Per favore, prova di nuovo',
      'Password is already in use! Please use an other password!' => '',
      'Password is already used! Please use an other password!' => '',
      'No suggestions' => 'Non ci sono suggerimenti',
      'Word' => 'Parola',
      'Ignore' => 'Ignora',
      'replace with' => 'sostituisci con',
      'Welcome to OTRS' => 'Benvenuto in OTRS',
      'There is no account with that login name.' => 'Nome utente non valido.',
      'Login failed! Your username or password was entered incorrectly.' => 'Accesso fallito! Nome utente o password non corretti.',
      'Please contact your admin' => 'Per favore contatta il tuo amministratore',
      'Logout successful. Thank you for using OTRS!' => 'Disconnessione avvenuta con successo. Grazie per aver usato OTRS!',
      'Invalid SessionID!' => 'ID di sessione non valido!',
      'Feature not active!' => 'Funzione non attiva!',
      'Ticket Number' => 'Numero Richiesta',
      'Ticket Object' => '',
      'No such Ticket Number "%s"! Can\'t link it!' => 'Numero richiesta "%s" non presente! Collegamento impossibile!',
      'Take this Customer' => 'Prendi questo Cliente',
      'Take this User' => 'Prendi questo Utente',
      'possible' => 'possibile',
      'reject' => 'respinto',
      'Facility' => 'Funzione',
      'Timeover' => 'Tempo scaduto',
      'Pending till' => 'In attesa per',
      'Don\'t work with UserID 1 (System account)! Create new users!' => 'Non lavorare con l\'operatore con ID 1 (System account)! Crea dei nuovi utenti!',
      'Dispatching by email To: field.' => 'Smistamento in base al campo To:.',
      'Dispatching by selected Queue.' => 'Smistamento in base alla coda selezionata.',
      'No entry found!' => 'Vuoto!',
      'Session has timed out. Please log in again.' => 'Sessione scaduta. Per favore, effettua di nuovo l\'accesso.',
      'No Permission!' => 'Permessi insufficienti',
      'To: (%s) replaced with database email!' => 'A: (%s) sostituito con l\'indirizzo presente nel database',
      'Cc: (%s) added database email!' => '',
      'Don\'t show closed Tickets' => 'Non mostrare le richieste chiuse',
      'Show closed Tickets' => 'Mostra le richieste chiuse',
      'New Article' => 'Nuovo articolo',
      '(Click here to add)' => '(clicca per aggiungere)',
      'last' => 'ultimo',
      'before' => 'precedente',
      'day(s)' => 'giorno(i)',
      'month(s)' => 'mese(i)',
      'week(s)' => 'settimana(e)',
      'year(s)' => 'anno(i)',
      'Preview' => 'Anteprima',
      'Added User "%s"' => 'Utente "%s" aggiunto',
      'Contract' => 'Contratto',
      'Online Customer: %s' => 'Clienti collegati: %s',
      'Online Agent: %s' => 'Operatori collegati: %s',
      'Calendar' => 'Calendario',
      'File' => '',
      'Filename' => 'Nome file',
      'Type' => 'Tipo',
      'Size' => 'Dimensione',
      'Upload' => 'Caricamento',
      'Directory' => 'Cartella',
      'Signed' => 'Firmato',
      'Sign' => 'Firma',
      'Crypted' => 'Crittografato',
      'Crypt' => 'Crittografa',
      'History::Move' => 'Richiesta mossa nella coda "%s" (%s) dalla coda "%s" (%s).',
      'History::NewTicket' => 'Nuova richiesta [%s] creata (Q=%s;P=%s;S=%s).',
      'History::FollowUp' => 'Prosecuzione per [%s]. %s',
      'History::SendAutoReject' => 'Rifiuto automatico inviato a "%s".',
      'History::SendAutoReply' => 'Risposta automatica inviata a "%s".',
      'History::SendAutoFollowUp' => 'Prosecuzione automatica inviata a "%s".',
      'History::Forward' => 'Inoltrato a "%s".',
      'History::Bounce' => 'Bounced to "%s".',
      'History::SendAnswer' => 'Email inviata a "%s".',
      'History::SendAgentNotification' => '"%s"-notifica inviata a "%s".',
      'History::SendCustomerNotification' => 'Notifica inviata a "%s".',
      'History::EmailAgent' => 'Email inviata al cliente.',
      'History::EmailCustomer' => 'Email. %s aggiunta',
      'History::PhoneCallAgent' => 'L\'operatore ha chiamato il cliente.',
      'History::PhoneCallCustomer' => 'Il cliente ha chiamato noi.',
      'History::AddNote' => 'Aggiunta nota (%s)',
      'History::Lock' => 'Richiesta bloccata.',
      'History::Unlock' => 'Richiesta lasciata.',
      'History::TimeAccounting' => '%s unita\' temporali addebitate. Nuovo totale: %s.',
      'History::Remove' => '%s',
      'History::CustomerUpdate' => 'Aggiornato: %s',
      'History::PriorityUpdate' => 'Priorita\' cambiata da "%s" (%s) a "%s" (%s).',
      'History::OwnerUpdate' => 'Nuovo operatore assegnato = "%s" (ID=%s).',
      'History::LoopProtection' => 'Loop-Protection! Nessuna risposta automatica inviata a "%s".',
      'History::Misc' => '%s',
      'History::SetPendingTime' => 'Aggiornato: %s',
      'History::StateUpdate' => 'Vecchio: "%s" Nuovo: "%s"',
      'History::TicketFreeTextUpdate' => 'Aggiornato: %s=%s;%s=%s;',
      'History::WebRequestCustomer' => 'Richiesta del cliente via web.',
      'History::TicketLinkAdd' => 'Aggiunto link alla richiesta "%s".',
      'History::TicketLinkDelete' => 'Eliminato link alla richiesta "%s".',

      # Template: AAAMonth
      'Jan' => 'Gen',
      'Feb' => '',
      'Mar' => '',
      'Apr' => '',
      'May' => 'Mag',
      'Jun' => 'Giu',
      'Jul' => 'Lug',
      'Aug' => 'Ago',
      'Sep' => 'Set',
      'Oct' => 'Ott',
      'Nov' => '',
      'Dec' => 'Dic',

      # Template: AAANavBar
      'Ticket-Area' => '',
      'Logout' => 'Esci',
      'Agent Preferences' => 'Impostazione preferenze per l\'operatore',
      'Preferences' => 'Preferenze',
      'Agent Mailbox' => '',
      'Stats-Area' => '',
      'FAQ' => '',
      'FAQ-Search' => '',
      'FAQ-Article' => '',
      'FAQ-State' => '',
      'Admin' => '',
      'A web calendar' => '',
      'WebMail' => '',
      'A web mail client' => '',
      'FileManager' => '',
      'A web file manager' => '',
      'Artefact' => '',
      'Incident' => '',
      'Advisory' => '',
      'WebWatcher' => '',

      # Template: AAAPreferences
      'Preferences updated successfully!' => 'Preferenze modificate con successo!',
      'Mail Management' => 'Gestione posta',
      'Frontend' => 'Interfaccia',
      'Other Options' => 'Altre opzioni',
      'New ticket notification' => 'Notifica nuova richiesta',
      'Send me a notification if there is a new ticket in "My Queues".' => 'Mandami una notifica se viene inserita una nuova richiesta in una coda della lista "Le mie Code"',
      'Follow up notification' => 'Notifica di risposta',
      'Send me a notification if a customer sends a follow up and I\'m the owner of this ticket.' => 'Mandami una notifica se un cliente risponde ad una richiesta che ho io in gestione.',
      'Ticket lock timeout notification' => 'Notifica scadenza gestione richieste',
      'Send me a notification if a ticket is unlocked by the system.' => 'Mandami una notifica se una richiesta viene sbloccata dal sistema.',
      'Move notification' => 'Notifica spostamento',
      'Send me a notification if a ticket is moved into one of "My Queues".' => 'Mandami una notifica se una richiesta viene spostata in una coda della lista "Le mie Code"',
      'Custom Queue' => 'Coda personale',
      'QueueView refresh time' => 'Tempo di aggiornamento lista richieste',
      'Select your QueueView refresh time.' => 'Scegli il tempo di aggiornamento della lista ticket.',
      'Select your frontend language.' => 'Scegli la lingua per la tua interfaccia.',
      'Select your frontend Charset.' => 'Seleziona il set di caratteri da usare.',
      'Select your frontend Theme.' => 'Scegli il tema per la tua interfaccia.',
      'Select your frontend QueueView.' => 'Scegli l\'interfaccia per la lista messaggi.',
      'Spelling Dictionary' => 'Dizionario',
      'Select your default spelling dictionary.' => 'Seleziona il dizionario standard',
      'PhoneView' => 'RichiestaTelefonica',
      'TicketZoom' => 'DettagliRichiesta',
      'CreateTicket' => 'CreaRichiesta',
      'Screen after new ticket' => 'Pagina da mostrare dopo una nuova richiesta',
      'Select your screen after creating a new ticket.' => 'Scegli la pagina da mostrare dopo una nuova richiesta',
      'Closed Tickets' => 'Richieste chiuse',
      'Show closed tickets.' => 'Mostra le richieste chiuse.',
      'Max. shown Tickets a page in QueueView.' => 'Numero massimo di richieste per pagina nella Lista Richieste',
      'Max. shown Tickets a page in Overview.' => 'Numero massimo di richieste per pagina nel Sommario',
      'Can\'t update password, passwords dosn\'t match! Please try it again!' => '',
      'Can\'t update password, invalid characters!' => '',
      'Can\'t update password, need min. 8 characters!' => '',
      'Can\'t update password, need 2 lower and 2 upper characters!' => '',
      'Can\'t update password, need min. 1 digit!' => '',
      'Can\'t update password, need min. 2 characters!' => '',

      # Template: AAATicket
      'Lock' => 'Prendi in gestione',
      'Unlock' => 'Abbandona gestione',
      'History' => 'Storico',
      'Zoom' => 'Dettagli',
      'Age' => 'Tempo trascorso',
      'Bounce' => 'Rispedisci al mittente',
      'Forward' => 'Inoltra',
      'From' => 'Da',
      'To' => 'A',
      'Cc' => '',
      'Bcc' => '',
      'Subject' => 'Oggetto',
      'Move' => 'Sposta',
      'Queue' => 'Coda',
      'Priority' => 'Priorit�',
      'State' => 'Stato',
      'Compose' => 'Componi',
      'Pending' => 'In attesa',
      'Owner' => 'Operatore',
      'Sender' => 'Mittente',
      'Article' => 'Articolo',
      'Ticket' => 'Richiesta',
      'Createtime' => 'Istante di creazione',
      'plain' => 'diretto',
      'eMail' => '',
      'email' => '',
      'Close' => 'Chiudi',
      'Action' => 'Azione',
      'Attachment' => 'Allegato',
      'Attachments' => 'Allegati',
      'This message was written in a character set other than your own.' => 'Questo messaggio � stato scritto in un set di caratteri diverso dal tuo.',
      'If it is not displayed correctly,' => 'Se non � visualizzato correttamente,',
      'This is a' => 'Questo � un',
      'to open it in a new window.' => 'per aprire in una nuova finestra.',
      'This is a HTML email. Click here to show it.' => 'Questa � una email in HTML. Clicca qui per visualizzarla.',
      'closed successful' => 'chiuso con successo',
      'closed unsuccessful' => 'chiuso senza successo',
      'new' => 'nuovo',
      'open' => 'aperto',
      'closed' => 'chiuso',
      'removed' => 'rimosso',
      'pending reminder' => 'in attesa di risposta',
      'pending auto close+' => 'in attesa di chiusura automatica+',
      'pending auto close-' => 'in attesa di chiusura automatica-',
      'email-external' => 'eMail esterna',
      'email-internal' => 'eMail interna',
      'note-external' => 'Nota esterna',
      'note-internal' => 'Nota interna',
      'note-report' => 'Nota rapporto',
      'phone' => 'telefono',
      'sms' => '',
      'webrequest' => 'richiesta da web',
      'lock' => 'prendi in gestione',
      'unlock' => 'abbandona gestione',
      'very low' => 'molto basso',
      'low' => 'basso',
      'normal' => 'normale',
      'high' => 'alto',
      'very high' => 'molto alto',
      '1 very low' => '1 molto bassa',
      '2 low' => '2 bassa',
      '3 normal' => '3 normale',
      '4 high' => '4 alta',
      '5 very high' => '5 molto alta',
      'Ticket "%s" created!' => 'Richiesta "%s" creata!',
      'Email-Ticket' => '',
      'Create new Email Ticket' => '',
      'Phone-Ticket' => '',
      'Create new Phone Ticket' => 'Crea una nuova richiesta in seguito ad una chiamata telefonica',
      'Search Tickets' => '',
      'Edit Customer Users' => '',
      'Bulk-Action' => '',
      'Bulk Actions on Tickets' => '',
      'Send Email and create a new Ticket' => '',
      'Overview of all open Tickets' => 'Vista globale di tutte le richieste aperte',
      'Locked tickets' => '',
      'Lock it to work on it!' => '',
      'Unlock to give it back to the queue!' => '',
      'Shows the ticket history!' => '',
      'Print this ticket!' => '',
      'Change the ticket priority!' => '',
      'Change the ticket free fields!' => '',
      'Link this ticket to an other objects!' => '',
      'Change the ticket owner!' => '',
      'Change the ticket customer!' => '',
      'Add a note to this ticket!' => '',
      'Merge this ticket!' => '',
      'Set this ticket to pending!' => '',
      'Close this ticket!' => '',
      'Look into a ticket!' => '',
      'Delete this ticket!' => '',

      # Template: AAAWeekDay
      'Sun' => 'Dom',
      'Mon' => 'Lun',
      'Tue' => 'Gio',
      'Wed' => 'Mer',
      'Thu' => 'Mar',
      'Fri' => 'Ven',
      'Sat' => 'Sab',

      # Template: AdminAttachmentForm
      'Attachment Management' => 'Gestione allegati',

      # Template: AdminAutoResponseForm
      'Auto Response Management' => 'Gestione risposte automatiche',
      'Response' => 'Risposta',
      'Auto Response From' => 'Risposta automatica da',
      'Note' => 'Nota',
      'Useable options' => 'Opzioni disponibili',
      'to get the first 20 character of the subject' => 'per avere i primi 20 caratteri dell\'oggetto',
      'to get the first 5 lines of the email' => 'per avere le prime 5 linee del messaggio',
      'to get the from line of the email' => 'per avere il mittente del messaggio',
      'to get the realname of the sender (if given)' => 'per avere il nome completo del mittente (se indicato)',
      'Options of the ticket data (e. g. &lt;OTRS_TICKET_TicketNumber&gt;, &lt;OTRS_TICKET_TicketID&gt;, &lt;OTRS_TICKET_Queue&gt;, &lt;OTRS_TICKET_State&gt;)' => '',

      # Template: AdminCustomerUserForm
      'The message being composed has been closed.  Exiting.' => 'La finestra con il messaggio che si stava componendo � stata chiusa. Sto uscendo.',
      'This window must be called from compose window' => 'Questa finestra deve essere aperta dalla finestra di composizione dei mesaggi',
      'Customer User Management' => 'Gestione clienti',
      'Search for' => 'Cerca',
      'Result' => 'Risultato',
      'Select Source (for add)' => 'Seleziona sorgente (da aggiungere)',
      'Source' => 'Sorgente',
      'This values are read only.' => 'Questi valori non sono modificabili',
      'This values are required.' => 'Questi valori sono richiesti',
      'Customer user will be needed to have an customer histor and to to login via customer panels.' => 'Il cliente sar� necessario per registrare la sua storia e permettere il collegamento via web',

      # Template: AdminCustomerUserGroupChangeForm
      'Customer Users <-> Groups Management' => '',
      'Change %s settings' => 'Modifica impostazioni di %s',
      'Select the user:group permissions.' => 'Seleziona i permessi della coppia utente:gruppo.',
      'If nothing is selected, then there are no permissions in this group (tickets will not be available for the user).' => 'Se non viene selezionata nessuna opzione, non verranno dati permessi a questo gruppo (le richieste non saranno disponibili).',
      'Permission' => 'Permessi',
      'ro' => 'sola lettura',
      'Read only access to the ticket in this group/queue.' => 'Accesso in sola lettura alle richieste in questo gruppo/coda.',
      'rw' => 'lettura e scrittura',
      'Full read and write access to the tickets in this group/queue.' => 'Accesso completo in lettura e scrittura alle richieste in questo gruppo/coda',

      # Template: AdminCustomerUserGroupForm
      'Change user <-> group settings' => 'Modifica impostazioni Utente <-> Gruppo',

      # Template: AdminEmail
      'Admin-Email' => 'Invia messaggio agli operatori',
      'Message sent to' => 'Messaggio inviato a',
      'Recipents' => 'Destinatari',
      'Body' => 'Testo',
      'send' => 'invia',

      # Template: AdminGenericAgent
      'GenericAgent' => 'OperatoreGenerico',
      'Job-List' => 'Lista attivit�',
      'Last run' => 'Ultima esecuzione',
      'valid' => 'valido',
      'Run Now!' => '',
      'x' => '',
      'Save Job as?' => 'Salva attivit� con nome?',
      'Is Job Valid?' => '',
      'Is Job Valid' => '',
      'Schedule' => 'Programma',
      'Minutes' => 'Minuti',
      'Hours' => 'Ore',
      'Days' => 'Giorni',
      'Fulltext-Search in Article (e. g. "Mar*in" or "Baue*")' => 'Ricerca a testo libero nel testo dell\'articolo (per esempio \'Ro*si\' o \'Ma*io\')',
      '(e. g. 10*5155 or 105658*)' => '(per esempio \'10*5155\' o \'105658*\')',
      '(e. g. 234321)' => '(per esempio \'234321\')',
      'Customer User Login' => 'Identificativo di Accesso del Cliente',
      '(e. g. U5150)' => '(per esempio \'U5150\')',
      'Agent' => 'Operatore',
      'TicketFreeText' => 'Ricerca a testo libero nella richiesta',
      'Ticket Lock' => 'Gestione Richiesta',
      'Times' => 'Volte',
      'No time settings.' => 'Non ci sono impostazioni temporali.',
      'Ticket created' => 'Richiesta creata',
      'Ticket created between' => 'Richiesta creata fra',
      'New Priority' => 'Nuova Priorit�',
      'New Queue' => 'Nuova coda',
      'New State' => 'Nuovo stato',
      'New Agent' => 'Nuovo Operatore',
      'New Owner' => 'Nuovo Gestore',
      'New Customer' => 'Nuovo Cliente',
      'New Ticket Lock' => 'Nuovo gestore della richiesta',
      'CustomerUser' => 'Cliente',
      'Add Note' => 'Aggiungi nota',
      'CMD' => 'comando',
      'This command will be executed. ARG[0] will be the ticket number. ARG[1] the ticket id.' => 'Questo comando verr� eseguito. ARG[0] sar� il numero della richiesta. ARG[1] sar� l\'identificativo della richiesta.',
      'Delete tickets' => 'Elimina richieste',
      'Warning! This tickets will be removed from the database! This tickets are lost!' => 'Attenzione! Queste richieste verranno eliminate dalla base dati! Queste richieste saranno perse!',
      'Modules' => 'Moduli',
      'Param 1' => 'Parametro 1',
      'Param 2' => 'Parametro 2',
      'Param 3' => 'Parametro 3',
      'Param 4' => 'Parametro 4',
      'Param 5' => 'Parametro 5',
      'Param 6' => 'Parametro 6',
      'Save' => 'Salva',

      # Template: AdminGroupForm
      'Group Management' => 'Gestione gruppo',
      'The admin group is to get in the admin area and the stats group to get stats area.' => 'Il gruppo admin ha accesso all\'area amministrazione mentre il gruppo stats ha accesso alle statistiche.',
      'Create new groups to handle access permissions for different groups of agent (e. g. purchasing department, support department, sales department, ...).' => 'Creare nuovi gruppi per gestire i permessi di accesso per diversi gruppi di agenti (p.es. sezione vendite, supporto tecnico, ecc.)',
      'It\'s useful for ASP solutions.' => '� utile per soluzioni ASP',

      # Template: AdminLog
      'System Log' => 'Log di sistema',
      'Time' => 'Tempo',

      # Template: AdminNavigationBar
      'Users' => '',
      'Groups' => 'Gruppi',
      'Roles' => 'Ruoli',
      'Responses' => 'Risposte',
      'Misc' => 'Varie',

      # Template: AdminNotificationForm
      'Notification Management' => 'Gestione delle notifiche',
      'Notification' => '',
      'Notifications are sent to an agent or a customer.' => 'Le notifiche sono inviate ad un operatore o a un cliente',
      'Config options (e. g. &lt;OTRS_CONFIG_HttpType&gt;)' => 'Opzioni di configurazione (per es. &lt;OTRS_CONFIG_HttpType&gt;)',
      'Ticket owner options (e. g. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)' => 'Per ottenere il gestore della richiesta (per es. &lt;OTRS_OWNER_USERFIRSTNAME&gt;)',
      'Options of the current user who requested this action (e. g. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)' => 'Per ottenere l\'utente che ha richiesto l\'azione (per es. &lt;OTRS_CURRENT_USERFIRSTNAME&gt;)',
      'Options of the current customer user data (e. g. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)' => 'Per ottenere i dati del cliente (per es. &lt;OTRS_CUSTOMER_DATA_USERFIRSTNAME&gt;)',

      # Template: AdminPackageManager
      'Package Manager' => '',
      'Uninstall' => '',
      'Verion' => '',
      'Do you really want to uninstall this package?' => '',
      'Install' => '',
      'Package' => '',
      'Online Repository' => '',
      'Version' => '',
      'Vendor' => '',
      'Upgrade' => '',
      'Local Repository' => '',
      'Status' => 'Stato',
      'Overview' => 'Sommario',
      'Download' => 'Scarica',
      'Rebuild' => '',
      'Reinstall' => '',

      # Template: AdminPGPForm
      'PGP Management' => '',
      'Identifier' => 'Identificatore',
      'Bit' => '',
      'Key' => 'Etichetta',
      'Fingerprint' => 'Impronta (fingerprint)',
      'Expires' => 'Scade',
      'In this way you can directly edit the keyring configured in Kernel/Config.pm.' => 'In questo modo puoi modificare direttamente il \'keyring\' configurato nel file Kernel/Config.pm',
      'FIXME: WHAT IS PGP?' => 'CORREGGIMI: COS\'E\' PGP?',

      # Template: AdminPOP3Form
      'POP3 Account Management' => 'Gestione accessi POP3',
      'Host' => '',
      'Trusted' => 'Fidato',
      'Dispatching' => 'Smistamento',
      'All incoming emails with one account will be dispatched in the selected queue!' => 'Tutti i messaggi in arrivo saranno smistati nella coda selezionata!',
      'If your account is trusted, the already existing x-otrs header at arrival time (for priority, ...) will be used! PostMaster filter will be used anyway.' => 'Se il tuo account � fidato (trusted), verr� utilizzato l\'header x-otrs dell\'istante di arrivo (priorit�, ...)! Il filtro di ingresso verr� utilizzato in ogni caso.',

      # Template: AdminPostMasterFilter
      'PostMaster Filter Management' => 'Gestione filtri posta in ingresso',
      'Filtername' => 'Nome del filtro',
      'Match' => 'Corrispondenza',
      'Header' => 'Intestazione (header)',
      'Value' => 'Valore',
      'Set' => 'Impostazione',
      'Do dispatch or filter incoming emails based on email X-Headers! RegExp is also possible.' => 'Effettua lo smistamento o filtra la posta in ingresso in base all\'X-Header! Sono accettate anche espressioni regolari.',
      'If you use RegExp, you also can use the matched value in () as [***] in \'Set\'.' => 'Se usi espressioni regolari, puoi anche utilizzare il valore corrispondente a () come [***] negli insiemi',

      # Template: AdminQueueAutoResponseForm
      'Queue <-> Auto Responses Management' => '',

      # Template: AdminQueueAutoResponseTable

      # Template: AdminQueueForm
      'Queue Management' => 'Gestione delle code',
      'Sub-Queue of' => 'Sottocoda di',
      'Unlock timeout' => 'Tempo di sblocco automatico',
      '0 = no unlock' => '0 = nessuno sblocco automatico',
      'Escalation time' => 'Tempo di escalation',
      '0 = no escalation' => '0 = nessuna escalation',
      'Follow up Option' => 'Opzioni per le prosecuzioni',
      'Ticket lock after a follow up' => 'Presa in gestione della richiesta dopo una prosecuzione',
      'Systemaddress' => 'Indirizzo di sistema',
      'Customer Move Notify' => 'Notifica il cliente degli spostamenti',
      'Customer State Notify' => 'Notifica il cliente del cambio di stato',
      'Customer Owner Notify' => 'Notifica il cliente del cambio operatore',
      'If an agent locks a ticket and he/she will not send an answer within this time, the ticket will be unlock automatically. So the ticket is viewable for all other agents.' => 'Se un operatore prende in gestione un ticket ma non risponde entro il tempo specificato, il ticket viene sbloccato in modo da essere accessibile agli altri operatori.',
      'If a ticket will not be answered in thos time, just only this ticket will be shown.' => 'Se un ticket non viene risposto entro questo limite di tempo, sar� l\'unico ticket ad essere mostrato.',
      'If a ticket is closed and the customer sends a follow up the ticket will be locked for the old owner.' => 'Se un ticket � chiuso e il cliente invia una risposta, il ticket viene assegnato al vecchio operatore.',
      'Will be the sender address of this queue for email answers.' => 'Mittente utilizzato per le risposte relative alle richieste di questa coda.',
      'The salutation for email answers.' => 'Saluto (parte iniziale) per le email generate automaticamente dal sistema.',
      'The signature for email answers.' => 'Firma (parte finale) per le email generate automaticamente dal sistema.',
      'OTRS sends an notification email to the customer if the ticket is moved.' => 'OTRS invia una notifica via email al cliente se il ticket viene spostato.',
      'OTRS sends an notification email to the customer if the ticket state has changed.' => 'OTRS invia una notifica via email al cliente se lo stato del ticket cambia.',
      'OTRS sends an notification email to the customer if the ticket owner has changed.' => 'OTRS invia una notifica via email al cliente se l\'operatore assegnato al ticket cambia.',

      # Template: AdminQueueResponsesChangeForm
      'Responses <-> Queue Management' => '',

      # Template: AdminQueueResponsesForm
      'Answer' => 'Risposta',

      # Template: AdminResponseAttachmentChangeForm
      'Responses <-> Attachments Management' => '',

      # Template: AdminResponseAttachmentForm

      # Template: AdminResponseForm
      'Response Management' => 'Gestione risposte',
      'A response is default text to write faster answer (with default text) to customers.' => 'Una risposta � un testo predefinito usato per compilare pi� rapidamente le risposte per i clienti.',
      'Don\'t forget to add a new response a queue!' => 'Non dimenticare di aggiungere una risposta per ogni coda!',
      'Next state' => 'Stato successivo',
      'All Customer variables like defined in config option CustomerUser.' => 'Tutte le variabili del cliente come definite nella configurazione',
      'The current ticket state is' => 'Lo stato corrente della richiesta �',
      'Your email address is new' => 'Il tuo indirizzo di email � nuovo',

      # Template: AdminRoleForm
      'Role Management' => 'Gestione ruoli',
      'Create a role and put groups in it. Then add the role to the users.' => 'Crea un ruolo e mettici i gruppi. Poi aggiungi il ruolo agli utenti.',
      'It\'s useful for a lot of users and groups.' => 'E\' utile per molti utenti e gruppi',

      # Template: AdminRoleGroupChangeForm
      'Roles <-> Groups Management' => '',
      'move_into' => 'muovi_in',
      'Permissions to move tickets into this group/queue.' => 'Autorizzazione a muovere richieste in questo gruppo/coda',
      'create' => 'crea',
      'Permissions to create tickets in this group/queue.' => 'Autorizzazione a creare richieste in questo gruppo/coda',
      'owner' => 'gestore',
      'Permissions to change the ticket owner in this group/queue.' => 'Autorizzazione a cambiare il gestore di una richiesta in questo gruppo/coda.',
      'priority' => 'priorit�',
      'Permissions to change the ticket priority in this group/queue.' => 'Autorizzazione a cambiare la priorit� di una richiesta in questo gruppo/coda',

      # Template: AdminRoleGroupForm
      'Change roles <-> groups settings' => '',
      'Role' => 'Ruolo',

      # Template: AdminRoleUserChangeForm
      'Roles <-> Users Management' => '',
      'Active' => 'Attivo',
      'Select the role:user relations.' => 'Seleziona le relazioni ruolo:utente.',

      # Template: AdminRoleUserForm
      'Change users <-> roles settings' => '',

      # Template: AdminSalutationForm
      'Salutation Management' => 'Gestione saluti',
      'customer realname' => 'nome del cliente',
      'for agent firstname' => 'per il nome dell\'operatore',
      'for agent lastname' => 'per il cognome dell\'operatore',
      'for agent user id' => 'per l\'id utente dell\'operatore',
      'for agent login' => 'per il nome utente dell\'operatore',

      # Template: AdminSelectBoxForm
      'Select Box' => 'Selezionare una funzione',
      'SQL' => '',
      'Limit' => 'Limite',
      'Select Box Result' => 'Seleziona il risultato',

      # Template: AdminSession
      'Session Management' => 'Gestione Sessioni',
      'Sessions' => 'Sessioni',
      'Uniq' => '',
      'kill all sessions' => 'Termina tutte le sessioni',
      'Session' => 'Sessione',
      'kill session' => 'Termina sessione',

      # Template: AdminSignatureForm
      'Signature Management' => 'Gestione firme',

      # Template: AdminSMIMEForm
      'SMIME Management' => '',
      'Add Certificate' => 'Aggiungi certificato',
      'Add Private Key' => 'Aggiunti chiave privata',
      'Secret' => 'Segreto',
      'Hash' => '',
      'In this way you can directly edit the certification and private keys in file system.' => 'Puoi modificare il certificato e la chiave privata direttamente sul filesystem.',
      'FIXME: WHAT IS SMIME?' => 'CORREGGIMI: COS\'E\' SMIME?',

      # Template: AdminStateForm
      'System State Management' => 'Gestione stati richieste',
      'State Type' => 'Tipologia',
      'Take care that you also updated the default states in you Kernel/Config.pm!' => 'Assicurati di aver aggiornato gli stati pre-impostati (default) nel file Kernel/Config.pm!',
      'See also' => 'Vedi anche',

      # Template: AdminSysConfig
      'SysConfig' => '',
      'Group selection' => '',
      'Show' => '',
      'Subgroup' => '',

      # Template: AdminSysConfigEdit
      'Options ' => '',
      'for ' => '',
      'Subgroup \'' => '',
      '\' ' => '',
      'Content' => '',
      'New' => 'Nuovi',
      'Group Ro' => '',
      'NavBarName' => '',
      'Image' => '',
      'Typ' => '',
      'Prio' => '',
      'Block' => '',
      'NavBar' => '',

      # Template: AdminSystemAddressForm
      'System Email Addresses Management' => 'Gestione indirizzi di sistema',
      'Email' => 'eMail',
      'Realname' => 'Nome',
      'All incoming emails with this "Email" (To:) will be dispatched in the selected queue!' => 'Tutte le email in arrivo indirizzate a questo indirizzo (campo To:) saranno smistate nella coda selezionata!',

      # Template: AdminUserForm
      'User Management' => 'Gestione operatori',
      'Firstname' => 'Nome',
      'Lastname' => 'Cognome',
      'User will be needed to handle tickets.' => 'Gli operatori sono necessari per gestire le richieste.',
      'Don\'t forget to add a new user to groups!' => 'Non dimenticare di aggiungere i nuovi operatori ad un gruppo!',

      # Template: AdminUserGroupChangeForm
      'Users <-> Groups Management' => '',

      # Template: AdminUserGroupForm

      # Template: AgentBook
      'Address Book' => 'Rubrica',
      'Return to the compose screen' => 'Torna alla composizione del messaggio',
      'Discard all changes and return to the compose screen' => 'Annulla tutte le modifiche e torna alla composizione del messaggio',

      # Template: AgentCustomerTableView

      # Template: AgentInfo
      'Info' => 'Informazioni',

      # Template: AgentLinkObject
      'Link Object' => '',
      '"}" $Text{"with' => '',
      'Select' => 'Seleziona',
      'Results' => 'Risultati',
      'Total hits' => 'Totale risultati',
      'Site' => 'Pagina',
      'Detail' => '',

      # Template: AgentLookup
      'Lookup' => 'Ricerca',

      # Template: AgentNavigationBar
      'Ticket selected for bulk action!' => 'Richiesta selezionata per azione di massa!',
      'You need min. one selected Ticket!' => 'Devi selezionare almeno una richiesta!',

      # Template: AgentPreferencesForm

      # Template: AgentSpelling
      'Spell Checker' => 'Verifica ortografica',
      'spelling error(s)' => 'Errori di ortografia',
      'or' => 'oppure',
      'Apply these changes' => 'Applica le modifiche',

      # Template: AgentTicketBounce
      'A message should have a To: recipient!' => 'Manca il destinatario del messaggio!',
      'You need a email address (e. g. customer@example.com) in To:!' => '� necessario inserire un indirizzo email (per .es. cliente@esempio.it) come destinatario!',
      'Bounce ticket' => 'Rispedisci richiesta',
      'Bounce to' => 'Rispedisci a',
      'Next ticket state' => 'Stato successivo della richiesta',
      'Inform sender' => 'Informa il mittente',
      'Your email with ticket number "<OTRS_TICKET>" is bounced to "<OTRS_BOUNCE_TO>". Contact this address for further informations.' => 'La tua email con il numero di richiesta "<OTRS_TICKET>" � stata reindirizzata a "<OTRS_BOUNCE_TO>". Contattare questo indirizzo per ulteriori informazioni.',
      'Send mail!' => 'Invia messaggio!',

      # Template: AgentTicketBulk
      'A message should have a subject!' => 'Il messaggio deve avere un oggetto!',
      'Ticket Bulk Action' => 'Azione di massa',
      '$Text{"Note!' => '$Text{"Nota!',
      'Spell Check' => 'Verifica ortografica',
      'Note type' => 'Tipologia della nota',
      'Unlock Tickets' => '',

      # Template: AgentTicketClose
      'A message should have a body!' => 'Un messaggio deve avere un contenuto!',
      'You need to account time!' => 'Devi inserire il tempo impiegato per la risposta!',
      'Close ticket' => 'Chiudi richiesta',
      'Close!' => 'Chiuso!',
      'Note Text' => 'Nota',
      'Close type' => 'Tipologia chiusura',
      'Time units' => 'Tempo',
      ' (work units)' => ' (unit� di lavoro)',

      # Template: AgentTicketCompose
      'A message must be spell checked!' => 'Il messaggio necessita di correzione ortografica!',
      'Compose answer for ticket' => 'Componi la risposta alla richiesta',
      'Attach' => 'Allega',
      'Pending Date' => 'Attesa fino a',
      'for pending* states' => 'per gli stati di attesa*',

      # Template: AgentTicketCustomer
      'Change customer of ticket' => 'Modifica il cliente del ticket',
      'Set customer user and customer id of a ticket' => 'Imposta l\'id cliente di una richiesta',
      'Customer User' => 'Clienti',
      'Search Customer' => 'Ricerca cliente',
      'Customer Data' => 'Dati del cliente',
      'Customer history' => 'Storico del cliente',
      'All customer tickets.' => 'Tutte le richieste del cliente.',

      # Template: AgentTicketCustomerMessage
      'Follow up' => 'Risposta',

      # Template: AgentTicketEmail
      'Compose Email' => 'Componi email',
      'new ticket' => 'nuova richiesta',
      'Clear To' => 'Cancella destinatario',
      'All Agents' => 'Tutti gli operatori',

      # Template: AgentTicketForward
      'Article type' => 'Tipo articolo',

      # Template: AgentTicketFreeText
      'Change free text of ticket' => 'Cambia il testo della richiesta',

      # Template: AgentTicketHistory
      'History of' => 'Storico di',

      # Template: AgentTicketLocked
      'Ticket locked!' => 'Richiesta gi� presa in gestione!',
      'Ticket unlock!' => 'Richiesta abbandonata!',

      # Template: AgentTicketMailbox
      'Mailbox' => 'Casella postale',
      'Tickets' => 'Richieste',
      'All messages' => 'Tutti i messaggi',
      'New messages' => 'Nuovi messaggi',
      'Pending messages' => 'Messaggi in attesa',
      'Reminder messages' => 'Messaggio di richiamo',
      'Reminder' => 'Richiamo',
      'Sort by' => 'Ordina per',
      'Order' => 'Ordine',
      'up' => 'crescente',
      'down' => 'decrescente',

      # Template: AgentTicketMerge
      'You need to use a ticket number!' => '',
      'Ticket Merge' => '',
      'Merge to' => '',
      'Your email with ticket number "<OTRS_TICKET>" is merged to "<OTRS_MERGE_TO_TICKET>".' => '',

      # Template: AgentTicketMove
      'Queue ID' => 'Identificativo coda',
      'Move Ticket' => 'Sposta la richiesta',
      'Previous Owner' => 'Gestore precedente',

      # Template: AgentTicketNote
      'Add note to ticket' => 'Aggiungi una nota alla richiesta',
      'Inform Agent' => '',
      'Optional' => '',
      'Inform involved Agents' => '',

      # Template: AgentTicketOwner
      'Change owner of ticket' => 'Assegna la richiesta ad un altro operatore',
      'Message for new Owner' => 'Messaggio per l\'operatore',

      # Template: AgentTicketPending
      'Set Pending' => 'Imposta attesa',
      'Pending type' => 'Tipo di attesa',
      'Pending date' => 'In attesa fino a',

      # Template: AgentTicketPhone
      'Phone call' => 'Chiamata telefonica',

      # Template: AgentTicketPhoneNew
      'Clear From' => 'Cancella il campo mittente',

      # Template: AgentTicketPlain
      'Plain' => '',
      'TicketID' => 'Codice richiesta',
      'ArticleID' => 'Codice articolo',

      # Template: AgentTicketPrint
      'Ticket-Info' => '',
      'Accounted time' => 'Tempo addebitato',
      'Escalation in' => '',
      'Linked-Object' => '',
      'Parent-Object' => '',
      'Child-Object' => '',
      'by' => 'da',

      # Template: AgentTicketPriority
      'Change priority of ticket' => 'Modifica la priorit� della richiesta',

      # Template: AgentTicketQueue
      'Tickets shown' => 'Richieste mostrate',
      'Page' => 'Pagina',
      'Tickets available' => 'Richieste disponibili',
      'All tickets' => 'Richieste totali',
      'Queues' => 'Code',
      'Ticket escalation!' => '',

      # Template: AgentTicketQueueTicketView
      'Your own Ticket' => 'Le tue richieste',
      'Compose Follow up' => 'Componi risposta',
      'Compose Answer' => 'Componi risposta',
      'Contact customer' => 'Contatta il cliente',
      'Change queue' => 'Cambia coda',

      # Template: AgentTicketQueueTicketViewLite

      # Template: AgentTicketSearch
      'Ticket Search' => 'Ricerca richiesta',
      'Profile' => 'Profilo',
      'Search-Template' => 'Modello di ricerca',
      'Created in Queue' => '',
      'Result Form' => 'Tipo di risultato',
      'Save Search-Profile as Template?' => 'Salvare il profilo di ricerca come modello',
      'Yes, save it with name' => 'S�, salva con nome',
      'Customer history search' => 'Ricerca storico cliente',
      'Customer history search (e. g. "ID342425").' => 'Ricerca storico cliente (per es. "ID342425")',
      'No * possible!' => 'Qui non � possibile usare l\'asterisco (*)!',

      # Template: AgentTicketSearchResult
      'Search Result' => 'Risultato ricerca',
      'Change search options' => 'Modifica le opzioni di ricerca',

      # Template: AgentTicketSearchResultPrint
      '"}' => '',

      # Template: AgentTicketSearchResultShort
      'sort upward' => 'ordine crescente',
      'U' => 'C',
      'sort downward' => 'ordine decrescente',
      'D' => '',

      # Template: AgentTicketStatusView
      'Ticket Status View' => '',
      'Open Tickets' => '',

      # Template: AgentTicketZoom
      'Split' => 'Spezza',

      # Template: AgentTicketZoomStatus
      'Locked' => 'In gestione',

      # Template: AgentWindowTabStart

      # Template: AgentWindowTabStop

      # Template: Copyright

      # Template: css

      # Template: customer-css

      # Template: CustomerAccept

      # Template: CustomerError
      'Traceback' => 'Dettaglio del passato',

      # Template: CustomerFAQArticleHistory
      'FAQ History' => 'Storico FAQ',
      'Print' => 'Stampa',

      # Template: CustomerFAQArticlePrint
      'Keywords' => 'Parole chiave',
      'Last update' => 'Ultimo aggiornamento',
      'Symptom' => 'Sintomi',
      'Problem' => 'Problema',
      'Solution' => 'Soluzione',

      # Template: CustomerFAQArticleSystemHistory
      'FAQ System History' => 'Storico sistema FAQ',

      # Template: CustomerFAQArticleView
      'Modified' => 'Modificato',

      # Template: CustomerFAQOverview
      'FAQ Overview' => 'Sommario FAQ',

      # Template: CustomerFAQSearch
      'FAQ Search' => 'Ricerca FAQ',
      'Fulltext' => 'Testo libero',
      'Keyword' => 'Parola chiave',

      # Template: CustomerFAQSearchResult
      'FAQ Search Result' => 'Risultato ricerca FAQ',

      # Template: CustomerFooter
      'Powered by' => '',

      # Template: CustomerHeader

      # Template: CustomerLogin
      'Login' => 'Codice utente',
      'Lost your password?' => 'Hai dimenticato la password?',
      'Request new password' => 'Richiedi una nuova password',
      'Create Account' => 'Registrati',

      # Template: CustomerNavigationBar
      'Welcome %s' => 'Benvenuto/a %s',

      # Template: CustomerPreferencesForm

      # Template: CustomerStatusView
      'of' => 'di',

      # Template: CustomerTicketMessage

      # Template: CustomerTicketMessageNew

      # Template: CustomerTicketSearch

      # Template: CustomerTicketSearchResultCSV

      # Template: CustomerTicketSearchResultPrint

      # Template: CustomerTicketSearchResultShort

      # Template: CustomerTicketZoom

      # Template: CustomerWarning

      # Template: Error
      'Click here to report a bug!' => 'Clicca qui per segnalare un bug!',

      # Template: FAQ
      'Comment (internal)' => 'Commento (interno)',
      'A article should have a title!' => 'Manca il titolo!',
      'New FAQ Article' => '',
      'Do you really want to delete this Object?' => '',
      'System History' => '',

      # Template: FAQCategoryForm
      'Name is required!' => 'Manca il nome!',
      'FAQ Category' => 'Categoria FAQ',

      # Template: FAQLanguageForm
      'FAQ Language' => 'Lingua FAQ',

      # Template: Footer
      'Top of Page' => 'Inizio Pagina',

      # Template: FooterSmall

      # Template: Header
      'Home' => '',

      # Template: HeaderSmall

      # Template: InstallerBody
      'Web-Installer' => 'Installazione guidata via web',
      'Create Database' => 'Crea database ',
      'Drop Database' => 'Cancella database',
      'System Settings' => 'Impostazioni di sistema',
      'Finished' => 'Operazione terminata',

      # Template: InstallerFinish
      'To be able to use OTRS you have to enter the following line in your command line (Terminal/Shell) as root.' => 'Per poter usare OTRS devi inserire questa riga di comando in una shell come utente root.',
      'Restart your webserver' => 'Riavvia il tuo server web',
      'After doing so your OTRS is up and running.' => 'Dopo di ci� OTRS sar� pronto all\'uso.',
      'Start page' => 'Pagina iniziale',
      'Admin-User' => 'Utente amministratore',
      'Have a lot of fun!' => 'Divertiti con OTRS!',
      'Your OTRS Team' => 'Gruppo di sviluppo di OTRS',

      # Template: InstallerLicense
      'License' => 'Licenza',
      'accept license' => 'accetto la licenza',
      'don\'t accept license' => 'non accetto la licenza',

      # Template: InstallerStart
      'DB Admin User' => 'Nome utente DB Admin',
      'DB Admin Password' => 'Password del DB Admin',
      'your MySQL DB should have a root password! Default is empty!' => 'dovresti impostare una password di root per il tuo server MySQL!',
      'DB Host' => '',
      'DB Type' => 'Tipo di DBMS',
      'OTRS DB Name' => '',
      'OTRS DB User' => '',
      'OTRS DB Password' => '',
      'default \'hot\'' => '\'hot\' predefinito',
      'OTRS DB connect host' => '',
      'Create new database' => 'Crea un nuovo database',
      'Delete old database' => 'Cancella il vecchio database',
      'next step' => 'Fase successiva',

      # Template: InstallerSystem
      'SystemID' => 'ID del sistema',
      '(The identify of the system. Each ticket number and each http session id starts with this number)' => '(ID del sistema. Ogni ID di sessione e numero di ticket inizia con questo numero)',
      'System FQDN' => 'FQDN del sistema',
      '(Full qualified domain name of your system)' => '(Nome di dominio completo (FQDN) del sistema)',
      'AdminEmail' => 'Messaggio agli operatori',
      '(Email of the system admin)' => '(Indirizzo email dell\'amministratore di sistema)',
      'Organization' => 'Azienda',
      'LogModule' => 'Modulo di log',
      '(Used log backend)' => '(Modulo da usare per il log)',
      'Logfile' => 'File di log',
      '(Logfile just needed for File-LogModule!)' => '(File di log --- necessario solo per il log su file (File-LogModule))',
      'CheckMXRecord' => 'Verifica record MX',
      '(Checks MX recordes of used email addresses by composing an answer. Don\'t use CheckMXRecord if your OTRS machine is behinde a dial-up line $!)' => '(Controlla il record MX per i domini degli indirizzi email quando si compone un messaggio. Non usare se il vostro server con OTRS ha una connessione dial-up!)',
      'Ticket Hook' => 'Prefisso richieste',
      '(Ticket identifier. Some people want toset this to e. g. \'Ticket#\', \'Call#\' or \'MyTicket#\')' => '(Prefisso per il numero di ticket --- es. "N.ro Ticket:" o "Ticket#" ecc.)',
      'Ticket Number Generator' => 'Generatore numero ticket',
      '(Used ticket number format)' => '(Formato del numero dei ticket)',
      'Webfrontend' => 'Interfaccia web',
      'Default Charset' => 'Set di caratteri predefinito',
      'Use utf-8 it your database supports it!' => '',
      'Default Language' => 'Lingua predefinita',
      '(Used default language)' => '(Lingua predefinita)',

      # Template: Login

      # Template: Motd

      # Template: NoPermission
      'No Permission' => 'Autorizzazione negata',

      # Template: Notify

      # Template: PrintFooter
      'URL' => '',

      # Template: PrintHeader
      'printed by' => 'stampato da',

      # Template: Redirect

      # Template: SystemStats
      'Format' => '',

      # Template: Test
      'OTRS Test Page' => 'Pagina di test OTRS',
      'Counter' => '',
      'Mark as Spam!' => '',
      'Your queue selection of your favorite queues. You also get notified about this queues via email if enabled.' => '',
      'New password' => '',
      'New password again' => '',
      'Change Password' => '',
      'My Queues' => '',

      # Template: Warning
    };
    # $$STOP$$
}
# --
1;
