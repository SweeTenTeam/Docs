#import "/template/document.typ": *

#show: project.with(
  title: "Analisi dei Requisiti",
  managers: (p.belenkov, p.mahdi),
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
    "0.0.10",
    "2025-01-20",
    (p.ferazzani),
    (p.fracaro),
    [Stesura Requisiti funzionali],
    "0.0.9",
    "2025-01-07",
    (p.fracaro),
    (p.santi),
    [Inseriti UC1, UC2, UC3],
    "0.0.8",
    "2025-01-04",
    (p.mahdi),
    (p.ferazzani),
    [Inserito UC GitHub],
    "0.0.7",
    "2024-12-02",
    (p.santi),
    (p.fracaro),
    [Sistemati UC Jira, aggiunto diagramma],
    "0.0.6",
    "2024-12-10",
    (p.ferazzani),
    (p.fracaro),
    [Inserito UC Confluence],
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

A seguire, #glossary("BuddyBot") garantisce anche la persistenza dei dati, ossia domande e risposte, con il fine di mantenere lo storico della chat agevolando il recupero di informazioni già richieste. Questa persistenza nel progetto è garantita spostando i dati dal container #glossary("Postgres") a un volume #glossary("Docker").

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
=== UC1, Visualizzazione storico chat//todo maybe add backend as secondary actor???
#columns(2, gutter: 3cm)[
  #box[
    *Attori coinvolti*: #glossary("User").

    *Precondizioni*
    - L'interfaccia grafica è pronta all'interazione con l'utente.

    *Postcondizioni*
    - L'interfaccia grafica viene aggiornata con i messaggi delle passate interazioni tra l'utente e #glossary("Buddybot").
    *Scenario principale*
    - L'utente accede all'interfaccia di #glossary("Buddybot") tramite l'applicazione web;
    - La GUI recupera i messaggi delle precedenti interazioni;
    - Nella scermata appaiono i messaggi riguardanti le passate interazioni con #glossary("Buddybot").
  ]
  #colbreak()
  #figure(
    image(ar.diagUC_storico_chat, width: 22em, fit: "contain"),
    caption: "Diagramma UC1, visualizzazione storico chat",
  )
]

*Estensioni*
- UC1.1, Nessun messaggio nello storico della chat;
- UC1.2, Errore durante il recupero dello storico della chat;
- UC1.3, Errore di connessione;
*Inclusioni*
- UC1.4, Visualizzazione singolo messaggio.
*User story associata*
- "Come utente, voglio poter vedere i messaggi delle passate interazioni con Buddybot, in modo da avere una conferma delle informazioni ricevute e poter approfondire eventuali dubbi o richiedere ulteriori dettagli."


==== UC1.1, Nessun messaggio nello storico della chat
*Attori coinvolti*: #glossary("User").

*Precondizioni*
- L'interfaccia grafica è pronta all'interazione con l'utente.

*Postcondizioni*
- L'interfaccia grafica viene aggiornata con un messaggio informativo che informa l'utente che non ci sono messaggi precedenti disponibili.
*Scenario principale*
- L'utente accede all'interfaccia di #glossary("Buddybot");
- La GUI cerca di recuperare i messaggi delle precedenti interazioni ma non è presente nessun messaggio nello storico della chat;
- L'utente viene informato che non sono presenti messaggi precedenti tramite un aggiornamento dell'interfaccia grafica.
*User story associata*
- "Quando l'utente accede a Buddybot per la prima volta, viene informato che, non essendoci interazioni pregresse, non sono disponibili messaggi nello storico".

==== UC1.2, Errore durante il recupero dello storico della chat
*Attori coinvolti*: #glossary("User").

*Precondizioni*
- L'interfaccia grafica è pronta all'interazione con l'utente.

*Postcondizioni*
- L'interfaccia grafica mostra un alert che informa l'utente dell'impossibilità di recuperare i messaggi precedenti a causa di un problema.
*Scenario principale*
- L'utente accede all'interfaccia di #glossary("Buddybot");
- La GUI cerca di recuperare i messaggi delle precedenti interazioni ma si verifica un errore durante il processo che impedisce il recupero di tali messaggi;
- L'utente viene informato che si è verificato un errore durante il recupero dei messaggi precedenti tramite un aggiornamento dell'interfaccia grafica.
*User story associata*
- "Come utente, voglio essere informato in modo chiaro se si verifica un errore durante il recupero dei messaggi precedenti, in modo da sapere che i dati non sono disponibili e poter agire di conseguenza senza confusione".


