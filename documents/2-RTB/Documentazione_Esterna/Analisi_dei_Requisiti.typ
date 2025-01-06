#import "/template/document.typ": *

#show: project.with(
  title: "Analisi dei Requisiti",
  managers: (p.belenkov, p.mahdi),
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
    "0.0.8",
    "2025-01-04",
    (p.mahdi),
    (p.ferazzani),
    [Insertito UC GitHub],
    "0.0.6",
    "2024-12-10",
    (p.ferazzani),
    (p.fracaro),
    [Insertito UC Confluence],
    "0.0.5",
    "2024-12-02",
    (p.santi),
    (p.mahdi),
    [Inseriti primi UC, sistemate immagini e tabelle],
    "0.0.4",
    "2024-11-25",
    (p.santi),
    (p.mahdi),
    [Introdotte sezioni Casi d'Uso (3) + Requisiti (4), impaginazione tabelle],
    "0.0.3",
    "2024-11-22",
    (p.santi),
    (p.mahdi),
    [Terminata la descrizione (punto 2).],
    "0.0.2",
    "2024-11-21",
    (p.mahdi),
    (p.santi),
    [Fine punto 1 e inizio punto 2.],
    "0.0.1",
    "2024-11-19",
    (p.belenkov),
    (p.santi),
    [Stesura iniziale del documento e breve introduzione.],
  ),
  show_images_list: true,
  show_tables_list: true,
)

= *Introduzione*
== Scopo del documento
L'#glossary("Analisi dei requisiti") è un documento fondamentale per tutti i progetti di sviluppo software che vogliono
creare un prodotto a regola d'arte.\

Lo scopo di questo documento è di definire le funzionalità che il sistema sarà in grado di offrire, ossia i requisiti
obbligatori e opzionali che dovranno essere soddisfatti al fine di realizzare le richieste fatte dal #glossary("proponente").\

Il documento non si pone come una soluzione tecnica al problema, quanto più una definizione chiara e concisa di esso e
di come possa essere risolto.\

In particolare, le finalità di questo documento possono essere descritte nei seguenti punti:\

- *Definire le esigenze del proponente*:\
Questo documento si basa principalmente sulle richieste del proponente, ossia le idee che quest'ultimo ha riguardo a
come dovrebbe essere il software che verrà sviluppato dal nostro team. Tali idee verranno raccolte tramite i vari
documenti e incontri con #box(image(g.azzurro, width: 5em, height: auto)) che avverranno lungo il percorso dello
svolgimento del progetto.\

- *Fornire una base per la progettazione del sistema*:\
L'Analisi dei Requisiti fornisce una base per la progettazione del sistema, in quanto definisce le funzionalità che il
sistema dovrà offrire, permettendo così ai #glossary("programmatori") di comprendere le esigenze dei proponenti
identificando le soluzioni che più si adeguano a tali esigenze.\ //TODO: Sistemar questa frase, troppe ripetizioni

- *Tracciare i requisiti del sistema*:\
Una volta raccolte le richieste del proponente, questo documento si impone di identificare i requisiti e suddividerli in
requisiti funzionali e non funzionali.\

- *Verificare e validare i requisiti*:\
Questo processo garantisce che le attività siano svolte seguendo il #glossary("Way of Working") del gruppo, controllando
la presenza di errori e correggendoli una volta identificati.\
Ciò permette di accertare che il prodotto finale corrisponda alle aspettative del proponente.\

Una volta che i requisiti del sistema saranno stati definiti in maniera chiara in modo tale da permettere al lettore di
comprenderli pienamente, allora verrà data una rappresentazione formale grafica del software attraverso l'utilizzo di
#glossary("diagrammi dei casi d'uso").

