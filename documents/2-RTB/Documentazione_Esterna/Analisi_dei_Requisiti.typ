#import "/template/document.typ": *

#show: project.with(
  title: "Analisi dei Requisiti",
  managers: (p.belenkov, p.mahdi),
  recipients: (p.vardanega, p.cardin, p.azzurro,),
  changelog: (
    "0.0.5",
    "2024-12-02",
    (p.santi),
    (p.mahdi),
    "Inseriti primi UC, sistemate immagini e tabelle",
    "0.0.4",
    "2024-11-25",
    (p.santi),
    (p.mahdi),
    "Introdotte sezioni Casi d'Uso (3) + Requisiti (4), impaginazione tabelle",
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

#pagebreak()
/*
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
    caption: "Diagramma UC1, consultazione Jira"
  )
]

*Scenario principale*
- L'utente interagisce con #glossary("BuddyBot") tramite l'interfaccia chat, ponendo una domanda 
  - esempio: "Quali #glossary("issue") sono assegnate a me per questa settimana?"
- #glossary("BuddyBot") autentica la connessione con Jira 

- Il sistema invia una richiesta alle #glossary("API") di #glossary("Jira") per estrarre i dati 
  - nel nostro esempio, vengono quindi estratti dati relativi alle #glossary("issue") assegnate all'utente con scadenza entro la settimana corrente.
- #glossary("BuddyBot") elabora i dati ricevuti, genera una risposta che verrà fornita all'utente come un elenco ordinato e leggibile (linguaggio naturale).
  - nel caso preso in esame, verrà fornito un elenco dettagliato delle issue, comprensivo di titoli, priorità, date di scadenza e stati.

*Inclusioni*
- Reperimento delle informazioni (#glossary("API"))
- Elaborazione dei dati ricevuti (#glossary("LLM"))
*/
=== UC1, Consultazione Jira
*Attori coinvolti*: #glossary("User")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.

*Postcondizioni*
- La richiesta viene inoltrata correttamente alle #glossary("API") di #glossary("Jira").

*Scenario principale*
- L'utente apre l'interfaccia di #glossary("BuddyBot") e pone una domanda in linguaggio naturale
- Il sistema interpreta la domanda e tale richiesta  viene inviata al modulo di connessione con le #glossary("API") di #glossary("Jira") con il fine di estrarre i dati utili.

*Generalizzazioni*
- UC1.1, "Ritorno di un ticket e dettagli"
- UC1.2, "Visualizzazione Backlog"
- UC1.3, "Visualizzazione attività Timeline"
- UC1.4, "Visualizzazione della Board"

#box(height: 3em, width: auto, fill: none)[]  // spazio vuoto per separare text - img

#figure(
  image(ar.diagUC1, width: 42em, fit: "contain"),
    caption: "Diagramma UC1, consultazione Jira"
)

#pagebreak()

==== UC1.1, Ritorno di un ticket e dettagli
*Attori coinvolti*: #glossary("User")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.
- L'informazione richiesta dall'utente è presente in #glossary("Jira").

*Postcondizioni*
- L'utente visualizza i dettagli del ticket richiesto in un formato testuale leggibile (linguaggio naturale).

*Scenario principale*
- L'utente interpella #glossary("BuddyBot") per ottenere maggiori informazioni in merito a un ticket.
  - Si osservi che un utente può effettuare una ricerca generica ma anche specifica secondo certi criteri: "ID", "Tipo", "Assegnatario", "Stato", "Data/Scadenza"...
  - esempio: "Mostrami i ticket di tipo "task" ancora da completare."
  - esempio: "Ritorna i ticket che hanno scadenza 15/12/2024."
- Il sistema, dopo aver interpretato la domanda, invia una richiesta alle #glossary("API") di #glossary("Jira") per recuperare i dettagli del ticket richiesto.
- #glossary("LLM") elabora le informazioni ottenute per fornire all'utente una risposta chiara e comprensibile.