==== UC1.3, Errore di connessione
*Attori coinvolti*: #glossary("User").

*Precondizioni*
- L'interfaccia grafica è pronta all'interazione con l'utente.

*Postcondizioni*
- L'interfaccia grafica viene aggiornata con un messaggio di errore che informa l'utente che non è stato possibile eseguire l'operazione richiesta per la mancanza di connessione ad internet e invita a controllare tale connessione.

*Scenario principale*
- L'utente accede all'interfaccia di #glossary("Buddybot") e chiede all'interfaccia grafica di eseguire un'operazione che richiede la connessione ad internet;
- La GUI cerca di eseguire la richiesta dell'utente ma non riesce a portarla a termine per la mancanza di connessione ad internet;
- L'utente viene informato che si è verificato un errore durante l'esecuzione della richiesta tramite un aggiornamento dell'interfaccia grafica.
*User story associata*
- "Come utente, voglio essere informato se il motivo del fallimento della richiesta è la mancanza di connessione ad internet così da poter provvedere alla risoluzione del problema".


==== UC1.4, Visualizzazione singolo messaggio
#columns(2, gutter: 3cm)[
  #box[
    *Attori coinvolti*: #glossary("User").

    *Precondizioni*
    - L'interfaccia grafica di #glossary("Buddybot") è funzionante e pronta per l'utilizzo;
    - Esiste almeno un messaggio proveniente da una passata interazione tra l'utente e #glossary("Buddybot")

    *Postcondizioni*
    - L'interfaccia grafica di #glossary("Buddybot") viene aggiornata mostrando il messaggio.
  ]
  #colbreak()
  #figure(
    image(ar.diagUC_single_messaggio, width: 22em, fit: "contain"),
    caption: "Diagramma UC1.4, Visualizzazione messaggio singolo",
  )
]
*Scenario principale*
- L'utente vuole visualizzare il contenuto della chat;
- L'utente visualizza il contenuto del messaggio;
- L'utente visualizza data e ora dell'invio del messaggio;
- L'utente visualizza il mittente del messaggio.

*Inclusioni*
- Visualizzazione contenuto del messaggio;
- Visualizzazione data e ora del messaggio;
- Visualizzazione mittente del messaggio;

*User story associata*
- "Come utente voglio poter visualizzare il contenuto, la data e l'ora di invio, e il mittente di un singolo messaggio della chat in modo chiaro e comprensibile in modo da avere sempre una chiara idea del contesto e dei dettagli delle passate interazioni con #glossary("Buddybot")".


===== UC1.4.1, Visualizzazione contenuto del messaggio
*Attori coinvolti*: #glossary("User").

*Precondizioni*
- L'interfaccia grafica è pronta all'interazione con l'utente.
- Esiste almeno un messaggio proveniente da una passata interazione tra l'utente e #glossary("Buddybot")

*Postcondizioni*
- L'interfaccia grafica di #glossary("Buddybot") viene aggiornata mostrando il contenuto del messaggio.

*Scenario principale*
- L'utente vuole visualizzare il contenuto della chat;
- L'utente visualizza il contenuto del messaggio;
*User story associata*
- "Come utente, voglio poter visualizzare il contenuto di un messaggio della chat in modo da comprendere le informazioni scambiate durante le passate interazioni con Buddybot".

===== UC1.4.2, Visualizzazione data e ora del messaggio;
*Attori coinvolti*: #glossary("User").

*Precondizioni*
- L'interfaccia grafica è pronta all'interazione con l'utente.
- Esiste almeno un messaggio proveniente da una passata interazione tra l'utente e #glossary("Buddybot")

*Postcondizioni*
- L'interfaccia grafica di #glossary("Buddybot") viene aggiornata mostrando la data e l'ora del messaggio.

*Scenario principale*
- L'utente vuole visualizzare il contenuto della chat;
- L'utente visualizza la data e l'ora del messaggio.
*User story associata*
- "Come utente, voglio poter visualizzare la data e l'ora di un messaggio della chat in modo da sapere quando è stato inviato e contestualizzarlo all'interno delle mie interazioni con #glossary("Buddybot")".


