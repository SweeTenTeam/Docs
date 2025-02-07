#import "/template/document.typ": *

#show: project.with(
  title: "Analisi dei Requisiti",
  managers: (p.belenkov, p.mahdi),
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
    "0.1.1",
    "2025-02-07",
    (p.belenkov,p.benedetti, p.santi,p.ferazzani, p.fracaro),
    (p.campagnaro),
    [Inseriti requisiti funzionali, di qualità, di vincolo e completato sezioni tracciamento e riepilogo],
     "0.1.0",
    "2025-02-05",
    (p.fracaro, p.santi, p.mahdi, p.ferazzani),
    (p.belenkov),
    [Rimozione UC Github, UC Jira, UC Confluence. Aggiunta precondizioni UC4, Aggiunta errori specifici a UC1, UC3, UC4. Numerazione casi d'uso corretta. Aggiunta spiegazione attori secondari],
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
    "Sistemati UC Jira, aggiunto diagramma",

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
L'#glossary("Analisi dei requisiti") fornisce una base per la progettazione del sistema, in quanto definisce le funzionalità che il
sistema dovrà offrire, permettendo così ai #glossary("programmatori") di comprendere le esigenze dei proponenti
identificando le soluzioni che più si adeguano a tali esigenze.\

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
Lo scopo del progetto è la realizzazione di un assistente virtuale sotto forma di #glossary("chatbot") in grado di assistere gli utenti, rispondendo alle loro domande in linguaggio naturale.
Il #glossary("chatbot") garantirà un accesso rapido alle informazioni interne dell'azienda, aggregando i dati provenienti dalle piattaforme #glossary("Jira"), #glossary("Github") e #glossary("Confluence") ed elaborando questi ultimi con l'uso dell'intelligenza artificiale per dare risposte chiare.
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
Presentazione pdf del capitolato C9: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9p.pdf","C9p.pdf")

=== Informativi
Slide del corso(T5): #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf","T05.pdf")

= Descrizione
== Obiettivo del prodotto
Questo progetto consiste nella creazione di un #glossary("chatbot") #glossary("text-to-text") per l'azienda #box(image(g.azzurro, width: 5em, height: auto)), che centralizza le informazioni relative all'azienda provenienti da diverse piattaforme e, con l'uso di un #glossary("LLM"), le elabora per creare delle risposte in linguaggio naturale. BuddyBot sarà in grado di rispondere a domande che variano dalla data di un determinato incontro fissato su #glossary("Jira"), a cosa è cambiato in un determinato commit su #glossary("Github") e a richieste specifiche su documenti presenti in #glossary("Confluence"). Inoltre aiuterà i nuovi membri a navigare tra tra le risorse aziendali, rispondendo alle domande frequenti.
Tale prodotto, in conclusione, risponde alla necessità di accedere in modo facile e immediato alle informazioni.


== Funzionalità del prodotto
#glossary("BuddyBot") è un assistente virtuale progettato per reperire informazioni aziendali attraverso un'interfaccia semplice ed intuitiva e basata sul linguaggio naturale. Il punto cardine del progetto è il seguente: il sistema si deve connettere alle piattaforme utilizzate dall'azienda, ossia #glossary("Jira"), #glossary("GitHub") e #glossary("Confluence"), estrapolando informazioni da quest'ultime e fornendo le risposte alle domande poste dall'utente.

L'assistente virtuale utilizza tecnologie di Intelligenza Artificiale per interpretare le richieste degli utenti e restituire informazioni personalizzate e contestualizzate.

A seguire, #glossary("BuddyBot") garantisce anche la persistenza dei dati, ossia domande e risposte, con il fine di mantenere lo storico della chat agevolando il recupero di informazioni già richieste.

== Utenti e caratteristiche
Il prodotto si rivolge principalmente al team aziendale:

- *Sviluppatori*, che accedono a informazioni tecniche come codice e documentazione;
- #glossary("Project Manager"), che usa #glossary("BuddyBot") per monitorare task e risorse;
- *Nuovi membri* del team, che vengono supportati nell'#glossary("onboarding") e nella ricerca delle informazioni necessarie, facilitando la loro integrazione nell'azienda;
- Membri del dipartimento delle *risorse umane*, che utilizzano #glossary("BuddyBot") per gestire le domande relative ai benefici e alle procedure di #glossary("onboarding").

Questa sezione mette in luce il ruolo centrale che BuddyBot può avere poiché, come spiegato in precedenza, centralizza le informazioni e semplifica i processi aziendali attraverso l'uso di IA, aumentando efficienza e produttività per tutti gli utenti coinvolti e diminuendo perdite di tempo.

= Casi d'uso
== Introduzione ai casi d'uso e obbiettivi
In questa sezione vengono elencati dettagliatamente i #glossary("casi d'uso (UC)") individuati dal gruppo in seguito ad analisi e valutazioni circa le specifiche del capitolato.
Gli scenari sottostanti seguono uno schema e può prevedere:
- *Titolo*: titolo del caso d'uso;
- *Attori*: il soggetto che interagisce con il sistema nel contesto del caso d'uso;
- *Precondizioni* e *Postcondizioni*: stato del sistema prima e dopo il caso d'uso;
- *Scenario principale*: descrizione dettagliata delle azioni che l'attore deve compiere per completare il caso d'uso, vengono formalizzati anche ipotesi e risultati attesi;
- *Estensioni*: relazione tra due casi d'uso; indica la situazione in cui un caso d'uso (estendibile) include opzionalmente un altro caso d'uso (esteso) al verificarsi di condizioni specifiche, gestendo scenari particolari senza complicare il caso principale;
- *Inclusioni*: relazione tra due casi d'uso; indica la situazione in cui, prendendo in esame un caso d'uso specifico, alcune funzionalità o azioni comuni appartengono a un altro caso d'uso, sempre eseguito come parte integrante dello scenario principale;
- *Generalizzazioni*: relazione tra due casi d'uso; indica la situazione in cui un caso d'uso più specifico eredita comportamenti e proprietà da un caso d'uso più generale;
- *User Story*: descrizione di una funzionalità del software dal punto di vista dell'utente; aiuta a comprendere le esigenze dell'utente e a definire i requisiti del sistema.

== Attori
Gli attori coinvolti nei casi d'uso sono:

*Attori Primari*:
- *User*: utente finale che interagisce direttamente con l'interfaccia di BuddyBot ponendo domande e ricevendo risposte;
- *User Interface*: componente del sistema che gestisce l'interazione con l'utente e la presentazione delle informazioni.

*Attori Secondari*:
- *Backend*: componente del sistema che elabora le richieste, gestisce la business logic e coordina l'interazione con le altre componenti;
- *Jira*: piattaforma esterna da cui il sistema recupera informazioni sui ticket e la gestione dei progetti;
- *GitHub*: piattaforma esterna da cui il sistema recupera informazioni sui repository e il controllo versione;
- *Confluence*: piattaforma esterna da cui il sistema recupera documentazione e informazioni aziendali;
- *LLM*: Large Language Model che elabora le domande e genera le risposte in linguaggio naturale.

#pagebreak()
== Definizione casi d'uso
=== UC1, Visualizzazione storico chat

  #figure(
    image(ar.diagUC_storico_chat, width: 42em, fit: "contain"),
    caption: "Diagramma UC1, visualizzazione storico chat",
  )
        *Attori coinvolti*:
    - Primari:
      - #glossary("User") .
    - Secondari:
      - #glossary("Backend").

    *Precondizioni*
    - L'interfaccia utente è pronta all'interazione con l'utente. 

    *Postcondizioni*
    - L'interfaccia utente viene aggiornata con i messaggi delle passate interazioni tra l'utente e #glossary("Buddybot").
    *Scenario principale*
    - L'utente accede all'interfaccia di #glossary("Buddybot") tramite l'applicazione web;
    - Vengono recuperati i messaggi delle precedenti interazioni;
    - Nella schermata appaiono i messaggi riguardanti le passate interazioni con #glossary("Buddybot").
  