=== UC1.2, Visualizzazione Backlog
*Attori coinvolti*: #glossary("User")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.
- L'informazione richiesta dall'utente è presente in #glossary("Jira").

*Postcondizioni*
- L'utente riceve una lista, in formato chiaro e leggibile, dei ticket presenti nel #glossary("Backlog") del progetto richiesto.

*Scenario principale*
- L'utente apre l'interfaccia di #glossary("BuddyBot") e pone una domanda riguardante la sezione #glossary("Backlog") di #glossary("Jira").
  - esempio: "Mostrami il #glossary("Backlog") del progetto 'BuddyBot-MVP'."
- Il sistema interpreta la richiesta e la inoltra alle #glossary("API") di #glossary("Jira") per recuperare i ticket presenti nel #glossary("Backlog") del progetto richiesto.
- #glossary("LLM") elabora la risposta, fornendo all'utente una visualizzazione del #glossary("Backlog") richiesto (e dei suoi ticket) in linguaggio naturale.

*Estensioni*
- UC1.2.1 - Vista personalizzabile - attività Backlog.

==== UC1.2.1, Vista personalizzabile - attività Backlog
*Attori coinvolti*: #glossary("User")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.
- L'informazione richiesta dall'utente è presente in #glossary("Jira").

*Postcondizioni*
- Viene fornita una risposta con il #glossary("Backlog") del progetto richiesto, contenente le attività disposte in ordine in base ai criteri richiesti dall'utente.

*Scenario principale*
- L'utente richiede di "filtrare" i ticket di un determinato #glossary("Backlog") secondo certi parametri: "Assegnatario", "Stato", "Tipo", "Sprint"...
  - esempio: "Mostrami il #glossary("Backlog") dello Sprint 3 con i ticket assegnati ad Andrea Santi."
  - esempio: "Mostrami il #glossary("Backlog") con i ticket di tipo "Bug" ancora da completare."
- Il sistema interpreta la richiesta e la inoltra alle #glossary("API") di #glossary("Jira") per recuperare le informazioni utili.
- #glossary("LLM") elabora la risposta, fornendo all'utente una visualizzazione filtrata del #glossary("Backlog") richiesto (e dei suoi ticket) in linguaggio naturale.

#pagebreak()

=== UC1.3, Visualizzazione attività Timeline
*Attori coinvolti*: #glossary("User")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.
- L'informazione richiesta dall'utente è presente in #glossary("Jira").

*Postcondizioni*
- L'utente riceve una panoramica leggibile della #glossary("Timeline") del progetto, comprendente attività, scadenze e stato.

*Scenario principale*
- L'utente interagisce con l'interfaccia di #glossary("BuddyBot") e richiede la #glossary("Timeline") di un determinato progetto.
  - esempio: "Mostrami la #glossary("Timeline") del progetto 'BuddyBot-MVP'"
- Il sistema interpreta la richiesta e la inoltra alle #glossary("API") di #glossary("Jira") per individuare e reperire le attività (ticket) della #glossary("Timeline") richiesta.
- Una volta ottenute le informazioni, #glossary("LLM") elabora la risposta, restituendo ticket e i suoi dati (assegnatario, titolo, stato, date).

*Generalizzazioni*
- UC1.3.1 - Vista personalizzabile - Timeline

==== UC1.3.1, Vista personalizzabile - Timeline
*Attori coinvolti*: #glossary("User")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.
- L'informazione richiesta dall'utente è presente in #glossary("Jira").

*Postcondizioni*
- L'utente riceve una vista della timeline personalizzata in base ai criteri richiesti.

*Scenario principale*
- L'utente pone una domanda al #glossary("Chatbot"), richiedendo di poter ottenere informazioni in merito a una determinata #glossary("Timeline") secondo determinati criteri/filtri...
  - esempio: "Mostrami la #glossary("Timeline") del progetto 'BuddyBot-MVP' con i ticket assegnati a Matteo Campagnaro ancora da completare."
  - esempio: "Mostrami la #glossary("Timeline") del progetto 'BuddyBot-MVP' con i ticket con scadenza 15/12/2024."
