#import "/template/document.typ": *

#show: project.with(
  title: "Specifica Tecnica",
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
        "0.0.X",
    "2025-04-04",
    (p.fracaro),
    (p.belenkov),
    [
      Aggiunta sezioni: Intorduzione microservizio Informazioni, Recupero informazioni dei dati da Jira e Recupero delle informazioni rilevanti basato su query dell'utente
    ],
    "0.0.1",
    "2025-02-27",
    (p.ferazzani),
    (p.mahdi),
    [
      Prima stesura documento
    ],
  ),
  show_images_list: true,
)

= *Introduzione*

== Scopo del documento
Il presente documento ha lo scopo di fungere da risorsa esaustiva per la spiegazione e conseguente comprensione degli aspetti tecnici del progetto #box(image(g.azzurro, width: 5em, height: auto)):
#figure(image(g.buddy, width: 10em, height: auto), caption: [Logo BuddyBot])

La sua finalità primaria è quella di fornire una panoramica dettagliata e approfondita delle scelte progettuali, architetturali e tecnologiche del sistema sviluppato. In particolare, si intende fornire un'analisi profonda estesa al livello di progettazione più basso, includendo spiegazione, definizione e motivazione delle scelte effettuate, e dei #glossary("design pattern") adottati.

Il documento ha quindi scopi molteplici:

- Motivare le scelte progettuali e di sviluppo adottate;
- Fungere da guida per il processo di sviluppo e manutenzione del sistema;
- Fornire una vista panoramica e monitorare la #glossary("Code Coverage") dei requisiti del progetto identificati nel documento `Analisi dei Requisiti` (visionabile #link("https://sweetenteam.github.io/docs/intro", "qui")); //link provvisorio.

L'adeguatezza e la completezza del documento (e del progetto) sono in costante evoluzione e miglioramento in base ai #glossary("feedback") ricevuti e sulla base dell'aggiornamento dei requisiti.

== Scopo del prodotto

L'obiettivo del progetto è la realizzazione di un #glossary("chatbot") sotto forma di #glossary("Web App") atto a fornire un supporto al team di #box(image(g.azzurro, width: 5em, height: auto)) nella gestione delle attività di un progetto in corso di sviluppo. Nella fattispecie, il chatbot utilizza delle #glossary("API") e un modello di #glossary("LLM") per, rispettivamente, reperire informazioni da sistemi esterni utilizzati dall'azienda (più specificatamente, Jira, GitHub e Confluence) e elaborare una risposta. Questa risposta può contenere del semplice testo, un link o un #glossary("code block"). Il chatbot ha una singola sessione per ogni utente, e può essere utilizzato da più utenti contemporaneamente.

Il team è confidente che questo genere di prodotto migliorerà il workflow del team di #box(image(g.azzurro, width: 5em, height: auto)), riducendo i tempi di risposta e migliorando la qualità del lavoro svolto.

== Miglioramenti e maturità

Questo documento è redatto con approccio incrementale e modificato nel tempo per riflettere l'andamento del progetto e le decisioni prese. In particolare, il documento è soggetto a modifiche in base ai feedback ricevuti e all'evoluzione dei requisiti del progetto. Per questo motivo, il documento non è considerabile definitivo, esaustivo e completo fino al raggiungimento di una versione stabile dello stesso (`1.0.0` o superiore).

== Glossario

Per evitare ambiguità e incomprensione riguardanti la terminologia tecnica utilizzata nel documento, viene redatto e adottato un Glossario contenente le definizioni dei termini tecnici utilizzati. Il Glossario è consultabile #link("https://sweetenteam.github.io/docs/RTB/glossario", "qui") e i termini presenti nel documento sono evidenziati con #glossary("questo stile").

== Riferimenti

=== Riferimenti normativi

- Presentazione pdf del capitolato C9: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9p.pdf","C9p.pdf") (_versione disponibile al 2025-03-20_)
- Norme di Progetto: #link(d.NdP, "Norme_di_Progetto_v1.0.0.pdf")
- Piano di Qualifica: #link(d.PdQ, "Piano_di_Qualifica_v1.0.0.pdf")

=== Riferimenti informativi

- Analisi dei Requisiti: #link(d.AdR, "Analisi_dei_Requisiti_v1.1.0.pdf");
- Glossario: #link(d.Glossario, "Glossario");
- I diagrammi dei casi d'uso: #link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf", "Use case")
- Progettazione: I pattern architetturali #link("https://www.math.unipd.it/~rcardin/swea/2022/Software%20Architecture%20Patterns.pdf", "Software Architecture Patterns")
- Verifica e validazione: analisi statica (T10): #link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T10.pdf 2024/03/02)", "analisi statica")
- Verifica e validazione: analisi dinamica aka testing (T11): #link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T11.pdf 2024/03/02)", "analisi dinamica")
- Programmazione: #link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/L02.pdf", "SOLID programming principles")