===== UC1.4.3, Visualizzazione mittente del messaggio
*Attori coinvolti*: #glossary("User").

*Precondizioni*
- L'interfaccia grafica è pronta all'interazione con l'utente.
- Esiste almeno un messaggio proveniente da una passata interazione tra l'utente e #glossary("Buddybot")

*Postcondizioni*
- L'interfaccia grafica di #glossary("Buddybot") viene aggiornata mostrando il mittente del messaggio.

*Scenario principale*
- L'utente vuole visualizzare il contenuto della chat;
- L'utente visualizza il mittente del messaggio;
*User story associata*
- "Come utente, voglio poter visualizzare il mittente di un messaggio della chat in modo da distinguere chi ha inviato il messaggio e comprendere meglio il contesto delle mie interazioni con #glossary("Buddybot")".


//domanda USER-GUI
=== UC2, Domanda utente all'interfaccia grafica//todo maybe add backend as secondary actor???
#columns(2, gutter: 3cm)[
  #box[
    *Attori coinvolti*: #glossary("User").

    *Precondizioni*
    - L'interfaccia grafica è pronta all'interazione con l'utente.

    *Postcondizioni*
    - L'interfaccia grafica viene aggiornata con il contenuto, la data, l'ora e il mittente del messaggio di risposta di #glossary("Buddybot") alla domanda dell'utente.

  ]
  #colbreak()
  #figure(
    image(ar.diagUC_ask_user-gui, width: 22em, fit: "contain"),
    caption: "Diagramma UC2, Domanda utente alla GUI",
  )
]
*Scenario principale*
- L'utente accede alla chat con #glossary("Buddybot") tramite l'applicazione web;
- L'utente scrive la propria domanda;
- L'utente invia il messaggio con la proprio domanda;
- L'interfaccia grafica invia la richiesta dell'utente al backend per generare una risposta alla domanda;
- L'interfaccia grafica riceve la risposta alla domanda dell'utente;
- L'interfaccia grafica viene aggiornata con il messaggio inviato dall'utente;
- L'interfaccia grafica viene aggiornata con il messaggio di risposta di #glossary("Buddybot") alla domanda dell'utente.
*Estensioni*
- UC2.1, Errore nella generazione della risposta;
- UC1.3, Errore di connessione;
*Inclusioni*
- UC1.4, Visualizzazione singolo messaggio.
*User story associata*
- "Come utente voglio interagire con #glossary("Buddybot") attraverso una chat per porre domande e ricevere risposte in modo rapido e intuitivo. Inoltre, desidero visualizzare tutti i dettagli di ogni messaggio, inclusi contenuto, data, ora e mittente, in modo da avere un'esperienza chiara e completa durante l'interazione."

==== UC2.1, Errore nella generazione della risposta
*Attori coinvolti*: #glossary("User").

*Precondizioni*
- L'interfaccia grafica è pronta all'interazione con l'utente.

*Postcondizioni*
- L'interfaccia grafica di #glossary("Buddybot") viene aggiornata mostrando il mittente del messaggio.

*Scenario principale*
- L'utente accede alla chat con #glossary("Buddybot") tramite l'applicazione web;
- L'utente scrive la propria domanda;
- L'utente invia il messaggio con la proprio domanda;
- L'interfaccia grafica invia la richiesta dell'utente al backend per generare una risposta alla domanda;
- Si verifica un errore durante la generazione della risposta;
- L'interfaccia grafica viene aggiornata con un messaggio di errore che informa l'utente che non è stato possibile generare la risposta alla sua domanda.
*User story associata*
- "Come utente voglio essere informato tramite un messaggio di errore chiaro e comprensibile se si verifica un problema durante la generazione della risposta da parte di #glossary("Buddybot"), in modo da sapere che la mia richiesta non è stata elaborata e poter eventualmente riprovare".