- Il sistema interpreta la richiesta e la inoltra alle #glossary("API") di #glossary("Jira") per recuperare i ticket presenti nella #glossary("Timeline") del progetto richiesto, secondo i criteri specificati dall'utente.
- #glossary("LLM") elabora la risposta, fornendo all'utente una visualizzazione della #glossary("Timeline") richiesta (e dei suoi ticket) in linguaggio naturale.

#pagebreak()

=== UC1.4, Visualizzazione Board
*Attori coinvolti*: #glossary("User")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.
- L'informazione richiesta dall'utente è presente in #glossary("Jira").

*Postcondizioni*
- L'utente riceve una risposta chiara in linguaggio naturale dello stato della #glossary("Board") del progetto, mostrando ticket "da completare", "in corso", "completati"...

*Scenario principale*
- L'utente interagisce con l'interfaccia di #glossary("BuddyBot") e richiede la #glossary("Timeline") di un determinato progetto.
  - esempio: "Mostrami i ticket della #glossary("Board") del progetto 'BuddyBot-MVP'"
- Il sistema interpreta la richiesta e la inoltra alle #glossary("API") di #glossary("Jira") per reperire le attività della #glossary("Board") richiesta.
- #glossary("LLM") elabora la risposta, restituendo i ticket della #glossary("Board") richiesta.

*Generalizzazione*
- UC1.4.1, Vista personalizzabile - Board

==== UC1.4.1, Vista personalizzabile - Board
*Attori coinvolti*: #glossary("User")

*Precondizioni*
- #glossary("BuddyBot") è operativo e accessibile all'utente.
- Le #glossary("API") di #glossary("Jira") sono disponibili e correttamente configurate per garantire il recupero delle informazioni.
- L'informazione richiesta dall'utente è presente in #glossary("Jira").

*Postcondizioni*
- L'utente riceve una risposta chiara in linguaggio naturale dello stato della #glossary("Board") del progetto, mostrando ticket secondo i criteri specificati dall'utente (assegnatario, stato, tipo, sprint).
  - esempio: "Mostrami la #glossary("Board") del progetto 'BuddyBot-MVP', con le attività "da completare" assegnate ad Orlando Ferazzani."
  - esempio: "Mostrami la #glossary("Board") del progetto 'BuddyBot-MVP, con le attività "in corso" del secondo sprint."
- Il sistema interpreta la richiesta e la inoltra alle #glossary("API") di #glossary("Jira") per recuperare le attività richieste secondo i criteri forniti dall'utente.
- #glossary("LLM") elabora la risposta, restituendo i ticket richiesti della #glossary("Board").

//=== UC2, Consultazione GitHub
#columns(2, gutter: 3cm)[
  === UC2, Consultazione GitHub
  *Attori coinvolti*: #glossary("User"), #glossary("LLM") (attore esterno)

  *Precondizioni*
    - Le #glossary("API") di #glossary("GitHub") sono disponibili e configurate correttamente.

  *Postcondizioni*
    - Le informazioni richieste vengono presentate correttamente all'utente.

  *Scenario principale*
  - L'utente interagisce con #glossary("BuddyBot") tramite l'interfaccia chat, ponendo una domanda 
  #colbreak()
   #figure(
    image(ar.diagUC2, width: 24em, fit: "contain"),
    caption: "Diagramma UC2, consultazione GitHub"
  )
]
- esempio: "Quali sono stati i cambiamenti nell'ultimo #glossary("commit") sul #glossary("branch") master?"
- #glossary("BuddyBot") autentica la connessione con #glossary("GitHub") e invia una richiesta all'#glossary("API") per recuperare i dettagli dell'ultimo #glossary("commit") sul #glossary("branch") specificato.