=== Riferimenti Tecnici

- Documentazione ufficiale Typescript: #link("https://www.typescriptlang.org/", "Typescript");
- Documentazione ufficiale Langchain: #link("https://langchain.io/", "Langchain");
- Documentazione ufficiale NodeJs: #link("https://nodejs.org/", "Node.js");
- Documentazione ufficiale NestJs: #link("https://nestjs.com/", "Nest.js");
- Documentazione ufficiale Groq: #link("https://groq.com/", "GroqCloud");
- Documentazione ufficiale Qdrant: #link("https://www.qdrant.io/", "Qdrant");
- Documentazione ufficiale NomicAi: #link("https://nomic.ai/", "NomicAi");
- Documentazione ufficiale PostgreSQL: #link("https://www.postgresql.org/", "PostgresSQL");
- Documentazione ufficiale Oktokit: #link("https://octokit.github.io/rest.js/v18", "Octokit");
- Documentazione JiraJs: #link("https://mrrefactoring.github.io/jira.js/", "JiraJs");
- Documentazione Confluence Js: #link("https://mrrefactoring.github.io/confluence.js/", "ConfluenceJs");
- Documentazione ufficiale Docker: #link("https://www.docker.com/", "Docker");
- Documentazione ufficiale ReactJs: #link("https://reactjs.org/", "React");
- Documentazione ufficiale ReactQuery (TanStack) #link("https://react-query.tanstack.com/", "ReactQuery");
- Documentazione ufficiale TailwindCSS: #link("https://tailwindcss.com/", "Tailwind CSS");
- Documentazione ufficiale NextJs #link("https://nextjs.org/", "Next.js");

= Tecnologie
In questo capitolo sono elencate tutte le tecnologie della #glossary("tech stack") che il team utilizza per lo sviluppo del progetto di #box(image(g.azzurro, width: 5em, height: auto)), come linguaggi di programmazione, #glossary("framework"), #glossary("librerie") e #glossary("ambienti di sviluppo").
#pagebreak()

== Typescript

Typescript è un linguaggio di programmazione open-source. È un super-set di JavaScript, che aggiunge forte tipizzazione statica. Il team ha scelto di utilizzare Typescript per la sua tipizzazione statica, che permette di ridurre gli errori di programmazione e di rendere il codice più leggibile e manutenibile.

#figure(image(tc.ts, width: 4em, height: auto), caption: [Logo Typescript])

== Langchain

Langchain è un framework open-source per la creazione di applicazioni basate sull'utilizzo #glossary("LLM"). Il team ha scelto di utilizzare Langchain per la sua facilità d'uso e per la sua integrazione con altri servizi come Qdrant e Groq, oltre che ad avere una libreria in Typescript, rendendolo compatibile con il nostro linguaggio.
#figure(image(tc.lc, width: 5em, height: auto), caption: "Logo di Langchain")

== Node.js

Node.js è un ambiente di runtime open-source per l'esecuzione di codice JavaScript lato server. Il team ha scelto di utilizzare Node.js per la sua scalabilità e per la sua facilità di utilizzo.
#figure(image(tc.node, width: 4em, height: auto), caption: "Logo di Node.js")

== Nest.js

Nest.js è un framework per la creazione di applicazioni server-side in Node.js. Il team ha scelto di utilizzare Nest.js per la sua struttura modulare e per la sua scalabilità e per la facilità con cui è possibile creare i design pattern più opportuni.
#figure(image(tc.nest, width: 7em, height: auto), caption: "Logo di Nest.js")

== GroqCloud

È una piattaforma AI basata su hardware specializzato (LPU) per inferenza ad alte prestazioni, supporta modelli LLM e integrazione con strumenti AI per elaborazione in tempo reale.
#figure(image(tc.groq, width: 4em, height: auto), caption: "Logo di GroqCloud")

== Qdrant

Qdrant è un motore di ricerca e analisi di dati non strutturati, supporta l'indicizzazione e la ricerca di dati in tempo reale, oltre che la ricerca di dati basata su vettori.
#figure(image(tc.qdrant, width: 4em, height: auto), caption: "Logo di Qdrant");

== NomicAi