*Estensioni*
- UC1.1, Visualizzazione errore nessun messaggio nello storico della chat;
- UC1.2, Visualizzazione errore generale durante il recupero dello storico della chat;
- UC1.3, Visualizzazione errore di connessione;
- UC1.5, Visualizzazione errore backend non disponibile;
*Inclusioni*
- UC1.4, Visualizzazione singolo messaggio.
*User story associata*
- "Come utente, voglio poter vedere i messaggi delle passate interazioni con Buddybot, in modo da avere una conferma delle informazioni ricevute e poter approfondire eventuali dubbi o richiedere ulteriori dettagli."


==== UC1.1, Visualizzazione errore nessun messaggio nello storico della chat
  *Attori coinvolti*:
  - Primari:
    - #glossary("User").
  - Secondari:
    - #glossary("Backend").

  *Precondizioni*
  - L'interfaccia utente è pronta all'interazione con l'utente. 

  *Postcondizioni*
  - L'interfaccia utente viene aggiornata con un avviso che informa l'utente che non ci sono messaggi precedenti disponibili.
  *Scenario principale*
  - L'utente accede all'interfaccia di #glossary("Buddybot");
  - Viene tentato il recupero dei messaggi delle precedenti interazioni ma non è presente nessun messaggio nello storico della chat;
  - L'utente viene informato che non sono presenti messaggi precedenti tramite un avviso.
  *User story associata*
  - "Quando l'utente utilizza #glossary("Buddybot") per la prima volta, viene informato che, non essendoci interazioni pregresse, non sono disponibili messaggi nello storico".

  ==== UC1.2, Errore durante il recupero dello storico della chat
  *Attori coinvolti*: #glossary("User").

  *Precondizioni*
  - L'interfaccia utente è pronta all'interazione con l'utente. 

  *Postcondizioni*
  - L'interfaccia utente mostra un avviso che informa l'utente dell'impossibilità di recuperare i messaggi precedenti a causa di un problema.
  *Scenario principale*
  - L'utente accede all'interfaccia di #glossary("Buddybot");
  - Viene tentato il recupero dei messaggi delle precedenti interazioni ma si verifica un errore durante il processo che impedisce il recupero di tali messaggi;
  - L'utente viene informato che si è verificato un errore durante il recupero dei messaggi precedenti tramite un avviso.
  *User story associata*
  - "Come utente, voglio essere informato in modo chiaro se si verifica un errore durante il recupero dei messaggi precedenti per poter agire di conseguenza senza confusione".


  ==== UC1.3, Visualizzazione errore di connessione
  *Attori coinvolti*: #glossary("User").

  *Precondizioni*
  - L'interfaccia utente è pronta all'interazione con l'utente. 

  *Postcondizioni*
  - L'interfaccia utente viene aggiornata con un messaggio di errore che informa l'utente che non è stato possibile eseguire l'operazione richiesta per la mancanza di connessione ad internet e invita a controllare tale connessione.

  *Scenario principale*
  - L'utente accede all'interfaccia di #glossary("Buddybot") e chiede all'interfaccia utente di eseguire un'operazione che richiede la connessione ad internet;
  - Viene tentata l'esecuzione della richiesta dell'utente ma non viene portata a termine per la mancanza di connessione ad internet;
  - L'utente viene informato che si è verificato un errore durante l'esecuzione della richiesta tramite un avviso.
  *User story associata*
  - "Come utente, voglio essere informato se il motivo del fallimento della richiesta è la mancanza di connessione ad internet così da poter provvedere alla risoluzione del problema".


 ==== UC1.5, Visualizzazione errore backend non disponibile
  *Attori coinvolti*: 
  - Primari:
    - #glossary("User").
  - Secondari:
    - #glossary("Backend").

  *Precondizioni*
  - L'interfaccia utente è pronta all'interazione con l'utente. 

  *Postcondizioni*
  - L'interfaccia utente viene aggiornata con un messaggio di errore che informa l'utente che non è stato possibile eseguire l'operazione richiesta perchè il #glossary("backend") non è al momento disponibile.

  *Scenario principale*
  - L'utente accede all'interfaccia di #glossary("Buddybot") e chiede all'interfaccia utente di eseguire un'operazione che richiede una risposta al #glossary("backend");
  - Viene tentata l'esecuzione della richiesta dell'utente ma non viene portata a termine perchè il #glossary("backend") non è al momento disponibile;
  - L'utente viene informato che si è verificato un errore durante l'esecuzione della richiesta tramite un avviso.
  *User story associata*
  - "Come utente, voglio essere informato se il motivo del fallimento della richiesta è il #glossary("backend") non disponibile così da poter contattare il supporto tecnico".


 ==== UC1.4, Visualizzazione singolo messaggio
   #figure(
    image(ar.diagUC_single_messaggio, width: 42em, fit: "contain"),
    caption: "Diagramma UC1.4, Visualizzazione messaggio singolo",
  )
    *Attori coinvolti*: #glossary("User").

    *Precondizioni*
    - La UI di #glossary("Buddybot") è funzionante e pronta per l'utilizzo;
    - Esiste almeno un messaggio proveniente da una passata interazione tra l'utente e #glossary("Buddybot")

    *Postcondizioni*
    - La user interface di #glossary("Buddybot") viene aggiornata mostrando il messaggio.