=== UC3, Elaborazione domanda utente
#columns(2, gutter: 3cm)[
  #box[
    *Attori coinvolti*:
    - Primari:
      - #glossary("User") .
    - Secondari:
      - #glossary("Jira") ;
      - #glossary("Github") ;
      - #glossary("Confluence") ;
      - #glossary("LLM") .

    *Precondizioni*
    - La GUI e il backend di #glossary("Buddybot") comunicano correttamente tramite una connessione stabile e funzionante;
    - L'interfaccia grafica ha acquisito una domanda dall'utente.

  ]
  #colbreak()
  #figure(
    image(ar.diagUC_elab_domanda, width: 22em, fit: "contain"),
    caption: "Diagramma UC3, Elaborazione domanda utente",
  )
]

*Postcondizioni*
- Il backend genera e restituisce una risposta accurata in linguaggio naturale alla domanda ricevuta dall'interfaccia grafica.
- La domanda dell'utente e la relativa risposta vengono salvate nello storico della chat per future consultazioni.

*Scenario principale*
- L'interfaccia grafica invia al backend di #glossary("Buddybot") la domanda formulata dall'utente;
- Il backend analizza la domanda e recupera tutti i documenti rilevanti da #glossary("Jira"), #glossary("GitHub") e #glossary("Confluence"), necessari per elaborare una risposta accurata;
- La domanda dell'utente, insieme ai documenti recuperati, viene inviata al #glossary("LLM") per la generazione della risposta in linguaggio naturale;
- La risposta generata dal #glossary("LLM") viene restituita dal backend all'interfaccia grafica;
- La domanda dell'utente e la risposta generata vengono aggiunte allo storico della chat, rendendole disponibili per la visualizzazione successiva.

*Estensioni*
- UC3.1, Domanda fuori contesto;
- UC3.2, Errore durante la generazione della risposta;
*Inclusioni*
- UC4, Domanda dell'utente che richiede l'utilizzo di informazioni da #glossary("Jira");
- UC5, Domanda dell'utente che richiede l'utilizzo di informazioni da #glossary("GitHub");
- UC6, Domanda dell'utente che richiede l'utilizzo di informazioni da #glossary("Confluence");
- UC3.3, Generazione risposta in linguaggio naturale.

*User story associata*
- "Come utente di #glossary("Buddybot"), voglio poter porre domande attraverso l'interfaccia grafica e ricevere risposte accurate in linguaggio naturale, basate sui documenti rilevanti recuperati da #glossary("Jira"), #glossary("GitHub") e #glossary("Confluence"), così da ottenere informazioni utili e coerenti con il contesto del sistema..


==== UC3.1, Domanda fuori contesto
*Attori coinvolti*:
- Primari:
  - #glossary("User") .
- Secondari:
  - #glossary("LLM").

*Precondizioni*
- La GUI e il backend di #glossary("Buddybot") comunicano correttamente tramite una connessione stabile e funzionante;
- L'interfaccia grafica ha acquisito una domanda dall'utente.

*Postcondizioni*
- Il backend genera e restituisce una risposta che informa che non è stato possibile rispondere alla domanda in quanto non il linea con il contesto di #glossary("Buddybot").
- La domanda dell'utente e la relativa risposta vengono salvate nello storico della chat per future consultazioni.

*Scenario principale*
- L'interfaccia grafica invia al backend di Buddybot la domanda formulata dall'utente.
- Il backend analizza la domanda e tenta di recuperare documenti rilevanti da #glossary("Jira"), #glossary("GitHub") e #glossary("Confluence"). Tuttavia, non trova documenti correlati poiché la domanda è fuori dal contesto operativo di #glossary("Buddybot").
- La domanda dell'utente viene inoltrata al #glossary("LLM") per generare una risposta in linguaggio naturale che informa l'utente che la domanda non è pertinente al contesto.
- La risposta generata dal #glossary("LLM") viene restituita dal backend all'interfaccia grafica.
- La domanda e la risposta vengono archiviate nello storico della chat, rendendole disponibili per future visualizzazioni.
*User story associata*
- "Come utente di #glossary("Buddybot"), voglio ricevere una risposta chiara e in linguaggio naturale quando pongo una domanda fuori contesto, in modo da essere informato che la mia richiesta non è pertinente al sistema e capire meglio i limiti del suo ambito operativo".

==== UC3.2, Errore durante la generazione della risposta
*Attori coinvolti*:
- #glossary("User") .

