#import "/template/document.typ": *

#show: project.with(
  title: "Analisi dei Requisiti",
  managers: (p.belenkov, p.mahdi),
  recipients: (p.vardanega, p.cardin, p.azzurro,),
  changelog: (
    "0.0.4",
    "2024-11-25",
    (p.santi),
    (p.mahdi),
    "Introdotti i casi d'uso (3) + UC1",
    "0.0.3",
    "2024-11-22", 
    (p.santi), 
    (p.mahdi),
    "Terminata la descrizione (punto 2).",
    "0.0.2",
    "2024-11-21",
    (p.mahdi), 
    (p.santi), 
    "Fine punto 1 e inizio punto 2.",
    "0.0.1",
    "2024-11-19",
    (p.belenkov), 
    (p.santi), 
    "Stesura iniziale del documento e breve introduzione."
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
  - *Generalizzazioni*: relazione tra due casi d'uso; indica quella situazione in cui, prendendo in esame un caso d'uso specifico, esso rappresenta una variante o un'istanza di un caso d'uso più generale che descrive caratteristiche o comportamenti comuni a più scenari
== Attori
L'attore coinvolto nei casi d'uso è lo #glossary("User") che accede al servizio ponendo domande all'assistente virtuale.

== Definizione casi d'uso
=== UC1, Consultazione Jira
- *Attore coinvolto*: User
- *Precondizioni*
  - #glossary("API") #glossary("Jira") disponibili e configurate correttamente.
- *Scenario principale*
  - L'utente interagisce con #glossary("BuddyBot") tramite l'interfaccia chat, ponendo una domanda 
    - esempio: "Quali #glossary("issue") sono assegnate a me per questa settimana?"
  - #glossary("BuddyBot") autentica la connessione con Jira 

  - Il sistema invia una richiesta alle #glossary("API") di #glossary("Jira") per estrarre i dati 
    - nel nostro esempio, vengono quindi estratti dati relativi alle #glossary("issue") assegnate all'utente con scadenza entro la settimana corrente.
  - #glossary("BuddyBot") elabora i dati ricevuti, genera una risposta che verrà fornita all'utente come un elenco ordinato e leggibile (linguaggio naturale).
    - nel caso preso in esame, verrà fornito un elenco dettagliato delle issue, comprensivo di titoli, priorità, date di scadenza e stati.
- *Postcondizioni*
  - Le informazioni richieste vengono presentate correttamente all'utente, che può visualizzarle e utilizzarle per pianificare le proprie attività.