*Scenario principale*
- L'utente vuole visualizzare il contenuto della chat;
- L'utente visualizza il messaggio della passata interazione con #glossary("Buddybot").

*Inclusioni*
- Visualizzazione contenuto del messaggio;
- Visualizzazione data e ora del messaggio;
- Visualizzazione mittente del messaggio;

*User story associata*
- "Come utente voglio poter visualizzare il contenuto, la data e l'ora di invio, e il mittente di un singolo messaggio della chat in modo chiaro e comprensibile in modo da avere sempre una chiara idea del contesto e dei dettagli delle passate interazioni con #glossary("Buddybot")".


===== UC1.4.1, Visualizzazione contenuto del messaggio
*Attori coinvolti*: #glossary("User").

  *Precondizioni*
  - L'interfaccia utente è pronta all'interazione con l'utente. 
  - Esiste almeno un messaggio proveniente da una passata interazione tra l'utente e #glossary("Buddybot")

  *Postcondizioni*
  - L'interfaccia utente di #glossary("Buddybot") viene aggiornata mostrando il contenuto del messaggio.

  *Scenario principale*
  - L'utente vuole visualizzare il contenuto della chat;
  - L'utente visualizza il contenuto del messaggio;
  *User story associata*
  - "Come utente, voglio poter visualizzare il contenuto di un messaggio della chat in modo da comprendere le informazioni scambiate durante le passate interazioni con Buddybot".

  ===== UC1.4.2, Visualizzazione data e ora del messaggio;
*Attori coinvolti*: #glossary("User").

  *Precondizioni*
  - L'interfaccia utente è pronta all'interazione con l'utente. 
  - Esiste almeno un messaggio proveniente da una passata interazione tra l'utente e #glossary("Buddybot")

  *Postcondizioni*
  - L'interfaccia utente di #glossary("Buddybot") viene aggiornata mostrando la data e l'ora del messaggio.

  *Scenario principale*
  - L'utente vuole visualizzare il contenuto della chat;
  - L'utente visualizza la data e l'ora del messaggio.
  *User story associata*
  - "Come utente, voglio poter visualizzare la data e l'ora di un messaggio della chat in modo da sapere quando è stato inviato e contestualizzarlo all'interno delle mie interazioni con #glossary("Buddybot")".


  ===== UC1.4.3, Visualizzazione mittente del messaggio
*Attori coinvolti*: #glossary("User").

  *Precondizioni*
  - L'interfaccia utente è pronta all'interazione con l'utente. 
  - Esiste almeno un messaggio proveniente da una passata interazione tra l'utente e #glossary("Buddybot")

  *Postcondizioni*
  - L'interfaccia utente di #glossary("Buddybot") viene aggiornata mostrando il mittente del messaggio.

  *Scenario principale*
  - L'utente vuole visualizzare il contenuto della chat;
  - L'utente visualizza il mittente del messaggio;
  *User story associata*
  - "Come utente, voglio poter visualizzare il mittente di un messaggio della chat in modo da distinguere chi ha inviato il messaggio e comprendere meglio il contesto delle mie interazioni con #glossary("Buddybot")".

#pagebreak()
=== UC2, Scrittura domanda in linguaggio naturale

  #figure(
    image(ar.diacUC_inserimento_domanda, width: 42em, fit: "contain"),
    caption: "Diagramma UC2, Scrittura domanda in linguaggio naturale",
  )
        *Attori coinvolti*:
    - Primari:
      - #glossary("User") .

    *Precondizioni*
    - L'interfaccia utente è pronta all'interazione con l'utente.

    *Postcondizioni*
    - L'interfaccia utente viene aggiornata con la domanda scritta dall'utente.
    *Scenario principale*
    - L'utente accede all'interfaccia di #glossary("Buddybot") tramite l'applicazione web;
    - L'utente scrive la propria domanda nel campo di input dedicato;
    - Il campo di input viene aggiornato con la domanda scritta dall'utente.