== Scopo del progetto
Lo scopo del progetto è la realizzazione dei un assistente virtuale sotto forma di #glossary("chatbot") in grado di assistere gli utenti, rispondendo alle loro domande in linguaggio naturale.
Il chatbot garantirà un accesso rapido alle informazioni interne dell'azienda, aggregando i dati provenienti dalle piattaforme #glossary("Jira"), #glossary("Github") e #glossary("Confluence") ed elaborando questi ultimi con l'uso dell'intelligenza artificiale per dare risposte chiare.
Questo strumento sarà utile non solo ai membri già attivi dell'azienda per tagliare i tempi lunghi di ricerca manuale di una determinata informazione, ma anche per il processo di onboarding dei nuovi arrivati rispondendo alle domande più frequenti e guidandoli nel processo di apprendimento delle risorse aziendali senza il bisogno di una figura di supporto.

== Glossario
Al fine di evitare eventuali equivoci o incomprensioni , si è deciso di adottare un Glossario presente come file e nella pagina web, in cui vengono riportate tutte le definizioni delle parole ambigue utilizzate nei documenti di questo progetto.
Nel documento verranno riportati tutti i termini definiti nel loro ambiente di utilizzo con la descrizione del loro significato.
I termini presenti nel glossario sono evidenziati e hanno una piccola 'G' alla fine.

== Sviluppo e miglioramento
Questo documento è stato sviluppato in modo graduale e progressivo, con l'obiettivo di facilitare eventuali modifiche future in base alle necessità concordate tra il gruppo di progetto e l'azienda committente.
Pertanto è soggetto a un continuo miglioramento.

== Riferimenti
=== Normativi
Presentazione pdf del capitolato C9:
https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9p.pdf
=== Informativi
Slide del corso(T5):
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf

= Descrizione
== Obiettivo del prodotto
Questo progetto consiste nella creazione di un #glossary("chatbot") #glossary("text-to-text") per l'azienda #box(image(g.azzurro, width: 5em, height: auto)), che centralizza le informazioni relative all'azienda provenienti da diverse piattaforme e, con l'uso di un #glossary("LLM"), le elabora per creare delle risposte in linguaggio naturale. BuddyBot sarà in grado di rispondere a domande che variano dalla data di un determinato incontro fissato su #glossary("Jira"), a cosa è cambiato in un determinato commit su #glossary("Github") e a richieste specifiche su documenti presenti in #glossary("Confluence"). Inoltre aiuterà i nuovi membri a navigare tra tra le risorse aziendali, rispondendo alle domande frequenti.
Tale prodotto, in conclusione, risponde alla necessità di accedere in modo facile e immediato alle informazioni.


== Funzionalità del prodotto
#glossary("BuddyBot") è un assistente virtuale progettato per garantire un accesso facile e immediato alle informazioni aziendali attraverso un'interfaccia semplice ed intuitiva e basata sul linguaggio naturale. Il punto cardine del progetto è il seguente: il sistema si deve connettere alle piattaforme utilizzate dall'azienda, ossia #glossary("Jira"), #glossary("GitHub") e #glossary("Confluence"), estrapolando informazioni da quest'ultime e fornendo le risposte alle domande poste dall'utente.

