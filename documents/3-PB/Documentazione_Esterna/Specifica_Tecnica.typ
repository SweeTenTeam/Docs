#import "/template/document.typ": *

#show: project.with(
  title: "Specifica Tecnica",
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
        "0.0.3",
    "2025-04-03",
    (p.fracaro),
    (p.benedetti),
    [
      Sezione architettura di sistema
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

= Architettura di Sistema

== Approccio alla Progettazione

La progettazione dell'architettura di sistema di _BuddyBot_ è stata condotta secondo un approccio _top-down_. Questo metodo ha permesso di definire inizialmente i macro-componenti del sistema, garantendo una visione chiara e coerente sin dalle prime fasi. Successivamente, si è passati a un raffinamento progressivo delle specifiche dei singoli moduli e componenti, assicurando che ciascuno fosse progettato in modo modulare e scalabile. Tale approccio ha facilitato la suddivisione delle responsabilità tra i membri del team, migliorando la tracciabilità delle decisioni progettuali.

== Contenitori e Deploy con Docker

Per garantire portabilità e facilitare il deploy, è stato adottato Docker e Docker Compose, con un container per ogni servizio e per le risorse di supporto.

L'utilizzo di Docker porta molti vantaggi, tra cui:

- *Isolamento dei servizi*: Ogni microservizio gira in un ambiente indipendente, evitando conflitti tra dipendenze.
- *Portabilità*: Il sistema può essere eseguito su qualsiasi piattaforma senza configurazioni complesse.
- *Facilità di scalabilità*: Può essere facilmente distribuito su più istanze per gestire carichi elevati.
- *Coerenza ambientale*: Assicura che gli ambienti di sviluppo, test e produzione siano identici, riducendo i problemi legati a differenze di configurazione.

_Docker Compose_ viene utilizzato per orchestrare e avviare automaticamente i container, garantendo l'interconnessione tra i microservizi e i database senza necessità di configurazioni manuali complesse.


== Strutturazione Generale del Sistema

Il sistema è stato suddiviso in due macro-componenti principali:

- *Frontend*: Interfaccia utente per l'interazione con BuddyBot.
- *Backend*: Gestione della logica applicativa e delle fonti dati, esposto tramite API REST.

Questa suddivisione consente di ottenere diversi benefici:

- Indipendenza tra frontend e backend: Gli aggiornamenti possono avvenire separatamente, evitando impatti sull'intero sistema.
- Possibilità di supportare frontend multipli: L'uso di _API REST_ consente l'integrazione di differenti interfacce utente, come web app, mobile app e desktop app (anche se attualmente non implementato, questa architettura lo renderebbe facilmente realizzabile in futuro).
- Scalabilità e manutenibilità migliorate: Il backend può evolvere indipendentemente dall'interfaccia utente, permettendo di migliorare le prestazioni senza dover aggiornare ogni client.

== Architettura del frontend
 [inserire qui la sezione scritta da Orlando]


== Architettura del Backend
=== Architettura di Deployment

Il backend è strutturato secondo un'architettura a _microservizi_, dove ogni servizio è responsabile di una specifica funzionalità del sistema. Questo approccio ha permesso di ottenere un sistema più modulare e scalabile, pur affrontando alcune sfide specifiche.

==== Vantaggi dell'architettura a microservizi

- Scalabilità orizzontale: I microservizi possono essere replicati per gestire carichi di lavoro elevati.
- Indipendenza di deploy: Ogni servizio può essere aggiornato, riavviato o sostituito senza impattare il resto del sistema.
- Manutenibilità e modularità: Separare le funzionalità in microservizi facilita la gestione del codice e l'aggiunta di nuove feature.
- Tecnologie eterogenee: Ogni microservizio può essere sviluppato con la tecnologia più adatta senza vincoli imposti da un monolite.

==== Svantaggi

- Overhead di gestione: A differenza di un'architettura monolitica, i microservizi richiedono una gestione più complessa, sia in fase di sviluppo che di deploy.
- Comunicazione tra servizi: Per garantire un'integrazione efficiente, è stato necessario implementare un sistema di messaggistica asincrono, come _RabbitMQ_, per la comunicazione tra microservizi.

==== Microservizi Identificati

Il backend è suddiviso in quattro microservizi principali:

- *API Gateway*: Instrada le richieste tra frontend e microservizi interni, gestisce il bilanciamento del carico e pianifica il recupero delle informazioni dalle fonti.
- *Chatbot*: Genera risposte basandosi sulle richieste ricevute e sulle informazioni contestuali fornite dal database vettoriale.
- *Storico*: Salva e recupera le domande e le risposte dal database relazionale (_PostgreSQL_) per mantenere uno storico delle conversazioni.
- *Information Vector DB*: Recupera informazioni dalle fonti, effettua embedding in forma vettoriale e le memorizza nel database vettoriale (_Qdrant_), fornendo dati contestuali al chatbot.

==== Comunicazione tra Microservizi: RabbitMQ

Nell'architettura a microservizi di #glossary("BuddyBot"), la comunicazione efficiente tra componenti è garantita da un sistema di messaggistica asincrona basato su RabbitMQ.


L'adozione di RabbitMQ offre benefici fondamentali:

- *Flessibilità temporale:* Determina quando un microservizio elabora una richiesta, eliminando blocchi nell'esecuzione.
- *Scalabilità orizzontale:* I messaggi vengono distribuiti in code ed elaborati in parallelo.
- *Resilienza avanzata:* I messaggi persistono nelle code quando i servizi destinatari sono temporaneamente non disponibili.
- *Disaccoppiamento:* Riduce le dipendenze dirette tra microservizi, semplificando la manutenzione.

===== Pattern e implementazione

Il sistema utilizza principalmente il pattern *RPC asincrono (Request/Response)* per le comunicazioni tra i microservizi, sfruttando l'integrazione tra NestJS e RabbitMQ:

- NestJS gestisce automaticamente gli identificativi di correlazione tra richieste e risposte.
- Il framework `@nestjs/microservices` fornisce astrazioni per configurare microservizi basati su code.
- Ogni microservizio implementa:
    - Listener dedicati che si connettono a specifiche code RabbitMQ.
    - Handler che associano pattern predefiniti alle funzioni di business logic.
    - Client per pubblicare messaggi in modo asincrono.

=== Architettura logica

Il sistema è progettato seguendo l'*architettura esagonale*, un modello architetturale che crea una separazione netta tra la business logic dell'applicazione e il mondo esterno, garantendo indipendenza da tecnologie specifiche e maggiore manutenibilità.

==== Struttura dell'architettura esagonale

*Logica di business* rappresenta il nucleo dell'applicazione, contenente il dominio e le regole di business. È completamente indipendente da implementazioni tecnologiche specifiche, garantendo massima portabilità e riutilizzabilità.

*Porte* definiscono i punti di interazione tra il nucleo e il mondo esterno:
- *Porte in Entrata (Use Case)*: Permettono ai componenti esterni di invocare il nucleo, fornendo un accesso strutturato e proteggendo la logica di dominio da implementazioni specifiche.
- *Porte in Uscita*: Consentono al nucleo di accedere a funzionalità esterne (database, servizi di terze parti) mantenendo l'astrazione tecnologica.

*Services* implementano le porte in entrata e fanno parte della business logic. Si concentrano esclusivamente sulla logica di dominio, rimanendo indipendenti da aspetti tecnologici specifici.

*Adapters* costituiscono il livello più esterno dell'applicazione e si dividono in:
- *Adapters in Entrata (Controller)*: Gestiscono e convertono le richieste provenienti dall'esterno verso il core.
- *Adapters in Uscita*: Gestiscono la comunicazione dal core verso servizi e tecnologie esterne.

==== Vantaggi

Questa architettura garantisce:

- *Flessibilità*: L'applicazione rimane indipendente dalle tecnologie esterne, facilitando modifiche e aggiornamenti senza impattare la logica di business.
- *Testabilità*: La logica di business può essere testata in isolamento, semplificando lo sviluppo test-driven.
- *Resilienza*: Il sistema diventa più resistente ai cambiamenti tecnologici, permettendo di sostituire componenti esterni senza modificare il nucleo applicativo.

=== Design pattern utilizzati

==== Dependency Injection

Uno degli aspetti fondamentali dell'implementazione del backend è stato l'uso del pattern di *Dependency Injection*, nativamente supportato da NestJS. Questo approccio ha permesso di ridurre l'accoppiamento tra i componenti, semplificando la testabilità e la manutenzione del sistema spostando all'esterno della classi la risoluzione delle dipendenze.

NestJS adotta un *container per le dipendenze* che consente di dichiarare i provider una sola volta e iniettarli ovunque siano richiesti tramite il costruttore delle classi. Ogni modulo dell'applicazione può registrare provider, che vengono poi risolti automaticamente dal framework quando una classe dichiara di averne bisogno.


