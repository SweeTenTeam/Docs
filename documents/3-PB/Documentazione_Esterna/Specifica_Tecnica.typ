#import "/template/document.typ": *

#show: project.with(
  title: "Specifica Tecnica",
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
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
Il microservizio descritto in questa sezione ha l'obiettivo di gestire l'interazione tra il sistema e tre fonti esterne — *Jira*, *Confluence* e *GitHub* — da cui recupera informazioni rilevanti che vengono poi archiviate in un database vettoriale. Oltre alla fase di fetch e persistenza dei dati, il microservizio espone anche una funzionalità di retrieval, ossia il recupero delle informazioni più pertinenti in base alla domanda posta dall'utente. Tale retrieval è supportato da una ricerca semantica sul database vettoriale, finalizzata a fornire il contesto utile alla generazione della risposta da parte del modello linguistico.

Le funzionalità principali del microservizio si articolano in quattro casi d'uso distinti:
- Fetch e memorizzazione dei dati da *Jira*
- Fetch e memorizzazione dei dati da *Confluence*
- Fetch e memorizzazione dei dati da *GitHub*
- Retrieval delle informazioni rilevanti a partire da una domanda utente

Tutte le richieste verso il microservizio vengono ricevute in modalità asincrona tramite *RabbitMQ*, che funge da message broker tra questo componente e il gateway API. Ogni messaggio ricevuto attiva il caso d'uso corrispondente, il quale viene gestito secondo un'architettura esagonale, che garantisce una netta separazione tra la logica di dominio, i servizi applicativi e gli adattatori per l'integrazione con le fonti esterne e il sistema di storage.


=== Fetch e Store dei ticket di Jira

Il diagramma seguente illustra le classi coinvolte nel caso d'uso "Fetch e Store dei ticket di Jira". L'architettura adottata è quella esagonale, che distingue chiaramente tra il nucleo dell'applicazione, le porte e gli adattatori per l'interazione con sistemi esterni, e il livello applicativo che gestisce la logica specifica del caso d'uso.

#figure(
  image(st.diag_fetch_jira, width: 40em, fit: "contain"),
  caption: "Diagramma UC6, visualizzazione UI",
)

==== Componenti Principali

===== JiraFetchAndStoreController

Il *JiraFetchAndStoreController* funge da punto di ingresso per l'operazione di recupero e memorizzazione dei ticket da Jira. Questo controller riceve le richieste dall'esterno, le valida e le instrada verso il caso d'uso appropriato, garantendo che la logica di presentazione rimanga separata dalla logica di business.

===== JiraUseCase

Il *JiraUseCase* rappresenta l'interfaccia che definisce il contratto per la logica di recupero e memorizzazione dei ticket da Jira. Esso stabilisce i metodi che l'implementazione concreta deve fornire, garantendo un'astrazione chiara tra la definizione del comportamento e la sua effettiva implementazione.

===== JiraService

Il *JiraService* è l'implementazione concreta del *JiraUseCase*. Si occupa di coordinare il recupero dei ticket da Jira tramite il *JiraAPIPort*, elaborare i dati ottenuti e infine memorizzarli utilizzando il *StoreJiraPort*. Questo servizio incapsula la logica principale del caso d'uso e garantisce che le operazioni siano eseguite correttamente, gestendo eventuali errori o anomalie durante il processo.

===== JiraAPIPort

Il *JiraAPIPort* definisce un'interfaccia che astrae le operazioni necessarie per interagire con l'API di Jira. Questa porta stabilisce un contratto chiaro su come il nucleo dell'applicazione può richiedere dati da Jira, senza dipendere da dettagli specifici dell'implementazione dell'API esterna.

===== JiraAPIAdapter

Implementando il *JiraAPIPort*, il *JiraAPIAdapter* gestisce la comunicazione effettiva con l'API di Jira. Si occupa di tradurre le richieste dal formato interno dell'applicazione al formato richiesto da Jira e viceversa, elaborando le risposte ricevute per renderle utilizzabili dal nucleo dell'applicazione.

===== Ticket

La classe *Ticket* rappresenta un ticket di Jira all'interno del dominio dell'applicazione. Contiene attributi come l'identificativo, il titolo, l'assegnatario e lo stato, fornendo una rappresentazione strutturata dei dati essenziali di un ticket.