L’assistente virtuale utilizza tecnologie di Intelligenza Artificiale (nel nostro progetto verranno utilizzati #glossary("GroqCloud") e #glossary("Langchain") lato #glossary("LLM")) per interpretare le richieste degli utenti e restituire informazioni personalizzate e contestualizzate.

A seguire, #glossary("BuddyBot") garantisce anche la persistenza dei dati, ossia domande e risposte, con il fine di mantenere lo storico della chat agevolando il recupero di informazioni già richieste. Questa persistenza nel progetto è garantita spostando i dati dal container #glossary("PostgreSQL") a un volume #glossary("Docker").

== Utenti e caratteristiche
Il prodotto si rivolge principalmente al team aziendale:

- *Sviluppatori*, che accedono a informazioni tecniche come codice e documentazione;
- #glossary("Project Manager"), che usa #glossary("BuddyBot") per monitorare task e risorse;
- *Nuovi membri* del team, che vengono supportati nell'#glossary("onboarding") e nella ricerca delle informazioni necessarie, facilitando la loro integrazione nell'azienda;
- In generale, allo *staff aziendale*.
Questa sezione mette in luce il ruolo centrale che BuddyBot può avere poiché, come spiegato in precedenza, centralizza le informazioni e semplifica i processi aziendali attraverso l'uso di IA, aumentando efficienza e produttività per tutti gli utenti coinvolti e diminuendo perdite di tempo.

= Casi d'uso
== Introduzione ai casi d'uso e obbiettivi
In questa sezione vengono elencati dettagliatamente i #glossary("casi d'uso (UC)") individuati dal gruppo in seguito ad analisi e valutazioni circa le specifiche del capitolato.
Gli scenari sottostanti seguono uno schema e può prevedere:
- *Titolo*
- *Attori*: il soggetto che esegue un'azione in quel contesto
- *Precondizioni* e *Postcondizioni*: stato del sistema prima e dopo il caso d'uso
- *Scenario principale*: descrizione dettagliata delle azioni che l'attore deve compiere per completare il caso d'uso; vengono formalizzati anche ipotesi e risultati attesi
- *Estensioni*: relazione tra due casi d'uso; indica quella situazione in cui, prendendo in esame un caso d'uso specifico, è possibile prevedere varianti o comportamenti alternativi che arricchiscono o modificano lo scenario principale
- *Inclusioni*: relazione tra due casi d'uso; indica quella situazione in cui, prendendo in esame un caso d'uso specifico, alcune funzionalità o azioni comuni appartengono a un altro caso d'uso, sempre eseguito come parte integrante dello scenario principale
- *User Story*: descrizione di una funzionalità del software dal punto di vista dell'utente; aiuta a comprendere le esigenze dell'utente e a definire i requisiti del sistema
- *Generalizzazioni*: relazione tra due casi d'uso; indica quella situazione in cui, prendendo in esame un caso d'uso specifico, esso rappresenta una variante o un'istanza di un caso d'uso più generale che descrive caratteristiche o comportamenti comuni a più scenari
== Attori
L'attore coinvolto nei casi d'uso è lo #glossary("User") che accede al servizio ponendo domande all'assistente virtuale.

#pagebreak()

== Definizione casi d'uso
//===UC1, Consultazione Jira
#columns(2, gutter: 3cm)[
  #box[
    === UC1, Consultazione Jira
    *Attori coinvolti*: #glossary("User"), #glossary("LLM") (attore esterno)

    *Precondizioni*
    - Le #glossary("API") di #glossary("Jira") sono disponibili e configurate correttamente.

    *Postcondizioni*
    - Le informazioni richieste vengono presentate correttamente all'utente e può visualizzarle per pianificare le proprie attività.
  ]
  #colbreak()
  #figure(
    image(ar.diagUC1, width: 22em, fit: "contain"),
    caption: "Diagramma UC1, consultazione Jira",
  )
]

*Scenario principale*
- L'utente interagisce con #glossary("BuddyBot") tramite l'interfaccia chat, ponendo una domanda
  - esempio: "Quali #glossary("issue") sono assegnate a me per questa settimana?"
- #glossary("BuddyBot") autentica la connessione con Jira

- Il sistema invia una richiesta alle #glossary("API") di #glossary("Jira") per estrarre i dati
  - nel nostro esempio, vengono quindi estratti dati relativi alle #glossary("issue") assegnate all'utente con scadenza entro la settimana corrente.
- #glossary("BuddyBot") elabora i dati ricevuti, genera una risposta che verrà fornita all'utente come un elenco ordinato e leggibile (linguaggio naturale).
  - nel caso preso in esame, verrà fornito un elenco dettagliato delle issue, comprensivo di *titoli*, priorità, date di scadenza e stati.