*User story associata*
- "Come utente, voglio poter scrivere la mia domanda in linguaggio naturale in modo da poter interagire con Buddybot in modo naturale e intuitivo."

#pagebreak()
//domanda USER-GUI
=== UC3, Invio domanda dell'utente

  #figure(
    image(ar.diagUC_ask_user-ui, width: 42em, fit: "contain"),
    caption: "Diagramma UC3, Invio domanda dell'utente",
  )
    *Attori coinvolti*:
    - Primari:
      - #glossary("User") .
    - Secondari:
      - #glossary("Backend").

    *Precondizioni*
    - L'interfaccia utente è pronta all'interazione con l'utente. 
    - L'utente ha scritto la propria domanda nel campo di input dedicato.

    *Postcondizioni*
    - L'interfaccia utente viene aggiornata con il contenuto, la data, l'ora e il mittente del messaggio di risposta di #glossary("Buddybot") alla domanda dell'utente e la domanda posta dall'utente.

    *Scenario principale*
    - L'utente dopo aver scritto la propria domanda, preme il tasto di invio;
    - L'interfaccia utente invia la richiesta dell'utente al #glossary("backend") per generare una risposta alla domanda;
    - L'interfaccia utente riceve la risposta alla domanda dell'utente;
    - L'interfaccia utente viene aggiornata con il messaggio inviato dall'utente;
    - L'interfaccia utente viene aggiornata con il messaggio di risposta di #glossary("Buddybot") alla domanda dell'utente.
*Estensioni*
- UC1.3, Visualizzazione errore di connessione;
- UC1.5, Visualizzazione errore backend non disponibile;
- UC3.1, Visualizzazione errore nella generazione della risposta;
- UC3.2, Visualizzazione errore risposta troppo lunga;
- UC3.3, Visualizzazione errore domanda troppo lunga.
*Inclusioni*
- UC1.4, Visualizzazione singolo messaggio.
*User story associata*
- "Come utente voglio interagire con #glossary("Buddybot") attraverso una chat per porre domande e ricevere risposte in modo rapido e intuitivo. Inoltre, desidero visualizzare tutti i dettagli di ogni messaggio, inclusi contenuto, data, ora e mittente, in modo da avere un'esperienza chiara e completa durante l'interazione."

==== UC3.1, Visualizzazione errore nella generazione della risposta
  *Attori coinvolti*: 
  - Primari:
    - #glossary("User").
  - Secondari:
    - #glossary("Backend").

  *Precondizioni*
  - L'interfaccia utente è pronta all'interazione con l'utente;
  - L'utente ha scritto la propria domanda nel campo di input dedicato.

  *Postcondizioni*
  - L'interfaccia utente viene aggiornata con un messaggio di errore generico che informa l'utente che non è stato possibile generare la risposta alla sua domanda.

  *Scenario principale*
  - L'utente dopo aver scritto la propria domanda, preme il tasto di invio;
  - L'interfaccia utente invia la richiesta dell'utente al #glossary("backend") per generare una risposta alla domanda;
  - Si verifica un errore durante la generazione della risposta;
  - L'interfaccia utente viene aggiornata con un messaggio di errore che informa l'utente che non è stato possibile generare la risposta alla sua domanda.
  *User story associata*
  - "Come utente voglio essere informato tramite un messaggio di errore chiaro e comprensibile se si verifica un problema durante la generazione della risposta da parte di #glossary("Buddybot"), in modo da sapere che la mia richiesta non è stata elaborata e poter eventualmente riprovare".


==== UC3.2, Visualizzazione errore risposta troppo lunga
  *Attori coinvolti*: 
  - Primari:
    - #glossary("User").
  - Secondari:
    - #glossary("Backend").

  *Precondizioni*
  - L'interfaccia utente è pronta all'interazione con l'utente;
  - L'utente ha scritto la propria domanda nel campo di input dedicato.

  *Postcondizioni*
  - L'interfaccia utente viene aggiornata con un messaggio di errore che informa l'utente che la risposta da generare per quella domanda è troppo lunga e quindi di riprovare con una domanda più specifica.

  *Scenario principale*
  - L'utente dopo aver scritto la propria domanda, preme il tasto di invio;
  - L'interfaccia utente invia la richiesta dell'utente al #glossary("backend") per generare una risposta alla domanda;
  - La generazione della risposta si interrompe perchè la risposta ha superato la lunghezza massima consentita;
  - L'interfaccia utente viene aggiornata con un messaggio di errore che informa l'utente che la risposta da generare per quella domanda è troppo lunga e quindi di riprovare con una domanda più specifica.
  *User story associata*
  - "Come utente voglio essere informato tramite un messaggio di errore chiaro e comprensibile se la risposta da generare per quella domanda è troppo lunga così da poter riprovare con una domanda più specifica".

==== UC3.3, Visualizzazione errore domanda troppo lunga
  *Attori coinvolti*: 
  - Primari:
    - #glossary("User").

  *Precondizioni*
  - L'interfaccia utente è pronta all'interazione con l'utente;
  - L'utente ha scritto la propria domanda nel campo di input dedicato.

  *Postcondizioni*
  - L'interfaccia utente viene aggiornata con un messaggio di errore che informa l'utente che la domanda è troppo lunga e quindi di riprovare con una domanda più specifica.
  *Scenario principale*
  - L'utente dopo aver scritto la propria domanda, preme il tasto di invio;
  - L'interfaccia utente controlla la lunghezza della domanda;
  - La lunghezza della domanda supera la lunghezza massima consentita;
  - L'interfaccia utente viene aggiornata con un messaggio di errore che informa l'utente che la domanda è troppo lunga e quindi di riprovare con una domanda più specifica.
  *User story associata*
  - "Come utente voglio essere informato tramite un messaggio di errore chiaro e comprensibile se la domanda è troppo lunga così da poter riprovare con una domanda più specifica".