*Precondizioni*
- La GUI e il backend di #glossary("Buddybot") comunicano correttamente tramite una connessione stabile e funzionante;
- L'interfaccia grafica ha acquisito una domanda dall'utente.

*Postcondizioni*
- Il backend ritorna un errore informando che non è stato possibile generare la risposta alla domanda richiesta.

*Scenario principale*
- L'interfaccia grafica invia al backend di #glossary("Buddybot") la domanda formulata dall'utente.
- Il backend tenta di analizzare la domanda, di recuperare i documenti pertinenti e di generare una risposta in linguaggio naturale ma non ci riesce per un errore;
- Il backend ritorna un errore informado l'interfaccia grafica che non è stato possibile generare la risposta alla domanda richiesta.
*User story associata*
- "Come utente voglio essere informato in modo chiaro e immediato nel caso in cui BuddyBot non riesca a generare una risposta alla mia domanda, così da poter eventualmente riformulare la domanda o contattare un supporto alternativo".

==== UC3.3, Generazione risposta in linguaggio naturale
*Attori coinvolti*:
- Primari:
  - #glossary("User") .
- Secondari:
  - #glossary("LLM").

*Precondizioni*
- La GUI e il backend di #glossary("Buddybot") comunicano correttamente tramite una connessione stabile e funzionante;
- L'interfaccia grafica ha acquisito una domanda dall'utente.

*Postcondizioni*
- Viene generata e ritornata una risposta in linguaggio naturale alla domanda presentata dall'interfaccia utente.

*Scenario principale*
- L'interfaccia grafica invia al backend di Buddybot la domanda formulata dall'utente.
- Il backend invia la domanda e i documenti rilevanti al #glossary("LLM") per generare una risposta in linguaggio naturale;
- Viene ritornato un messaggio di risposta in linguaggio naturale;
*User story associata*
- "Come utente voglio ricevere una risposta in linguaggio naturale alla mia domanda, così da ottenere informazioni chiare e comprensibili.".




#pagebreak()
=== UC2, Messaggio che richiede informazioni da Jira
*Attori coinvolti*: #glossary("GUI"), #glossary("Jira")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- Viene mostrata nell'interfaccia di #glossary("BuddyBot") la risposta elaborata in linguaggio naturale.

*Scenario principale*
- La #glossary("GUI") di #glossary("BuddyBot") ha acquisito la domanda posta dall'utente.
- Il sistema interpreta la domanda digitata nell'interfaccia (#glossary("GUI")) e tale richiesta viene inviata al modulo di connessione con le #glossary("API") di #glossary("Jira") con il fine di estrarre i dati utili.
- #glossary("LLM") elabora le informazioni ottenute per fornire all'utente una risposta chiara e comprensibile.

*Inclusioni*
- UC2.1, "Messaggio che richiede nome (titolo) di un ticket"
- UC2.2, "Messaggio che richiede assegnatario di un ticket"
- UC2.3, "Messaggio che richiede etichette di un ticket"
- UC2.4, "Messaggio che richiede stato di un ticket"
- UC2.5, "Messaggio che richiede attività principale collegata a un ticket"
- UC2.6, "Messaggio che richiede team di appartenenza di un ticket"
- UC2.7, "Messaggio che richiede sprint di appartenenza di un ticket"
- UC2.8, "Messaggio che richiede #glossary("story point estimate") di un ticket"
- UC2.9, "Messaggio che richiede il richiedente/creatore di un ticket"

#pagebreak()

//pagina dedicata all'immagine vista la dimensione
#figure(
  image(ar.diagUC2, width: 45em, fit: "contain"),
  caption: "Diagramma UC2, Messaggio informazioni Jira",
)

#pagebreak()

==== UC2.1, Messaggio che richiede nome (titolo) di un ticket
*Attori coinvolti*: #glossary("GUI"), #glossary("Jira")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- Viene mostrata nell'interfaccia di #glossary("BuddyBot") la risposta elaborata in linguaggio naturale secondo le richieste dell'utente.