*Inclusioni*
- Reperimento delle informazioni (#glossary("API"))
- Elaborazione dei dati ricevuti (#glossary("LLM"))

#pagebreak()
//=== UC2, Consultazione GitHub

=== UC2, Consultazione GitHub
#columns(2, gutter: 2cm)[
  #box[
    *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

    *Inclusioni*:
    - UC2.1 Informazioni generali sulla repository;
    - UC2.2 Stato di una determinata issue;
    - UC2.3 Elenco delle issue aperte;
    - UC2.4 Ultimo commit fatto da un utente;
    - UC2.5 Milestones attive;
    - UC2.6 Issue da completare per una milestone;
    - UC2.7 Username del responsabile di una issue;
    - UC2.8 File presenti in una directory;
    - UC2.9 Elenco dei collaboratori nel repository;
    - UC2.10 Pull request attive da chiudere;
    - UC2.11 Stato dei workflow di GitHub Action.

    *Precondizioni*:
    - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
    - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
    - L'utente ha posto una richiesta non fuori contesto e conforme con lo scope del sistema.

    *Postcondizioni*:
    - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

    *Scenario principale*:
    - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
    - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

    *User Story Associata*:
    - "Come utente, voglio poter accedere alle informazioni relative a un repository GitHub in modo rapido e intuitivo, per poter risolvere i miei dubbi e problemi in modo efficace."
  ]
  #colbreak()
  #figure(
    image(ar.diagUC2, width: 25em, fit: "contain"),
    caption: "Diagramma UC3, consultazione GitHub",
  )
]

#glossary("GitHub") consente di accedere a diversi tipi di informazione.

Per il progetto in questione, le tipologie di dati rilevanti sono:

- *Repository*: informazioni generali, issue, pull request, commit, collaboratori, file e directory;
- *Workflow*: stato dei workflow di GitHub Actions.

==== Inclusioni:
- *UC2.1, Informazioni generali sulla repository*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto informazioni generali su un repository.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, quali sono le informazioni generali del repository?"

- *UC2.2, Stato di una determinata issue*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto lo stato di una specifica issue.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, qual è lo stato dell'issue #123?"

- *UC2.3, Elenco delle issue aperte*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto l'elenco delle issue aperte.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, quali sono le issue aperte nel repository?"

- *UC2.4, Ultimo commit fatto da un utente*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto l'ultimo commit fatto da un utente specifico.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, qual è l'ultimo commit fatto da 'username_utente'?"

- *UC2.5, Milestones attive*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto le milestones attive.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, quali sono le milestones attive nel repository?"

- *UC2.6, Issue da completare per una milestone*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto le issue da completare per una specifica milestone.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, quali issue devono essere completate per la milestone 'Sprint 1'?"

- *UC2.7, Username del responsabile di una issue*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto il responsabile di una specifica issue.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, chi è il responsabile dell'issue #46?"

- *UC2.8, File presenti in una directory*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto i file presenti in una specifica directory.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, quali file ci sono nella directory 'src'?"

- *UC2.9, Elenco dei collaboratori nel repository*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto l'elenco dei collaboratori.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, chi sono i collaboratori del repository?"

- *UC2.10, Pull request attive da chiudere*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto le pull request attive da chiudere.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, quali sono le pull request attive da chiudere?"

- *UC2.11, Stato dei workflow di GitHub Action*

  *Attori coinvolti*: #glossary("GUI"), #glossary("GitHub") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto lo stato dei workflow di GitHub Actions.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal repository.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("GitHub") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - Il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, qual è lo stato dell'ultimo workflow di GitHub Actions?"

#pagebreak()

//confluence
=== UC3, Consultazione Confluence
#columns(2, gutter: 2cm)[
  #box[
    *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

    *Inclusioni* //non sapevo se metterle come inclusioni o specializzazioni quindi ho seguito il diagramma
    - UC3.1 Richiesta Id di una pagina;
    - UC3.2 Richiesta titolo di una pagina;
    - UC3.3 Richiesta status di una pagina;
    - UC3.4 Richiesta autore di una pagina;
    - UC3.5 Richiesta owner di una pagina;
    - UC3.6 Richiesta spazio di una pagina;
    - UC3.7 Richiesta body di una pagina;
    - UC3.8 Richiesta id di una task;
    - UC3.9 Richiesta status di una task;
    - UC3.10 Richiesta creatore di una task;
    - UC3.11 Richiesta assegnatario di una task;
    - UC3.12 Richiesta data di scadenza di una task.

    *Precondizioni*:
    - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
    - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente; //BOH
    - L'utente ha posto una richiesta non fuori contesto e conforme con lo scope del sistema.

    *Postcondizioni*:
    - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

    *Scenario principale*:
    - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente; //anche qui solo questa?
    - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile. //BOHH

    *User Story Associata*:
    - "Come utente, voglio poter accedere alle informazioni aziendali presenti in Confluence in modo rapido e intuitivo, per poter risolvere i miei dubbi e problemi in modo efficace."
  ]
  #colbreak()
  #figure(
    image(ar.diagUC3, width: 25em, fit: "contain"),
    caption: "Diagramma UC3, consultazione Confluence",
  )
]