NomicAi è un servizio di elaborazione del linguaggio naturale (NLP) basato su modelli LLM che permette l'embedding di testo. Il team ha scelto di utilizzare NomicAi per la sua facilità d'uso e per la sua integrazione con altri servizi come Langchain e Groq.
#figure(image(tc.nomic, width: 4em, height: auto), caption: "Logo di NomicAi")

== PostgreSQL

PostgreSQL è un sistema di gestione di database relazionale open-source. Il team ha scelto di utilizzare PostgreSQL per la sua affidabilità e per la sua estensiva documentazione.
#figure(image(tc.postgres, width: 4em, height: auto), caption: "Logo di PostgreSQL")

== Octokit

Octokit è un toolkit per l'interazione con le API di GitHub. Il team ha scelto di utilizzare Octokit per la sua estesa documentazione e per utilizzare un prodott ufficiale per interagire on GitHub stesso.
#figure(image(tc.ok, width: 5em, height: auto), caption: "Logo di Octokit")

== JiraJs

JiraJs è un toolkit per l'interazione con le API di Jira. Il team ha scelto di utilizzare JiraJs per la sua documentazione affidabile e per la sua facilità d'uso.
#figure(image(tc.jira, width: 3em, height: auto), caption: "Logo di JiraJs")

== ConfluenceJs

ConfluenceJs è un toolkit per l'interazione con le API di Confluence. Il team ha scelto di utilizzare ConfluenceJs per la sua documentazione affidabile e per la sua facilità d'uso.
#figure(image(tc.confluence, width: 3em, height: auto), caption: "Logo di ConfluenceJs")

== Docker

Docker è una piattaforma open-source per lo sviluppo, il deploy e l'esecuzione di applicazioni in container. Il team ha scelto di utilizzare Docker per la sua facilità di deploy e per la sua scalabilità.
#figure(image(tc.docker, width: 7em, height: auto), caption: "Logo di Docker")

== React.js

ReactJs è una libreria open-source per la creazione di interfacce utente. Il team ha scelto di utilizzare ReactJs per la sua immediatezza nell'uso, per la sua scalabilità e per la sua estesa documentazione.
#figure(image(tc.react, width: 7em, height: auto), caption: "Logo di ReactJs")

== ReactQuery

ReactQuery è una libreria open-source per la gestione dello stato in React. Il team ha scelto di utilizzare ReactQuery per la sua integrazione con React.
#figure(image(tc.reactq, width: 7em, height: auto), caption: "Logo di ReactQuery")

== TailwindCSS

TailwindCSS è un framework CSS utilizzato per la creazione di interfacce utente. Il team ha scelto di utilizzare TailwindCSS per la sua facilità d'uso e per la sua documentazione dettagliata oltre che per utilizzare una tecnologia più compatibile con il resto.
#figure(image(tc.tlw, width: 5em, height: auto), caption: "Logo di TailwindCSS")

== Next.js

Next.js è un framework per la creazione di applicazioni web in React. Il team ha scelto di utilizzare Next.js per i metodi nativi a disposizione per le richieste alle API e per utilizzare una tecnologia più nuova rispetto al resto.
#figure(image(tc.next, width: 5em, height: auto), caption: "Logo di Next.js")



= Progettazione di dettaglio

== Microservizio Informazioni

Il microservizio Informazioni gestisce l'interazione tra il sistema e tre fonti esterne --- *Jira*, *Confluence* e *GitHub* --- recuperando informazioni rilevanti che vengono archiviate in un database vettoriale. Oltre alla fase di acquisizione e persistenza dei dati, il microservizio espone funzionalità di retrieval semantico, fornendo le informazioni più pertinenti in base alle query degli utenti per supportare il modello linguistico nella generazione di risposte contestualizzate.

=== Funzionalità principali

Il microservizio si articola in quattro casi d'uso fondamentali:
- Recupero e memorizzazione dei dati da *Jira*;
- Recupero e memorizzazione dei dati da *Confluence*;
- Recupero e memorizzazione dei dati da *GitHub*;
- Recupero di informazioni rilevanti basato sulle query utente.

Tutte le richieste vengono ricevute in modalità asincrona tramite *RabbitMQ*, che opera come message broker tra questo componente e il gateway API. Ogni messaggio attiva il caso d'uso corrispondente, gestito secondo un'architettura esagonale che garantisce una netta separazione tra logica di dominio, servizi applicativi e adattatori per l'integrazione con fonti esterne e sistema di storage.


=== Classi condivise

==== Qdrant-information-repository