*Scenario principale*
- La #glossary("GUI") di #glossary("BuddyBot") ha acquisito la domanda posta dall'utente, con il fine di ottenere più informazioni in merito a un ticket.
- Il sistema, dopo aver interpretato la domanda presente nella #glossary("GUI"), invia una richiesta alle #glossary("API") di #glossary("Jira") per recuperare i dettagli del ticket richiesto.
- #glossary("LLM") elabora le informazioni ottenute. Con questo #glossary("Use Case") specifico verrà mostrata nell'interfaccia-chat una risposta (elaborata in linguaggio naturale) contente il titolo del ticket richiesto.

==== UC2.2, Messaggio che richiede assegnatario di un ticket
*Attori coinvolti*: #glossary("GUI"), #glossary("Jira")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- Viene mostrata nell'interfaccia di #glossary("BuddyBot") la risposta elaborata in linguaggio naturale secondo le richieste dell'utente.

*Scenario principale*
- La #glossary("GUI") di #glossary("BuddyBot") ha acquisito la domanda posta dall'utente, con il fine di ottenere più informazioni in merito a un ticket.
- Il sistema, dopo aver interpretato la domanda presente nella #glossary("GUI"), invia una richiesta alle #glossary("API") di #glossary("Jira") per recuperare i dettagli del ticket richiesto.
- #glossary("LLM") elabora le informazioni ottenute. Con questo #glossary("Use Case") specifico verrà mostrata nell'interfaccia-chat una risposta (elaborata in linguaggio naturale) contente l'assegnatario del ticket richiesto.

==== UC2.3, Messaggio che richiede etichette di un ticket
*Attori coinvolti*: #glossary("GUI"), #glossary("Jira")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- Viene mostrata nell'interfaccia di #glossary("BuddyBot") la risposta elaborata in linguaggio naturale secondo le richieste dell'utente.

*Scenario principale*
- La #glossary("GUI") di #glossary("BuddyBot") ha acquisito la domanda posta dall'utente, con il fine di ottenere più informazioni in merito a un ticket.
- Il sistema, dopo aver interpretato la domanda presente nella #glossary("GUI"), invia una richiesta alle #glossary("API") di #glossary("Jira") per recuperare i dettagli del ticket richiesto.
- #glossary("LLM") elabora le informazioni ottenute. Con questo #glossary("Use Case") specifico verrà mostrata nell'interfaccia-chat una risposta (elaborata in linguaggio naturale) contente le etichette associate al ticket richiesto.

==== UC2.4, Messaggio che richiede stato di un ticket
*Attori coinvolti*: #glossary("GUI"), #glossary("Jira")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- Viene mostrata nell'interfaccia di #glossary("BuddyBot") la risposta elaborata in linguaggio naturale secondo le richieste dell'utente.

*Scenario principale*
- La #glossary("GUI") di #glossary("BuddyBot") ha acquisito la domanda posta dall'utente, con il fine di ottenere più informazioni in merito a un ticket.
- Il sistema, dopo aver interpretato la domanda presente nella #glossary("GUI"), invia una richiesta alle #glossary("API") di #glossary("Jira") per recuperare i dettagli del ticket richiesto.
- #glossary("LLM") elabora le informazioni ottenute. Con questo #glossary("Use Case") specifico verrà mostrata nell'interfaccia-chat una risposta (elaborata in linguaggio naturale) contente lo stato ("Da completare", "In corso", "Completato") del ticket richiesto.

==== UC2.5, "Messaggio che richiede attività principale collegata a un ticket"
*Attori coinvolti*: #glossary("GUI"), #glossary("Jira")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- Viene mostrata nell'interfaccia di #glossary("BuddyBot") la risposta elaborata in linguaggio naturale secondo le richieste dell'utente.

*Scenario principale*
- La #glossary("GUI") di #glossary("BuddyBot") ha acquisito la domanda posta dall'utente, con il fine di ottenere più informazioni in merito a un ticket.
- Il sistema, dopo aver interpretato la domanda presente nella #glossary("GUI"), invia una richiesta alle #glossary("API") di #glossary("Jira") per recuperare i dettagli del ticket richiesto.
- #glossary("LLM") elabora le informazioni ottenute. Con questo #glossary("Use Case") specifico verranno mostrate nell'interfaccia-chat, attraverso una risposta in linguaggio naturale, le eventuali etichette/attività principali dello specifico ticket preso in esame.