#glossary("Confluence") consente di accedere a diversi tipi di informazione.

Per il progetto in questione, le tipologie di dati rilevanti sono:

- *Pagina*: informazioni specifiche contenute all'interno di una singola pagina;
- *Task*: dettagli relativi a task e attività da svolgere.



/*
 * DISCLAIMER PER NICOLAS lol.
 * Non ho messo i sottocasi come specializzazioni
 * come negli altri gruppi perché nel nostro
 * diagramma sono marcate come inclusioni.
 * Nei sottocasi ho scritto ad esempio "Quale è l'id
 * della pagina con titolo: ... ."
 * so che non è quello che ci eravamo detti ma
 * secondo me non è sbagliato neanche così,
 * e non saprei come metterlo nel modo che avevamo
 * detto su TG. Poi magari parliamo con il prof e
 * sentiamo cosa dice.
 * Buona Review e buon anno <3
 */

==== Inclusioni:
- *UC3.1, Richiesta Id di una pagina*
  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente; //BOH
  - L'utente ha richiesto l'id di una pagina.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente; //anche qui solo questa?
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile. //BOHH

  *User Story Associata*:
  - "Hey BuddyBot, quale ' l'id della pagina che ha questo titolo: ... ."

- *UC3.2, Richiesta titolo di una pagina*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto il titolo di una pagina.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, qual è il titolo della pagina con id: ... ."


- *UC3.3, Richiesta status di una pagina*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto lo status di una pagina.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, qual è lo status della pagina con id: ... ."

- *UC3.4, Richiesta autore di una pagina*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto l'autore di una pagina.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, chi è l'autore della pagina con id: ... ."

- *UC3.5, Richiesta owner di una pagina*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto l'owner di una pagina.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, chi è l'owner della pagina con id: ... ."

- *UC3.6, Richiesta spazio di una pagina*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto lo spazio di una pagina.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, in quale spazio si trova la pagina con id: ... ."

- *UC3.7, Richiesta Body di una pagina*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto il body di una pagina.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, puoi mostrarmi il contenuto della pagina con id: ... ."

- *UC3.8, Richiesta Id di una Task*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto l'id di una task.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, qual è l'id della task con titolo: ... ."

- *UC3.9, Richiesta Status di una Task*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto lo status di una task.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, qual è lo status della task con id: ... ."

- *UC3.10, Richiesta creatore di una Task*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto il creatore di una task.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, chi è il creatore della task con id: ... ."

- *UC3.11, Richiesta assegnatario di una Task*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto l'assegnatario di una task.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, chi è l'assegnatario della task con id: ... ."

- *UC3.12, Richiesta data di scadenza di una Task*

  *Attori coinvolti*: #glossary("GUI"), #glossary("Confluence") #glossary("API").

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente;
  - La #glossary("GUI") di #glossary("BuddyBot") è attiva e pronta per l'interazione con l'utente;
  - L'utente ha richiesto la data di scadenza di una task.

  *Postcondizioni*:
  - L'utente riceve una risposta corretta che include i dati richiesti provenienti dal documento.

  *Scenario principale*:
  - Il sistema interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente;
  - il sistema ritorna la risposta all'utente in modo chiaro e comprensibile.

  *User Story Associata*:
  - "Hey BuddyBot, qual è la data di scadenza della task con id: ... ."


= Requisiti
In questa sezione vengono esposti i requisiti individuati in seguito alle analisi effettuate dal gruppo e dai #glossary("casi d'uso (UC)") esaminati in precedenza. Per garantire maggiore chiarezza, i vari requisiti verranno identificati da codici univoci a seconda della loro natura e dall'obbligatorietà o meno...