#pagebreak()
=== UC4, Invio richiesta con domanda dell'utente
  #figure(
    image(ar.diagUC_elab_domanda, width: 42em, fit: "contain"),
    caption: "Diagramma UC4, Invio richiesta con domanda dell'utente",
  )
    *Attori coinvolti*:
    - Primari:
      - #glossary("User Interface") .
    - Secondari:
      - #glossary("Jira") ;
      - #glossary("Github") ;
      - #glossary("Confluence") ;
      - #glossary("LLM") . 

    *Precondizioni*
    - La UI e il #glossary("backend") di #glossary("Buddybot") comunicano correttamente tramite una connessione stabile e funzionante;
    - La User Interface ha acquisito una domanda dall'utente;
    - Il #glossary("backend") ha accesso ai seguenti dati provenienti dalle fonti #glossary("Jira"), #glossary("Github"), #glossary("Confluence"):
      - #glossary("Github"):
        - Nome della repository;
        - Descrizione della repository;
        - Data di creazione della repository;
        - Ultima data di aggiornamento della repository;
        - Linguaggio principale della repository;
        - Messaggio dell'ultimo commit;
        - Hash dell'ultimo commit;
        - Data e ora dell'ultimo commit;
        - Branch associato all'ultimo commit;
        - File modificati nell'ultimo commit;
        - Autore dell'ultimo commit;
        - Lista Pull request attive e chiuse;
        - Titolo e descrizione delle Pull request;
        - Stato delle Pull request;
        - Assegnatario delle Pull request;
        - Reviewers delle Pull request;
        - Commenti e discussioni delle Pull request;
        - File modificati nelle Pull request;
        - Branch di origine e destinazione delle Pull request;
        - Stato dei workflow di GitHub Action;
        - Ultimo workflow eseguito;
        - Log dei workflow;
        - Trigger dei workflow;
        - Durata dei workflow.
      - #glossary("Confluence"):
        - Id di una pagina;
        - Titolo di una pagina;
        - Status di una pagina;
        - Autore di una pagina;
        - Owner di una pagina;
        - Spazio di una pagina;
        - Body di una pagina.
      - #glossary("Jira"):
        - Nome (titolo) di un ticket;
        - Assegnatario di un ticket;
        - Stato di un ticket;
        - Attività principale collegata a un ticket;
        - Sprint di appartenenza di un ticket;
        - Story point estimate di un ticket;
        - Richiedente/creatore di un ticket;
        - Priorità;
        - Data di scadenza;
        - Commenti del ticket;
        - Ticket collegati.
      


*Postcondizioni*
- Il #glossary("backend") genera e restituisce una risposta accurata in linguaggio naturale alla domanda ricevuta dall'interfaccia utente.
- La domanda dell'utente e la relativa risposta vengono salvate nello storico della chat per future consultazioni.
  
*Scenario principale*
- La UI invia al #glossary("backend") di #glossary("Buddybot") la domanda formulata dall'utente;
- Il #glossary("backend") analizza la domanda e recupera tutti i documenti rilevanti di #glossary("Jira"), #glossary("GitHub") e #glossary("Confluence"), necessari per elaborare una risposta accurata;
- La domanda dell'utente, insieme ai documenti recuperati, viene inviata al #glossary("LLM") per la generazione della risposta in linguaggio naturale;
- La risposta generata dal #glossary("LLM") insieme alla data e ora dell'ultimo aggiornamento dei dati utilizzati per la generazione della risposta viene restituita dal #glossary("backend") alla User Interface;
- La domanda dell'utente e la risposta generata vengono aggiunte allo storico della chat, rendendole disponibili per la successiva visualizzazione.

*Estensioni*
- UC4.2, Errore durante la generazione della risposta.
- UC4.3, Errore risposta troppo lunga;
*Inclusioni*
- UC4.4, Richiesta della data e ora dell'ultimo aggiornamento dei dati;
*Generalizzazioni*
- UC4.1, Invio richiesta con domanda fuori contesto;

*User story associata*
  - "Come utente di #glossary("Buddybot"), voglio poter porre domande attraverso l'interfaccia utente e ricevere risposte accurate in linguaggio naturale, basate sui documenti rilevanti recuperati da #glossary("Jira"), #glossary("GitHub") e #glossary("Confluence"), così da ottenere informazioni utili e coerenti con il contesto del sistema. Voglio inoltre poter visualizzare la data e l'ora dell'ultimo aggiornamento dei dati utilizzati per la generazione della risposta cosi da poter sapere se i dati sono stati aggiornati recentemente o meno."

  ==== UC4.1, Invio richiesta con domanda fuori contesto
  *Attori coinvolti*:
  - Primari:
    - #glossary("User Interface") .
  - Secondari:
    - #glossary("LLM") .
    - #glossary("Jira") .
    - #glossary("Github") .
    - #glossary("Confluence") .

  *Precondizioni*
    - La user interface e il #glossary("backend") di #glossary("Buddybot") comunicano correttamente tramite una connessione stabile e funzionante;
    - L'interfaccia utente ha acquisito una domanda dall'utente.

  *Postcondizioni*
  - Il #glossary("backend") genera e restituisce una risposta che informa che non è stato possibile rispondere alla domanda in quanto non il linea con il contesto di #glossary("Buddybot").
  - La domanda dell'utente e la relativa risposta vengono salvate nello storico della chat per future consultazioni.  

  *Scenario principale*
  - L'interfaccia utente invia al #glossary("backend") di Buddybot la domanda formulata dall'utente;
  - Il #glossary("backend") analizza la domanda e tenta di recuperare documenti rilevanti di #glossary("Jira"), #glossary("GitHub") e #glossary("Confluence"). Tuttavia, non trova documenti correlati poiché la domanda è fuori dal contesto operativo di #glossary("Buddybot");
  - La domanda dell'utente viene inoltrata al #glossary("LLM") per generare una risposta in linguaggio naturale che informa l'utente che la domanda non è pertinente al contesto;
  - La risposta generata dal #glossary("LLM") viene restituita dal #glossary("backend") all'interfaccia utente;
  - La domanda e la risposta vengono archiviate nello storico della chat, rendendole disponibili per future visualizzazioni.
  *User story associata*
  - "Come utente di #glossary("Buddybot"), voglio ricevere una risposta chiara e in linguaggio naturale quando pongo una domanda fuori contesto, in modo da essere informato che la mia richiesta non è pertinente al sistema e capire meglio i limiti del suo ambito operativo".