===== JiraComment

Associata alla classe *Ticket*, la classe *JiraComment* modella i commenti relativi a un ticket. Ogni commento include dettagli come l'autore, il contenuto e la data di creazione, permettendo una gestione completa delle informazioni correlate ai ticket.

===== StoreJiraPort

Il *StoreJiraPort* definisce l'interfaccia per la memorizzazione dei ticket recuperati. Questa porta consente al nucleo dell'applicazione di salvare i dati senza preoccuparsi dei dettagli specifici del sistema di storage sottostante.

===== StoreJiraAdapter

Implementando il *StoreJiraPort*, lo *StoreJiraAdapter* si occupa della persistenza dei ticket nel sistema di storage scelto, come un database vettoriale. Gestisce la trasformazione dei dati nel formato appropriato e l'interazione con il meccanismo di storage per garantire che le informazioni siano salvate correttamente.

===== Metadata

La classe *Metadata* contiene informazioni supplementari relative ai ticket, come la fonte dei dati o la data di recupero. Questi metadati sono utili per tracciare l'origine e il contesto delle informazioni memorizzate.

===== Information

Infine, la classe *Information* combina un *Ticket* con i relativi *Metadata*, creando un'entità completa che rappresenta sia i dati principali che le informazioni contestuali. Questa classe è utilizzata durante il processo di memorizzazione per garantire che sia i ticket che i loro metadati siano salvati insieme in modo coerente.


=== Retrieval delle Informazioni

Il caso d’uso di retrieval delle informazioni consente di recuperare dati rilevanti dal database vettoriale sulla base di una query fornita dall’utente. Questo processo è essenziale per arricchire il contesto della richiesta e migliorare l’accuratezza delle risposte generate dal sistema.

==== *Retrieval Controller*

Il *Retrieval Controller* rappresenta il punto di ingresso delle richieste di retrieval. Espone un’operazione che riceve un oggetto *RetrievalInfoDTO*, contenente la query dell’utente, e restituisce un oggetto *InformationDTO*, che incapsula il contenuto informativo e i relativi metadati.

#figure(
  image(st.diag_retr_info, width: 40em, fit: "contain"),
  caption: "Diagramma UC6, visualizzazione UI",
)


==== *RetrievalInfoUseCase*

Il *RetrievalInfoUseCase* gestisce la logica applicativa del retrieval. Riceve un comando *RetrieveCmd*, che trasporta la query dell’utente, e invoca il *RetrievalInfoService* per ottenere le informazioni pertinenti. Questo livello garantisce l’applicazione delle regole di business e la separazione tra interfaccia e implementazione.

==== *RetrievalInfoService*

Il *RetrievalInfoService* rappresenta l’implementazione concreta della logica di retrieval. Implementa l’interfaccia *RetrievalInfoPort*, interagendo con gli adattatori per recuperare le informazioni dal database vettoriale. Questo componente si occupa di elaborare i risultati, garantendo che le informazioni restituite siano coerenti e strutturate.

==== *RetrievalInfoPort*

L’interfaccia *RetrievalInfoPort* definisce il contratto per il retrieval delle informazioni. Attraverso questa porta, il sistema applicativo si disaccoppia dal livello di persistenza, garantendo flessibilità nell’integrazione con diverse tecnologie di storage.

==== *RetrievalInfoAdapter*

Il *RetrievalInfoAdapter* è il componente responsabile dell’interazione diretta con il database vettoriale. Implementa *RetrievalInfoPort* e traduce i comandi ricevuti in operazioni di interrogazione sul repository.

==== *qdrant-information-repository*

Il *qdrant-information-repository* è il modulo che gestisce la persistenza e il recupero delle informazioni. Offre due operazioni principali: 
- *storeInformation*, per salvare nuovi dati nel database vettoriale.
- *retrieveRelevantInfo*, per eseguire la ricerca semantica e restituire le informazioni più pertinenti alla query fornita.

==== *Modello dei Dati*

Il retrieval delle informazioni si basa su una rappresentazione strutturata dei dati. Ogni informazione è modellata come un’istanza della classe *Information*, che include un contenuto testuale e un oggetto *Metadata* associato. La persistenza è garantita da *InformationEntity* e *MetadataEntity*, che rappresentano le controparti del dominio nel livello di storage.