- I dettagli ricevuti vengono elaborati per generare una risposta e, nel nostro esempio, sintetizzerà: file modificati, descrizione delle modifiche, informazioni generali riguardanti il #glossary("commit") (autore, data...).
- #glossary("BuddyBot") elabora i dati ricevuti, genera una risposta che verrà fornita all'utente in un formato ordinato e leggibile (linguaggio naturale).

*Inclusioni*
- Reperimento delle informazioni (#glossary("API"))
- Elaborazione dei dati ricevuti (#glossary("LLM"))

=== UC3, Consultazione Confluence
#columns(2, gutter: 2cm)[
  #box[
  *Attori coinvolti*: #glossary("User"), #glossary("LLM") (attore esterno).

  *Precondizioni*:
  - Le #glossary("API") di #glossary("Confluence") sono disponibili e configurate correttamente.
  *Postcondizioni*:  
  - L'utente riceve un link diretto al documento richiesto o un messaggio che segnala l'assenza del documento.
  *Scenario principale*
  - L'utente apre l'interfaccia di #glossary("BuddyBot") e pone una domanda/richiesta.
  - esempio: "Mostrami l'ultima guida aggiornata per il deploy."
  - #glossary("LLM") interpreta la domanda dell'utente e invia una richiesta alle #glossary("API") di #glossary("Confluence") per ricercare le informazioni sulla base dei dettagli forniti dall'utente.
  ]
  #colbreak()
  #figure(
    image(ar.diagUC3, width: 25em, fit: "contain"),
    caption: "Diagramma UC3, consultazione Confluence"
  )
]

- Dopo aver ottenuto le informazioni necessarie, #glossary("LLM") le elabora per fornire una risposta chiara, leggibile e comprensibile all'utente, facilitando a quest'ultimo l'accesso alle informazione.

*Inclusioni*
- Reperimento delle informazioni (#glossary("API"))
- Elaborazione dei dati ricevuti (#glossary("LLM"))


#pagebreak()

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
  fill: (x, y) =>
    if y == 0 { rgb(209, 197, 174) },
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
  caption: "Requisiti Funzionali"
)


== Requisiti di Qualità
I #glossary("Requisiti di Qualità") riguardano *come* il sistema deve funzionare, definendo quindi caratteristiche cruciali per garantire un ottima "#glossary("User Experience")", soddisfacendo le sue esigenze.

Si osservi che, per tali requisiti, verranno inseriti i seguenti codici:
- RQO-x: Requisito di Qualità Obbligatorio numero "x"
- RQD-x: Requisito di Qualità Desiderabile numero "x"

#set table(
  stroke: 1pt,
  fill: (x, y) =>
    if y == 0 { rgb(209, 197, 174) },
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
  caption: "Requisiti di Qualità"
)

== Requisiti di Vincolo
I #glossary("Requisiti di Vincolo") definiscono i limiti tecnici e/o progettuali entro i quali il sistema deve essere sviluppato.

Si osservi che, per tali requisiti, verranno inseriti i seguenti codici:
- RVO-x: Requisito di Vincolo Obbligatorio numero "x"
- RVD-x: Requisito di Vincolo Desiderabile numero "x"

#set table(
  stroke: 1pt,
  fill: (x, y) =>
    if y == 0 { rgb(209, 197, 174) },
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
  caption: "Requisiti di Vincolo"
)

== Tracciamento
Il #glossary("Tracciamento") è il processo che mira a collegare ogni requisito del progetto alle sue "fonti" di origine (capitolato, incontri con l'azienda, incontri interni) e alle sue implementazioni, come i #glossary("Casi d'Uso (UC)").

#set table(
  stroke: 1pt,
  fill: (x, y) =>
    if y == 0 { rgb(209, 197, 174) },
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
  caption: "Tracciamento"
)

== Riepilogo
#set table(
  stroke: 1pt,
  fill: (x, y) =>
    if y == 0 { rgb(209, 197, 174) },
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
  caption: "Riepilogo"
)
Il totale dei Requisiti è: //somma della colonna "totale" della tabella di cui sopra