Questa classe gestisce la persistenza e il retrieval delle informazioni nel database vettoriale Qdrant, fungendo da punto centralizzato per le operazioni di salvataggio e recupero. Il repository viene inizializzato con un'istanza del Vector Store di LangChain passata come attributo nel costruttore, permettendo un'astrazione efficace rispetto all'implementazione specifica del database vettoriale.

*Operazioni principali:*

- `storeInformation(info: Information): Result`

  Questo metodo gestisce il salvataggio di nuove informazioni nel database vettoriale attraverso i seguenti passaggi:
  1. Estrazione dei metadati dall'oggetto Information
  2. Verifica dell'esistenza di vettori precedenti con lo stesso identificativo
  3. Rimozione di eventuali vettori esistenti utilizzando i Metadata per garantire la consistenza
  4. Suddivisione del documento in segmenti più piccoli (chunking) se la dimensione supera la soglia massima per un embedding efficace
  5. Generazione degli embedding per ogni segmento attraverso il model provider
  6. Salvataggio dei vettori risultanti nel Vector Store di LangChain

  Il processo di chunking è particolarmente importante per gestire documenti di grandi dimensioni, assicurando che ogni segmento possa essere correttamente vettorializzato mantenendo al contempo la coerenza semantica.

- `retrieveRelevantInfo(query: string, k?: number): InformationEntity*`

  Implementa una ricerca semantica utilizzando i metodi nativi di LangChain per il Vector Store:
  1. Conversione della query testuale in un vettore embedding;
  2. Esecuzione di una ricerca di similarità nel database vettoriale;
  3. Recupero dei `k` documenti più rilevanti (dove `k` è configurabile, con un valore predefinito);
  4. Ordinamento dei risultati in base al punteggio di similarità;

  La ricerca semantica permette di identificare documenti concettualmente simili alla query dell'utente, anche quando non condividono esattamente gli stessi termini, grazie alla rappresentazione vettoriale dello spazio semantico.

==== Metadata

Contiene informazioni supplementari relative agli oggetti di business salvati nel database vettoriale. Questi metadati identificano tutti i vettori derivati da un oggetto originale, consentendo modifiche o rimozioni precise dei dati nel database.

==== Information

Rappresenta un oggetto di business completo dei relativi *Metadata*, garantendo il corretto salvataggio del contenuto documentale. Questa classe assicura che gli oggetti provenienti da Jira, GitHub e Confluence e i loro metadati siano salvati coerentemente.

==== InformationEntity

Entità di repository per *Information*, agisce come DTO per la persistenza.

==== MetadataEntity

Entità di repository per *Metadata*, essenziale per l'identificazione e gestione dei vettori.

Cruciale per identificare, raggruppare ed eliminare vettori, garantendo l'integrità referenziale nel database vettoriale.

==== Result
Classe di supporto che fornisce un meccanismo standardizzato per rappresentare l'esito di operazioni di recupero e salvataggio dati. Permette di distinguere tra successo e fallimento, e in caso di errore, di fornire una descrizione dettagliata.

=== Recupero e memorizzazione dei dati da Jira

Il seguente diagramma illustra le classi coinvolte nel caso d'uso "Recupero e memorizzazione dei ticket di Jira", evidenziando l'architettura esagonale adottata:
#figure(
  image(st.diag_fetch_jira, width: 42em, fit: "contain"),
  caption: "Diagramma delle classi per il caso d'uso di recupero e memorizzazione dei ticket di Jira",
)

==== Componenti Principali

===== JiraFetchAndStoreController

Punto d'ingresso per l'operazione di recupero e memorizzazione dei ticket da Jira. Riceve le richieste esterne, le convalida e le indirizza verso il caso d'uso appropriato. Il controller accetta in input un `WorkspaceJiraDTO` contenente tutte le informazioni necessarie, inclusa la data dell'ultimo aggiornamento per ottimizzare l'efficienza del recupero dati.

===== JiraUseCase

Interfaccia che definisce il contratto per la logica di recupero e memorizzazione, stabilendo una chiara astrazione tra definizione del comportamento e implementazione. Espone il metodo `WorkspaceAndStoreJiraInfo(req: FetchJiraCmd): Result` che restituisce un oggetto Result che rappresenta l'esito dell'operazione.

===== JiraService

Implementazione concreta di *JiraUseCase* che coordina:
1. Il recupero dei ticket tramite *JiraAPIPort*
2. L'elaborazione dei dati ottenuti
3. La memorizzazione mediante *StoreJiraPort*

Questo servizio incapsula la logica principale del caso d'uso, gestendo correttamente eventuali errori durante il processo.

===== Ticket