==== UC4.2, Errore durante la generazione della risposta
  *Attori coinvolti*:
  - Primari:
    - #glossary("User Interface") .
  - Secondari:
    - #glossary("LLM") .
    - #glossary("Jira") .
    - #glossary("Github") .
    - #glossary("Confluence") .

  *Precondizioni*
    - La user interface e il #glossary("backend") di #glossary("Buddybot") comunicano correttamente tramite una connessione stabile e funzionante;
    - L'interfaccia utente ha acquisito una domanda dall'utente. 

  *Postcondizioni*
  - Il #glossary("backend") ritorna un errore informando che non è stato possibile generare la risposta alla domanda richiesta.

  *Scenario principale*
  - L'interfaccia utente invia al #glossary("backend") di #glossary("Buddybot") la domanda formulata dall'utente.
  - Il #glossary("backend") tenta di analizzare la domanda, di recuperare i documenti pertinenti e di generare una risposta in linguaggio naturale ma non riesce a terminare per un errore durante uno di questi processi;
  - Il #glossary("backend") ritorna un errore generico informando l'interfaccia utente che non è stato possibile generare la risposta alla domanda richiesta.
  *User story associata*
  - "Come utente voglio essere informato in modo chiaro e immediato nel caso in cui BuddyBot non riesca a generare una risposta alla mia domanda, così da poter eventualmente riformulare la domanda o contattare un supporto alternativo".


==== UC4.3, Errore risposta troppo lunga
  *Attori coinvolti*:
  - Primari:
    - #glossary("User Interface") .
  - Secondari:
    - #glossary("LLM") .
    - #glossary("Jira") .
    - #glossary("Github") .
    - #glossary("Confluence") .

  *Precondizioni*
    - La user interface e il #glossary("backend") di #glossary("Buddybot") comunicano correttamente tramite una connessione stabile e funzionante;
    - L'interfaccia utente ha acquisito una domanda dall'utente. 

  *Postcondizioni*
  - Il #glossary("backend") ritorna un errore informando che non è stato possibile generare la risposta alla domanda richiesta in quanto la risposta supererebbe la lunghezza massima consentita.

  *Scenario principale*
  - L'interfaccia utente invia al #glossary("backend") di #glossary("Buddybot") la domanda formulata dall'utente;
  - Il #glossary("backend") analizza la domanda e recupera tutti i documenti rilevanti di #glossary("Jira"), #glossary("GitHub") e #glossary("Confluence"), necessari per elaborare una risposta accurata;
  - La domanda dell'utente, insieme ai documenti recuperati, viene inviata al #glossary("LLM") per la generazione della risposta in linguaggio naturale;
  - La generazione della risposta si interrompe perchè la risposta ha superato la lunghezza massima consentita;
  - Il #glossary("backend") ritorna un errore informando che non è stato possibile generare la risposta alla domanda richiesta in quanto la risposta supererebbe la lunghezza massima consentita.
  *User story associata*
  - "Come utente voglio essere informato in modo chiaro e immediato nel caso in cui BuddyBot non riesca a generare una risposta alla mia domanda perchè la risposta supererebbe la lunghezza massima consentita in modo da poter eventualmente riformulare la domanda".


#pagebreak()


= Requisiti <requisiti>
In questa sezione vengono esposti i requisiti esposti nel capitolato e individuati a seguito delle analisi effettuate dal gruppo e dai #glossary("casi d'uso (UC)") esaminati in precedenza. Per garantire la maggior chiarezza, i requisiti verranno identificati da un codice univoco con questa struttura:

#align(center)[*`R[Tipo]-[Identificativo]`*]


Dove:

- *Tipo*: indica il tipo di requisito, che può essere funzionale, di qualità o di vincolo.

  I tipi sono indicati da una sigla:

  - *`F`* per i requisiti funzionali;
  - *`Q`* per i requisiti di qualità;
  - *`V`* per i requisiti di vincolo.

- *Identificativo*: rappresenta il numero progressivo del requisito;