==== UC2.6, "Messaggio che richiede team di appartenenza di un ticket"
*Attori coinvolti*: #glossary("GUI"), #glossary("Jira")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- Viene mostrata nell'interfaccia di #glossary("BuddyBot") la risposta elaborata in linguaggio naturale secondo le richieste dell'utente.

*Scenario principale*
- La #glossary("GUI") di #glossary("BuddyBot") ha acquisito la domanda posta dall'utente, con il fine di ottenere più informazioni in merito a un ticket.
- Il sistema, dopo aver interpretato la domanda presente nella #glossary("GUI"), invia una richiesta alle #glossary("API") di #glossary("Jira") per recuperare i dettagli del ticket richiesto.
- #glossary("LLM") elabora le informazioni ottenute. In questo caso verrà restituita una risposta contente il team al quale è associato il ticket preso in esame.

==== UC2.7, Messaggio che richiede sprint di appartenenza di un ticket
*Attori coinvolti*: #glossary("GUI"), #glossary("Jira")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- Viene mostrata nell'interfaccia di #glossary("BuddyBot") la risposta elaborata in linguaggio naturale secondo le richieste dell'utente.

*Scenario principale*
- La #glossary("GUI") di #glossary("BuddyBot") ha acquisito la domanda posta dall'utente, con il fine di ottenere più informazioni in merito a un ticket.
- Il sistema, dopo aver interpretato la domanda presente nella #glossary("GUI"), invia una richiesta alle #glossary("API") di #glossary("Jira") per recuperare i dettagli del ticket richiesto.
- #glossary("LLM") elabora le informazioni ottenute. Verrà infine ritornata nella #glossary("GUI") una risposta contenete lo Sprint di appartenenza del ticket richiesto dall'utente.

==== UC2.8, Messaggio che richiede #glossary("story point estimate") di un ticket
*Attori coinvolti*: #glossary("GUI"), #glossary("Jira")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- Viene mostrata nell'interfaccia di #glossary("BuddyBot") la risposta elaborata in linguaggio naturale secondo le richieste dell'utente.

*Scenario principale*
- La #glossary("GUI") di #glossary("BuddyBot") ha acquisito la domanda posta dall'utente, con il fine di ottenere più informazioni in merito a un ticket.
- Il sistema, dopo aver interpretato la domanda presente nella #glossary("GUI"), invia una richiesta alle #glossary("API") di #glossary("Jira") per recuperare i dettagli del ticket richiesto.
- #glossary("LLM") elabora le informazioni ottenute. Verrà generata una risposta in linguaggio naturale contenente la #glossary("story point estimate"), ossia un'unità di misura che indicizza la complessità del ticket richiesto.

==== UC2.9, Messaggio che richiede il richiedente/creatore di un ticket
*Attori coinvolti*: #glossary("GUI"), #glossary("Jira")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- Viene mostrata nell'interfaccia di #glossary("BuddyBot") la risposta elaborata in linguaggio naturale secondo le richieste dell'utente.

*Scenario principale*
- La #glossary("GUI") di #glossary("BuddyBot") ha acquisito la domanda posta dall'utente, con il fine di ottenere più informazioni in merito a un ticket.
- Il sistema, dopo aver interpretato la domanda presente nella #glossary("GUI"), invia una richiesta alle #glossary("API") di #glossary("Jira") per recuperare i dettagli del ticket richiesto.
- #glossary("LLM") elabora le informazioni ottenute. Verrà generata una risposta in linguaggio naturale contenente la persona che ha creato e richiesto il completamento dell'attività richiesta.


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
  - "Hey BuddyBot, qual è lo stato dell'issue #sym.hash `123` ?"

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
  - "Hey BuddyBot, qual è l'ultimo commit fatto da `username_utente`?"

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
  - "Hey BuddyBot, quali issue devono essere completate per la milestone `Sprint 1`?"

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
  - "Hey BuddyBot, chi è l'assegnatario dell'issue #sym.hash `46` ?"

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
  - "Hey BuddyBot, quali file ci sono nella directory `src` ?"

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
  - "Hey BuddyBot, qual è lo stato dell'ultimo #glossary("Workflow") di #glossary("GitHub Actions")?"

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