Come anticipato, i requisiti possono appartenere a tre categorie differenti:
- funzionali
- di qualità
- di vincolo


== Requisiti Funzionali
I #glossary("Requisiti Funzionali") definiscono cosa il sistema deve fare, ovvero le sue funzionalità principali e i comportamenti attesi, concentrandosi quindi sulle operazioni che gli utenti/attori devono poter eseguire.

Si osservi che, per tali requisiti, verranno inseriti i seguenti codici:
- RFO-x: Requisito Funzionale Obbligatorio numero "x"
- RFD-x: Requisito Funzionale Desiderabile numero "x"

#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 { rgb(209, 197, 174) },
  inset: (left: 0.5em, right: 0.5em),
)

#show table.cell: it => {
  if it.y == 0 {
    strong(align(center, it))
  } else {
    it
  }
}

#figure(
  table(
    columns: (3cm, 10cm, 3cm),
    [Codice], [Descrizione], [Fonti],
    [], [], [],
    [], [], [],
    [], [], [],
  ),
  caption: "Requisiti Funzionali",
)


== Requisiti di Qualità
I #glossary("Requisiti di Qualità") riguardano *come* il sistema deve funzionare, definendo quindi caratteristiche cruciali per garantire un ottima "#glossary("User Experience")", soddisfacendo le sue esigenze.

Si osservi che, per tali requisiti, verranno inseriti i seguenti codici:
- RQO-x: Requisito di Qualità Obbligatorio numero "x"
- RQD-x: Requisito di Qualità Desiderabile numero "x"

#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 { rgb(209, 197, 174) },
  inset: (left: 0.5em, right: 0.5em),
)

#show table.cell: it => {
  if it.y == 0 {
    strong(align(center, it)) // Allinea al centro e usa testo in grassetto
  } else {
    it
  }
}

#figure(
  table(
    columns: (3cm, 10cm, 3cm),
    [Codice], [Descrizione], [Fonti],
    [], [], [],
    [], [], [],
    [], [], [],
  ),
  caption: "Requisiti di Qualità",
)

== Requisiti di Vincolo
I #glossary("Requisiti di Vincolo") definiscono i limiti tecnici e/o progettuali entro i quali il sistema deve essere sviluppato.

Si osservi che, per tali requisiti, verranno inseriti i seguenti codici:
- RVO-x: Requisito di Vincolo Obbligatorio numero "x"
- RVD-x: Requisito di Vincolo Desiderabile numero "x"

#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 { rgb(209, 197, 174) },
  inset: (left: 0.5em, right: 0.5em),
)

#show table.cell: it => {
  if it.y == 0 {
    strong(align(center, it))
  } else {
    it
  }
}

#figure(
  table(
    columns: (3cm, 10cm, 3cm),
    [Codice], [Descrizione], [Fonti],
    [], [], [],
    [], [], [],
    [], [], [],
  ),
  caption: "Requisiti di Vincolo",
)

== Tracciamento
Il #glossary("Tracciamento") è il processo che mira a collegare ogni requisito del progetto alle sue "fonti" di origine (capitolato, incontri con l'azienda, incontri interni) e alle sue implementazioni, come i #glossary("Casi d'Uso (UC)").

#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 { rgb(209, 197, 174) },
  inset: (left: 0.5em, right: 0.5em),
)

#show table.cell: it => {
  if it.y == 0 {
    strong(align(center, it))
  } else {
    it
  }
}

#figure(
  table(
    columns: (6cm, 6cm),
    [Fonte], [Requisito],
    [], [],
    [], [],
    [], [],
  ),
  caption: "Tracciamento",
)

== Riepilogo
#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 { rgb(209, 197, 174) },
  inset: (left: 0.5em, right: 0.5em),
)

#show table.cell: it => {
  if it.y == 0 {
    strong(align(center, it))
  } else {
    it
  }
}

#figure(
  table(
    columns: (4cm, 3cm, 3cm, 3cm),
    [Tipologia], [Obbligatorio], [Desiderabile], [Totale],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
  ),
  caption: "Riepilogo",
)
Il totale dei Requisiti è: //somma della colonna "totale" della tabella di cui sopra