Inoltre, in ogni tabella saranno indicate la descrizione del requisito in oggetto, la sua fonte (capitolato o caso d'uso) e la sua priorità.

Si ricorda che come indicato nelle `Norme di Progetto`, i requisiti vengono classificati con 3 livelli di priorità:

- *Obbligatorio*: requisito irrinunciabile per il committente;
- *Desiderabile*: requisito che porta valore aggiunto al prodotto ma non è strettamente necessario;
- *Opzionale*: requisito che può essere soddisfatto o meno senza che il prodotto risulti compromesso.

== Requisiti Funzionali
I #glossary("Requisiti Funzionali") definiscono cosa il sistema deve fare, ovvero le sue funzionalità principali e i comportamenti attesi, concentrandosi quindi sulle operazioni che gli utenti/attori devono poter eseguire.

Si osservi che, come indicato sopra, i requisiti funzionali verranno identificati con i seguenti codici:


#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 {
    rgb(209, 197, 174)
  } else if calc.odd(y) {
    luma(88.1%)
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
    columns: (auto, auto, auto, auto),
    [Codice], [Descrizione], [Fonti], [Priorità],
    [*RF-001*],
    [L'utente deve accedere all'applicazione senza necessità di autenticazione],
    [Capitolato],
    [Obbligatorio],

    [*RF-002*], [Il sistema deve reperire le informazioni da GitHub], [Capitolato], [Obbligatorio],
    [*RF-003*], [Il sistema deve reperire le informazioni da Confluence], [Capitolato], [Obbligatorio],
    [*RF-004*], [Il sistema deve reperire le informazioni da Jira], [Capitolato], [Obbligatorio],
    [*RF-005*], [L'utente deve poter visualizzare lo storico della chat], [UC1], [Obbligatorio],
    [*RF-006*],
    [L'utente deve visualizzare un messaggio informativo che spiega che non ci sono messaggi nello storico],
    [UC1.1],
    [Obbligatorio],

    [*RF-007*],
    [L'utente deve visualizzare un messaggio di errore se il sistema non riesce a recuperare lo storico],
    [UC1.2],
    [Obbligatorio],

    [*RF-008*],
    [L'utente deve visualizzare un messaggio di errore se il sistema non riesce a connettersi],
    [UC1.3],
    [Obbligatorio],

    [*RF-009*],
    [L'utente deve visualizzare un messaggio di errore se il backend non è disponibile],
    [UC1.5],
    [Obbligatorio],

    [*RF-010*],
    [L'utente deve visualizzare per ogni messaggio: il contenuto, la data e ora di invio, e il mittente],
    [UC1.4, UC1.4.1, UC1.4.2, UC1.4.3],
    [Obbligatorio],

    [*RF-011*],
    [L'utente deve poter scrivere una domanda in linguaggio naturale],
    [UC2],
    [Obbligatorio],

    [*RF-012*],
    [L'utente deve poter inviare la domanda scritta al sistema],
    [UC3],
    [Obbligatorio],
    
    [*RF-013*],
    [L'utente deve poter visualizzare un messagio di errore se si è verificato un errore generico nella generazione della risposta da parte del #glossary("backend")],
    [UC3.1],
    [Obbligatorio],
    
    [*RF-014*],
    [L'utente deve poter visualizzare un messagio di errore se la risposta non è stata generata perchè supererebbe la lunghezza massima consentita],
    [UC3.2],
    [Obbligatorio],

    [*RF-015*],
    [L'utente deve poter visualizzare un messagio di errore se la domanda supera la lunghezza massima consentita],
    [UC3.3],
    [Obbligatorio],

    [*RF-016*],
    [Il sistema deve elaborare la domanda dell'utente e generare una risposta appropriata],
    [UC4],
    [Obbligatorio],

    [*RF-017*],
    [Il sistema deve recuperare da GitHub le seguenti informazioni:
    - Nome della repository
    - Descrizione della repository
    - Data di creazione della repository
    - Ultima data di aggiornamento della repository
    - Linguaggio principale della repository
    - Messaggio dell'ultimo commit
    - Hash dell'ultimo commit
    - Data e ora dell'ultimo commit
    - Branch associato all'ultimo commit
    - File modificati nell'ultimo commit
    - Autore dell'ultimo commit
    - Lista Pull request attive e chiuse
    - Titolo e descrizione delle Pull request
    - Stato delle Pull request
    - Assegnatario delle Pull request
    - Reviewers delle Pull request
    - Commenti e discussioni delle Pull request
    - File modificati nelle Pull request
    - Branch di origine e destinazione delle Pull request
    - Stato dei workflow di GitHub Action
    - Ultimo workflow eseguito
    - Log dei workflow
    - Trigger dei workflow
    - Durata dei workflow],
    [UC4],
    [Obbligatorio],

    [*RF-018*],
    [Il sistema deve recuperare da Confluence le seguenti informazioni:
    - Id di una pagina
    - Titolo di una pagina
    - Status di una pagina
    - Autore di una pagina
    - Owner di una pagina
    - Spazio di una pagina
    - Body di una pagina],
    [UC4],
    [Obbligatorio],

    [*RF-019*],
    [Il sistema deve recuperare da Jira le seguenti informazioni:
    - Nome (titolo) di un ticket
    - Assegnatario di un ticket
    - Stato di un ticket
    - Attività principale collegata a un ticket
    - Sprint di appartenenza di un ticket
    - Story point estimate di un ticket
    - Richiedente/creatore di un ticket
    - Priorità
    - Data di scadenza
    - Commenti del ticket
    - Ticket collegati],
    [UC4],
    [Obbligatorio],

    [*RF-020*],
    [Il sistema deve gestire le domande fuori contesto con una risposta appropriata],
    [UC4.1],
    [Obbligatorio],

    [*RF-021*],
    [Il sistema deve informare l'utente in caso di errore durante la generazione della risposta],
    [UC4.2],
    [Obbligatorio],

    [*RF-022*],
    [Il sistema deve informare l'utente se la risposta supera la lunghezza massima consentita],
    [UC4.3],
    [Obbligatorio],

    [*RF-023*],
    [Il sistema deve fornire la data e l'ora dell'ultimo aggiornamento dei dati utilizzati],
    [UC4],
    [Obbligatorio],


  ),
  caption: "Requisiti Funzionali",
)


== Requisiti di Qualità
I #glossary("Requisiti di Qualità") riguardano *come* il sistema deve funzionare, definendo quindi caratteristiche cruciali per garantire un ottima "#glossary("User Experience")", soddisfacendo le sue esigenze.

Come i requisiti funzionali, i requisiti di qualità seguono la struttura definita al #link(<requisiti>, "Capitolo 4").




#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 {
    rgb(209, 197, 174)
  } else if calc.odd(y) {
    luma(88.1%)
  } else {
    white
  },
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
    columns: (auto, auto, auto, auto),
    [Codice], [Descrizione], [Fonti], [Priorità],
    [RQO-001], [Occorre realizzare e consegnare un documento di analisi dei requisiti con un diagramma dei casi d'uso in formato UML.], [Capitolato], [Obbligatorio],
    [RQO-002], [Occorre realizzare e consegnare della documentazione tecnica includendo descrizioni delle architetture usate, spiegazioni del funzionamento del codice e delle API usate.], [Capitolato], [Obbligatorio],
    [RQO-003], [Occorre che il codice sorgente sia presente in un singolo repository su Github accessibile all'azienda.], [Capitolato], [Obbligatorio],
    [RQO-004], [Occorre usufruire di un sistema di bug reporting per segnalare e tracciare eventuali errori o malfunzionamenti riscontrati nell'applicazione.], [Capitolato], [Obbligatorio],
  ),
  caption: "Requisiti di Qualità",
)

== Requisiti di Vincolo
I #glossary("Requisiti di Vincolo") definiscono i limiti tecnici e/o progettuali entro i quali il sistema deve essere sviluppato.

Anche i requisiti di vincolo seguono la struttura del #link(<requisiti>, "Capitolo 4")


#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 {
    rgb(209, 197, 174)
  } else if calc.odd(y) {
    luma(88.1%)
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
    columns: (auto, auto, auto, auto),
    [Codice], [Descrizione], [Fonti], [Priorità],
    [RVO-001], [Occorre che l'applicazione venga sviluppata suddivisa in frontend e backend], [Capitolato], [Obbligatorio],
    [RVO-002], [Occorre che vengano raccolte le informazioni usando API di terze parti da #glossary("Jira"),#glossary("Github") e #glossary("Confluence")], [Capitolato],[Obbligatorio],
    [RVO-003], [Occorre che venga creata una suite di test automatizzati per garantire il corretto funzionamento del codice], [Capitolato],[Obbligatorio],
    [RVO-004], [Occorre che sia assicurata una coverage adeguata del codice, per garantire che la maggior parte delle funzionalità siano testate e prive di bug.], [Capitolato],[Obbligatorio],
    [RVD-001],[E' desiderabile usare NodeJS o NestJS],[Capitolato],[Desiderabile],
    [RVD-002],[E' desiderabile usare Langchain],[Capitolato],[Desiderabile],
    [RVD-003],[E' desiderabile usare OpenAI],[Capitolato],[Desiderabile],
    [RVD-004],[E' desiderabile usare Angular],[Capitolato],[Desiderabile],
  ),
  caption: "Requisiti di Vincolo",
)

== Tracciamento
Il #glossary("Tracciamento") è il processo che mira a collegare ogni requisito del progetto alle sue "fonti" di origine (capitolato, incontri con l'azienda, incontri interni) e alle sue implementazioni, come i #glossary("Casi d'Uso (UC)").

#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 {
    rgb(209, 197, 174)
  } else if calc.odd(y) {
    luma(88.1%)
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
    columns: (6cm, 6cm),
    [Fonte], [Requisito],
    [Capitolato], [RF-001],
    [Capitolato], [RF-002],
    [Capitolato], [RF-003],
    [Capitolato], [RF-004],
    [UC1], [RF-005],
    [UC1.1], [RF-006],
    [UC1.2], [RF-007],
    [UC1.3], [RF-008],
    [UC1.5], [RF-009],
    [UC1.4, UC1.4.1, UC1.4.2, UC1.4.3], [RF-010],
    [UC2], [RF-011],
    [UC3], [RF-012],
    [UC3.1], [RF-013],
    [UC3.2], [RF-014],
    [UC3.3], [RF-015],
    [UC4], [RF-016],
    [UC4], [RF-017],
    [UC4], [RF-018],
    [UC4], [RF-019],
    [UC4.1], [RF-020],
    [UC4.2], [RF-021],
    [UC4.3], [RF-022],
    [UC4], [RF-023],
    [Capitolato], [RQO-001],
    [Capitolato], [RQO-002],
    [Capitolato], [RQO-003],
    [Capitolato], [RQO-004],
    [Capitolato], [RVO-001],
    [Capitolato], [RVO-002],
    [Capitolato], [RVO-003],
    [Capitolato], [RVO-004],
    [Capitolato], [RVD-001],
    [Capitolato], [RVD-002],
    [Capitolato], [RVD-003],
    [Capitolato], [RVD-004],
  ),
  caption: "Tracciamento",
)

== Riepilogo
#set table(
  stroke: 1pt,
  fill: (x, y) => if y == 0 {
    rgb(209, 197, 174)
  } else if calc.odd(y) {
    luma(88.1%)
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
    columns: (auto, auto, auto, auto),
    [Tipologia], [Obbligatorio], [Desiderabile], [Totale],
    [Funtionali], [23], [0], [23],
    [Qualità], [5], [0], [5],
    [Vincolo], [4], [4], [8],
  ),
  caption: "Riepilogo",
)
Il totale dei Requisiti è: 36.