= Requisiti <requisiti>
In questa sezione vengono esposti i requisiti esposti nel capitolato e individuati a seguito delle analisi effettuate dal gruppo e dai #glossary("casi d'uso (UC)") esaminati in precedenza. Per garantire la maggior chiarezza, i requisiti verranno identificati da un codice univoco con questa struttura:

#align(center)[*`R - [Tipo] - [Numero]  - [Priorità]`*]

Dove:

- *Tipo*: indica il tipo di requisito, che può essere funzionale, di qualità o di vincolo.

  I tipi sono indicati da una sigla:

  - *`F`* per i requisiti funzionali;
  - *`Q`* per i requisiti di qualità;
  - *`V`* per i requisiti di vincolo.

- *Numero*: rappresenta il numero progressivo del requisito;
- *Priorità*: indica la priorità del requisito. Il team ha deciso, seguendo le Norme di Progetto, di assegnare un codice numerico per la priorità.

  I codici sono i seguenti:

  - 1: requisito obbligatorio;
  - 2: requisito desiderabile;
  - 3: requisito opzionale.

Inoltre, in ogni tabella saranno indicate la descrizione del requisito in oggetto e la sua fonte (capitolato o caso d'uso).

== Requisiti Funzionali
I #glossary("Requisiti Funzionali") definiscono cosa il sistema deve fare, ovvero le sue funzionalità principali e i comportamenti attesi, concentrandosi quindi sulle operazioni che gli utenti/attori devono poter eseguire.

Si osservi che, rispetto a quanto indicato sopra, i requisiti funzionali verranno identificati con i seguenti codici:
- `R-F-xxx-1`: Requisito Funzionale xxx Obbligatorio
- `R-F-yyy-2`: Requisito Funzionale yyy Desiderabile
- `R-F-zzz-3`: Requisito Funzionale zzz Opzionale

#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 {
    rgb(209, 197, 174)
  } else if calc.odd(y) {
    luma(84.31%)
  } else {
    white
  },
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
    align: center + horizon,
    columns: (3cm, 10cm, 3cm),
    [Codice], [Descrizione], [Fonti],
    [*R-F-001-1*], [L'utente deve accedere all'applicazione senza necessità di autenticazione], [Capitolato],
    [*R-F-002-1*], [Il sistema deve reperire le informazioni da GitHub], [Capitolato],
    [*R-F-003-1*], [Il sistema deve reperire le informazioni da Confluence], [Capitolato],
    [*R-F-004-1*], [Il sistema deve reperire le informazioni da Jira], [Capitolato],
    [*R-F-005-1*], [L'utente deve poter visualizzare lo storico della chat], [UC1],
    [*R-F-005-1*], [L'utente deve visualizzare un messaggio se non ci sono messaggi nello storico], [UC1.1],
    [*R-F-006-1*],
    [L'utente deve visualizzare un messaggio di errore se il sistema non riesce a recuperare lo storico],
    [UC1.2],

    [*R-F-007-1*], [L'utente deve visualizzare un messaggio di errore se il sistema non riesce a connettersi], [UC1.3],
    [*R-F-007-1*], [L'utente deve visualizzare almeno un messaggio], [UC1.4],
  ),
  caption: "Requisiti Funzionali",
)


== Requisiti di Qualità
I #glossary("Requisiti di Qualità") riguardano *come* il sistema deve funzionare, definendo quindi caratteristiche cruciali per garantire un ottima "#glossary("User Experience")", soddisfacendo le sue esigenze.

Come i requisiti funzionali, i requisiti di qualità seguono la struttura definita al #link(<requisiti>, "Capitolo 4").

I requisiti di qualità verranno quindi identificati con i seguenti codici:
- `R-Q-xxx-1`: Requisito Di Qualità xxx Obbligatorio
- `R-Q-yyy-2`: Requisito Di Qualità yyy Desiderabile
- `R-Q-zzz-3`: Requisito Di Qualità zzz Opzionale



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

Anche i requisiti di vincolo seguono la struttura del #link(<requisiti>, "Capitolo 4")

I requisiti di vincolo verranno quindi identificati con i seguenti codici:
- `R-V-xxx-1`: Requisito Di Vincolo xxx Obbligatorio
- `R-V-yyy-2`: Requisito Di Vincolo yyy Desiderabile
- `R-V-zzz-3`: Requisito Di Vincolo zzz Opzionale

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