Rappresentazione strutturata di un ticket Jira nel dominio applicativo. Implementa l'interfaccia *ObjectToStore* fornendo implementazioni concrete dei metodi:
- `getMetadata(): Metadata`
- `toStringifiedJson(): string`

===== JiraComment

Modella i commenti associati a un ticket, includendo dettagli come autore, contenuto e timestamp, per una gestione completa delle informazioni correlate.

===== JiraAPIPort

Interfaccia che astrae le operazioni di interazione con l'API Jira, definendo un contratto chiaro indipendente dai dettagli implementativi. Espone il metodo `WorkspaceTickets(req: FetchJiraCmd): Ticket*` che restituisce un array di ticket creati o modificati dalla data specificata nel comando.

===== JiraAPIAdapter

Implementa *JiraAPIPort* gestendo la comunicazione effettiva con l'API Jira tramite *JiraAPIFacade*. Traduce le risposte API nel formato interno richiesto dall'applicazione.

===== JiraAPIRepository
Classe che funge da intermediario per interagire direttamente con le API di Jira. Al momento della sua creazione, richiede l'iniezione di un client autenticato per stabilire la connessione con Jira.  Espone un metodo `fetchRecentIssues(daysBack: number, boardId: number): Json*` in cui entrambi i parametri sono opzionali:
- *daysBack*: Specifica il numero di giorni nel passato per cui recuperare le issue. Se omesso, vengono restituite tutte le issue accessibili all'account;
- *boardId*: Limita la ricerca alle issue associate a una specifica board. Se omesso, vengono recuperate le issue da tutte le board accessibili.


===== StoreJiraPort

Definisce l'interfaccia per la memorizzazione dei ticket, permettendo al nucleo applicativo di salvare dati indipendentemente dal sistema di storage sottostante. Espone il metodo `storeTickets(tickets: Ticket*): Result` che restituisce l'esito dell'operazione.

===== StoreJiraAdapter

Implementa *StoreJiraPort* gestendo la persistenza dei ticket nel database vettoriale tramite *qdrant-information-repository*. Si occupa della trasformazione dei dati nel formato appropriato e dell'interazione con il meccanismo di storage.





=== Recupero di informazioni rilevanti basato sulle query utente

Il seguente diagramma illustra le classi coinvolte nel caso d'uso "Recupero delle informazioni", evidenziando l'architettura esagonale adottata: 
#figure(
  image(st.diag_retr_info, width: 42em, fit: "contain"),
  caption: "Diagramma delle classi per il caso d'uso di recupero di informazioni rilevanti basato sulle query utente",
)
==== Componenti Principali

===== RetrievalController

Punto d'ingresso per il recupero delle informazioni. Riceve richieste esterne contenenti una stringa query incapsulata in un RetrievalInfoDTO, che viene poi convertito in un comando di dominio RetrieveCmd. Dopo aver invocato il caso d'uso, restituisce un array di oggetti InformationDTO che rappresentano le informazioni più rilevanti trovate.

===== RetrievalInfoUseCase

Interfaccia che definisce il contratto del caso d'uso, delegando la responsabilità di recuperare le informazioni rilevanti. Espone il metodo `retrieveRelevantInfo(cmd: RetrieveCmd): Information*`, che restituisce un array ordinato di oggetti Information.

===== RetrievalInfoService

Implementazione concreta di RetrievalInfoUseCase, si occupa della logica principale del caso d'uso. Riceve il comando, interagisce con la porta RetrievalInfoPort, la quale viene inniettata nel costruttore, e restituisce il risultato sotto forma di array di Information.

===== RetrieveCmd

Oggetto del dominio che incapsula la richiesta dell'utente, contenente il campo query. Utilizzato internamente per mantenere la coerenza del linguaggio di dominio tra i livelli.

===== Information

Entità che rappresenta l'informazione recuperata. Contiene il contenuto testuale (content) e i metadati associati (metadata), modellati tramite l'oggetto Metadata.

===== Metadata

Classe che descrive i metadati associati all'informazione.

===== RetrievalInfoPort

Interfaccia che astrae la logica di accesso ai dati. Espone il metodo `retrieveRelevantInfo(cmd: RetrieveCmd): Information*`, consentendo al servizio applicativo di restare disaccoppiato dalla tecnologia di persistenza.

===== RetrievalInfoAdapter

Implementazione concreta della porta RetrievalInfoPort, interagisce con qdrant-information-repository per recuperare le informazioni rilevanti alla domanda dell'utente. Converte gli oggetti provenienti dal repository in oggetti di dominio.
