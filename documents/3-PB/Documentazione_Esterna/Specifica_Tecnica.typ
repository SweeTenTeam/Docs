#import "/template/document.typ": *
#import "@preview/codelst:2.0.2": sourcecode

#show: project.with(
  title: "Specifica Tecnica",
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
    "1.0.0",
    "2025-04-15",
    (p.belenkov),
    (p.mahdi),
    [
      Approvazione per PB
    ],
    "0.0.9",
    "2025-04-15",
    (p.belenkov),
    (p.fracaro),
    [
      Aggiunta documentazione raccolta e salvataggio informazioni da Github e Confluence
    ],
    "0.0.8",
    "2025-04-12",
    (p.fracaro),
    (p.belenkov),
    [
      Aggiunta sezioni: Intorduzione microservizio Informazioni, Recupero informazioni dei dati da Jira e Recupero delle informazioni rilevanti basato su query dell'utente
    ],
    "0.0.7",
    "2025-04-10",
    (p.benedetti),
    (p.mahdi),
    [
      Stesura tracciamento stato requisiti funzionali
    ],
    "0.0.6",
    "2025-04-09",
    (p.santi),
    (p.mahdi),
    [
      Stesura microservizio denominato "Storico"
    ],
    "0.0.5",
    "2025-04-08",
    (p.benedetti),
    (p.fracaro),
    [
      Aggiunta sezione microservizio ChatBot
    ],
    "0.0.4",
    "2025-04-03",
    (p.fracaro),
    (p.santi),
    [
      Sezione architettura di sistema e introduzione backend
    ],
    "0.0.3",
    "2025-03-27",
    (p.ferazzani),
    (p.campagnaro),
    [
      Aggiunte tecnologie di testing e miglioramenti generali
    ],
    "0.0.2",
    "2025-03-15",
    (p.ferazzani),
    (p.campagnaro),
    [
      Aggiunta sezione "Architettura frontend"
    ],
    "0.0.1",
    "2025-02-27",
    (p.mahdi),
    (p.benedetti),
    [
      Stesura sezione microservizio Api-Gateway
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

== Tecnologie di sviluppo
=== Typescript

Typescript è un linguaggio di programmazione open-source. È un super-set di JavaScript, che aggiunge forte tipizzazione statica. Il team ha scelto di utilizzare Typescript per la sua tipizzazione statica, che permette di ridurre gli errori di programmazione e di rendere il codice più leggibile e manutenibile.

#figure(image(tc.ts, width: 4em, height: auto), caption: [Logo Typescript])

=== Langchain

Langchain è un framework open-source per la creazione di applicazioni basate sull'utilizzo #glossary("LLM"). Il team ha scelto di utilizzare Langchain per la sua facilità d'uso e per la sua integrazione con altri servizi come Qdrant e Groq, oltre che ad avere una libreria in Typescript, rendendolo compatibile con il nostro linguaggio.
#figure(image(tc.lc, width: 5em, height: auto), caption: "Logo di Langchain")

=== Node.js

Node.js è un ambiente di runtime open-source per l'esecuzione di codice JavaScript lato server. Il team ha scelto di utilizzare Node.js per la sua scalabilità e per la sua facilità di utilizzo.
#figure(image(tc.node, width: 4em, height: auto), caption: "Logo di Node.js")

=== Nest.js

Nest.js è un framework per la creazione di applicazioni server-side in Node.js. Il team ha scelto di utilizzare Nest.js per la sua struttura modulare e per la sua scalabilità e per la facilità con cui è possibile creare i design pattern più opportuni.
#figure(image(tc.nest, width: 7em, height: auto), caption: "Logo di Nest.js")

=== GroqCloud

È una piattaforma AI basata su hardware specializzato (LPU) per inferenza ad alte prestazioni, supporta modelli LLM e integrazione con strumenti AI per elaborazione in tempo reale.
#figure(image(tc.groq, width: 4em, height: auto), caption: "Logo di GroqCloud")

=== Qdrant

Qdrant è un motore di ricerca e analisi di dati non strutturati, supporta l'indicizzazione e la ricerca di dati in tempo reale, oltre che la ricerca di dati basata su vettori.
#figure(image(tc.qdrant, width: 4em, height: auto), caption: "Logo di Qdrant");

=== NomicAi

NomicAi è un servizio di elaborazione del linguaggio naturale (NLP) basato su modelli LLM che permette l'embedding di testo. Il team ha scelto di utilizzare NomicAi per la sua facilità d'uso e per la sua integrazione con altri servizi come Langchain e Groq.
#figure(image(tc.nomic, width: 4em, height: auto), caption: "Logo di NomicAi")

=== PostgreSQL

PostgreSQL è un sistema di gestione di database relazionale open-source. Il team ha scelto di utilizzare PostgreSQL per la sua affidabilità e per la sua estensiva documentazione.
#figure(image(tc.postgres, width: 4em, height: auto), caption: "Logo di PostgreSQL")

=== Octokit

Octokit è un toolkit per l'interazione con le API di GitHub. Il team ha scelto di utilizzare Octokit per la sua estesa documentazione e per utilizzare un prodott ufficiale per interagire on GitHub stesso.
#figure(image(tc.ok, width: 5em, height: auto), caption: "Logo di Octokit")

=== JiraJs

JiraJs è un toolkit per l'interazione con le API di Jira. Il team ha scelto di utilizzare JiraJs per la sua documentazione affidabile e per la sua facilità d'uso.
#figure(image(tc.jira, width: 3em, height: auto), caption: "Logo di JiraJs")

=== ConfluenceJs

ConfluenceJs è un toolkit per l'interazione con le API di Confluence. Il team ha scelto di utilizzare ConfluenceJs per la sua documentazione affidabile e per la sua facilità d'uso.
#figure(image(tc.confluence, width: 3em, height: auto), caption: "Logo di ConfluenceJs")

=== Docker

Docker è una piattaforma open-source per lo sviluppo, il deploy e l'esecuzione di applicazioni in container. Il team ha scelto di utilizzare Docker per la sua facilità di deploy e per la sua scalabilità.
#figure(image(tc.docker, width: 7em, height: auto), caption: "Logo di Docker")

=== React.js

ReactJs è una libreria open-source per la creazione di interfacce utente. Il team ha scelto di utilizzare ReactJs per la sua immediatezza nell'uso, per la sua scalabilità e per la sua estesa documentazione.
#figure(image(tc.react, width: 7em, height: auto), caption: "Logo di ReactJs")

=== ReactQuery

ReactQuery è una libreria open-source per la gestione dello stato in React. Il team ha scelto di utilizzare ReactQuery per la sua integrazione con React.
#figure(image(tc.reactq, width: 7em, height: auto), caption: "Logo di ReactQuery")

=== TailwindCSS

TailwindCSS è un framework CSS utilizzato per la creazione di interfacce utente. Il team ha scelto di utilizzare TailwindCSS per la sua facilità d'uso e per la sua documentazione dettagliata oltre che per utilizzare una tecnologia più compatibile con il resto.
#figure(image(tc.tlw, width: 5em, height: auto), caption: "Logo di TailwindCSS")

=== Next.js

Next.js è un framework per la creazione di applicazioni web in React. Il team ha scelto di utilizzare Next.js per i metodi nativi a disposizione per le richieste alle API e per utilizzare una tecnologia più nuova rispetto al resto.
#figure(image(tc.next, width: 5em, height: auto), caption: "Logo di Next.js")

=== ShadCn

Libreria di componenti pre-impostati, pronti all'uso e altamente customizzabili. Il team ha scelto di utilizzare ShadCn per la sua facilità d'uso e per la sua documentazione dettagliata, oltre che per sfruttare al massimo il principio del riuso.
#figure(image(tc.shad, width: 5em, height: auto), caption: "Logo di ShadCn")

=== LucideReact

Libreria di icone SVG pronte all'uso. Il team ha scelto di utilizzare LucideReact per la sua facilità d'uso e per la sua documentazione dettagliata, oltre che per sfruttare al massimo il principio del riuso.
#figure(image(tc.lucide, width: 5em, height: auto), caption: "Logo di LucideReact")

== Tecnologie di testing

=== Jest

Jest è un framework di testing per JavaScript. Il team ha scelto di utilizzare Jest per la sua facilità d'uso e per la sua integrazione con Typescript. Utilizzato per *Analisi dinamica* in quanto richiede l'esecuzione del codice.
#figure(image(tc.jest, width: 4em, height: auto), caption: "Logo di Jest")

=== ESLint

ESLint è uno strumento di analisi statica del codice per identificare e segnalare errori di programmazione. Il team ha scelto di utilizzare ESLint per la sua facilità d'uso e per la sua integrazione con Typescript. Utilizzato per *Analisi statica* in quanto non richiede l'esecuzione del codice.
#figure(image(tc.esl, width: 4em, height: auto), caption: "Logo di ESLint")

#pagebreak()

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

= Architettura di sistema

== Strutturazione Generale del Sistema

Il sistema è stato suddiviso in due macro-componenti principali:

- *Frontend*: Interfaccia utente per l'interazione con BuddyBot.
- *Backend*: Gestione della logica applicativa e delle fonti dati, esposto tramite API REST.

Questa suddivisione consente di ottenere diversi benefici:

- Indipendenza tra frontend e backend: Gli aggiornamenti possono avvenire separatamente, evitando impatti sull'intero sistema.
- Possibilità di supportare frontend multipli: L'uso di _API REST_ consente l'integrazione di differenti interfacce utente, come web app, mobile app e desktop app (anche se attualmente non implementato, questa architettura lo renderebbe facilmente realizzabile in futuro).
- Scalabilità e manutenibilità migliorate: Il backend può evolvere indipendentemente dall'interfaccia utente, permettendo di migliorare le prestazioni senza dover aggiornare ogni client.

== Architettura del frontend
Per la parte di frontend, il team ha utilizzato #glossary("Next.Js"), framework basato su React, per la creazione di pagine web. Next.Js è stato scelto per la sua facilità d'uso e per la sua scalabilità. Inoltre, il team ha utilizzato #glossary("TailwindCSS") per la creazione di interfacce utente. TailwindCSS è stato scelto per la sua facilità d'uso e per la sua documentazione dettagliata, oltre che per la semplificazione della specificità di CSS base.

La scelta di tali tecnologie ha portato il team ad uno sviluppo a componenti del frontend. Saranno questi poi a comporre la struttura della web app. L'approccio a componenti, tipico di React, permette una maggiore modularità e scalabilità del codice, oltre che ad una maggiore facilità di manutenzione, evitando di avere tutto il codice in una singola pagina.

BuddyBot è una #glossary("SPA"), ovvero una Single Page Application, che permette di avere una sola pagina web che viene caricata una sola volta e che viene aggiornata dinamicamente senza dover ricaricare la pagina. Questo permette di avere una maggiore velocità di caricamento e di navigazione all'interno della web app. Inoltre, essendo un ChatBot, non vi era la necessità di avere più di una pagina, anche se il team ha previsto la possibilità di aggiungere nuove pagine in futuro.


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

#set page(flipped: true)
\
\
= Progettazione di dettaglio
== Progettazione frontend
#figure(image(spc.uml, width:118%, height: auto), caption: [UML frontend])
#pagebreak()
#set page(flipped: false)

== Architettura nel dettaglio
=== Componenti
Come detta lo standard di `Next.JS`, la pagina principale è `page.tsx`, che contiene la struttura base della web app. All'interno di questa pagina, vengono poi importati i vari componenti che compongono la web app. I componenti principali sono:

- *`Header.tsx`* è progettato per mostrare il logo e il nome dell’applicazione in modo ben visibile in cima alla pagina, contribuendo immediatamente a definire l’identità visiva della web app.
  #figure(
    image(spc.header, width: 100%, height: auto),
    caption: "Header della pagina in dark mode",
  )
  \
- *`Navbar.tsx`* gestisce la navigazione; anche se BuddyBot è una Single Page Application, la navbar offre all’utente la possibilità di accedere rapidamente ad altri siti web utili.
  #figure(
    image(spc.navbar, width: 100%, height: auto),
    caption: "Navbar della pagina in dark mode",
  )
  \
- *`ChatWindow.tsx`* integra due componenti distinti: il componente *`Chat.tsx`* per visualizzare lo storico della conversazione e l’*`InputForm.tsx`* per l’inserimento dei messaggi, creando così un’unica area interattiva per gestire la chat.
  #figure(
    image(spc.chat, width: 100%, height: auto),
    caption: "ChatWindow della pagina in dark modse",
  ) 
- *`Chat.tsx`* si occupa di mostrare l’intera conversazione tra utente e chatbot. Al suo interno, ogni scambio è rappresentato da un componente *`ChatQA.tsx`*, che racchiude due *`Bubble.tsx`*: una per il messaggio dell’utente e una per la risposta generata dal chatbot.
  #figure(
    image(spc.bubble, width: 100%, height: auto),
    caption: "Chat della pagina in dark mode",
  )
\
Ci sono inoltre altre componenti, utilizzate a supporto dei componenti principali. Questi sono inclusi nella cartella denimoinata `ui`.
Queste componenti sono:

- `Button.tsx`;
- `LoadMessage.tsx`;
- `LoadChat.tsx`;
- `ErrorAlert.tsx`;
- `InfoAlert.tsx`;
- `MarkDown.tsx`;
- `Avatar.tsx`;
- `MessageAvatar.tsx`;
\
=== Struttura dei dati
Per sviluppare al meglio e più dettagliatamente il team ha definito dei tipi, che gestiscono diversi aspetti della web app. Questi tipi sono definiti all'interno della cartella `types` e sono:

- *`Action.ts`* \ Definisce le possibili azioni che la chat può eseguire (es. caricamento della cronologia, aggiunta di messaggi, gestione degli errori). #sourcecode[```tsx
import { Message } from "@/types/Message";
import { QuestionAnswer } from "./QuestionAnswer";

export type ChatAction =
  | { type: "LOAD_HISTORY_START" }
  | { type: "LOAD_HISTORY_SUCCESS"; payload: QuestionAnswer[], hasMore: boolean }
  | { type: "LOAD_HISTORY_ERROR", error: number }
  | { type: "ADD_MESSAGE_START"; id: string, question: Message }
  | { type: "ADD_MESSAGE_SUCCESS"; id: string, answer: Message, newid: string, lastUpdated: string }
  | { type: "ADD_MESSAGE_ERROR"; id: string, error: number }
  | { type: "SCROLL_DOWN" };
  ```]

- *`ChatContext.ts`* \ Definisce il contesto della chat, includendo lo stato, il dispatch e le funzioni per il caricamento della cronologia e l'invio dei messaggi. #sourcecode[```tsx
import { createContext } from "react";
import { ChatAction } from "./Action";
import { ChatState } from "./ChatState";

export interface ChatContext {
  state: ChatState;
  dispatch: React.Dispatch<ChatAction>;
  loadHistory: () => Promise<void>;
  sendMessage: (text: string) => Promise<void>;
}

export const ChatContext = createContext<ChatContext | undefined>(undefined);
  ```]

- *`ChatProviderProps.ts`* \ Specifica le proprietà richieste al provider della chat, inclusa la dipendenza dall'adapter. #sourcecode[```tsx
import { Target } from "@/adapters/Target";
import { ReactNode } from "react";

export interface ChatProviderProps {
    children: ReactNode;
    adapter: Target;
}
  ```]

- *`ChatState.ts`* \ Descrive lo stato della chat e definisce lo stato iniziale. #sourcecode[```tsx
import { QuestionAnswer } from "./QuestionAnswer";

export interface ChatState {
  messages: QuestionAnswer[];
  loadingHistory: boolean;
  errorHistory: number;
  hasMore: boolean;
  hasToScroll: boolean;
}

export const initialState: ChatState = {
  messages: [],
  loadingHistory: true,
  errorHistory: 0,
  hasMore: false,
  hasToScroll: false,
};

  ```]

- *`CustomError.ts`* \ Definisce un errore personalizzato con un codice e dettagli opzionali, migliorando la gestione e il tracciamento degli errori. #sourcecode[```tsx
  export class CustomError extends Error {
    public code: number;
    public details?: any;

    constructor(code: number, message: string, details?: any) {
        super(message);
        this.code = code;
        this.details = details;
        Object.setPrototypeOf(this, CustomError.prototype);
    }
  }
  ```]

- *`Message.ts`* \ Rappresenta un singolo messaggio con il contenuto e il timestamp. #sourcecode[```tsx
  export interface Message {
    content: string;
    timestamp: string;
  }
  ```]

- *`QuestionAnswer.ts`* \ Modella la struttura per una domanda e la sua risposta, includendo flag per errori e stato di caricamento #sourcecode[```tsx
import { Message } from "./Message";

export interface QuestionAnswer {
    id: string;
    question: Message;
    answer: Message;
    error: number;
    loading: boolean;
    lastUpdated: string;
}
  ```]
  \
=== Gestione dello stato e del tema

Il frontend di BuddyBot inoltre utilizza un `Reducer` e due `Providers` che sono utilizzati per separare la logica e gestire lo stato in modo efficiente.

- Il *`ThemeProvider`* gestisce il tema visivo dell'applicazione, permettendo di applicare facilmente modalità chiare o scure (dark/light mode). Utilizzando il contesto di next-themes, consente a tutti i componenti dell'app di accedere e aggiornare dinamicamente il tema senza dover modificare manualmente ogni singolo elemento, migliorando l'esperienza utente e semplificando la gestione del design. Questo provider viene utilizzato all'interno del file `layout.tsx`. #sourcecode[```tsx
"use client";

import React from "react";
import { ThemeProvider as NextThemesProvider, ThemeProviderProps } from "next-themes";

export function ThemeProvider({ children, ...props }: ThemeProviderProps) {
    return (
        <NextThemesProvider {...props}>
            {children}
        </NextThemesProvider>
    );
}
  ```]

- Il *`ChatProvider`* è un provider che incapsula lo stato e le funzioni per gestire la chat, come il caricamento della cronologia e l'invio di messaggi. Utilizza il `useReducer` per gestire lo stato della chat, che include i messaggi, lo stato di caricamento, e gli errori. Ogni azione (come l'aggiunta di un messaggio o il caricamento della cronologia) è gestita tramite un tipo di azione definito nel reducer, che aggiorna lo stato in base al tipo di azione ricevuta. Questo provider viene utilizzato all'interno del file `ChatWindow.tsx`. #sourcecode[```tsx
import React from "react";
import { useContext, useReducer, useEffect } from "react";
import { chatReducer } from "@/reducers/chatReducer";
import { initialState } from "@/types/ChatState";
import { Message } from "@/types/Message";
import { QuestionAnswer } from "@/types/QuestionAnswer";
import { generateId } from "@/utils/generateId";
import { ChatContext } from "@/types/ChatContext";
import { ChatProviderProps } from "@/types/ChatProviderProps";
import { CustomError } from "@/types/CustomError";

export const ChatProvider = ({ children, adapter }: ChatProviderProps) => {
  const [state, dispatch] = useReducer(chatReducer, initialState);

  const loadHistory = async (): Promise<void> => {
    dispatch({ type: "LOAD_HISTORY_START" });
    try {
      if (state.messages.length === 0) {
        const olderMessages: QuestionAnswer[] = await adapter.requestHistory("", 10);
        for (let i = 0; i < olderMessages.length; i++) {
          if (olderMessages[i].answer.content.length > 100000) {
            olderMessages[i].error = 1;
          }
        }
        dispatch({ type: "LOAD_HISTORY_SUCCESS", payload: olderMessages, hasMore: !(olderMessages.length < 10) });

        dispatch({ type: "SCROLL_DOWN" });
      }
      else {
        const olderMessages: QuestionAnswer[] = await adapter.requestHistory(state.messages[0].id, 10);
        dispatch({ type: "LOAD_HISTORY_SUCCESS", payload: olderMessages, hasMore: !(olderMessages.length < 10) });
      }
    }
    catch (error) {
      if (error instanceof CustomError) dispatch({ type: "LOAD_HISTORY_ERROR", error: error.code });
      else dispatch({ type: "LOAD_HISTORY_ERROR", error: 500 });
    }
  };

  const sendMessage = async (text: string) => {
    const id = generateId();
    const newMessage: Message = {
      content: text,
      timestamp: new Date().toISOString(),
    };

    dispatch({ type: "ADD_MESSAGE_START", id: id, question: newMessage });
    dispatch({ type: "SCROLL_DOWN" });
    try {
      const botResponse: { answer: Message, id: string, lastUpdated: string } = await adapter.requestAnswer(newMessage);
      if (botResponse.answer.content.length > 100000) dispatch({ type: "ADD_MESSAGE_ERROR", id: id, error: 1 });
      else dispatch({ type: "ADD_MESSAGE_SUCCESS", id: id, answer: botResponse.answer, newid: botResponse.id, lastUpdated: botResponse.lastUpdated });

    }
    catch (error) {
      if (error instanceof CustomError) dispatch({ type: "ADD_MESSAGE_ERROR", id: id, error: error.code });
      else dispatch({ type: "ADD_MESSAGE_ERROR", id: id, error: 501 });
    }
  };

  useEffect(() => {
    loadHistory();
  }, []);

  return (
    <ChatContext.Provider value={{ state, dispatch, loadHistory, sendMessage }}>
      {children}
    </ChatContext.Provider>
  );
};

// Hook per usare il contesto
export const useChat = () => {
  const context = useContext(ChatContext);
  if (!context) {
    throw new Error("useChat must be used within a ChatProvider");
  }
  return context;
};
  ```]
- Il *`chatReducer`* gestisce lo stato della chat, aggiornandolo in base alle azioni ricevute, come il caricamento della cronologia o l'aggiunta di nuovi messaggi. La sua struttura modulare e centralizzata consente una gestione più chiara e prevedibile dello stato, migliorando la manutenibilità e la scalabilità dell'applicazione. Separando la logica di aggiornamento dello stato dalla UI, il reducer facilita l'implementazione di nuove funzionalità senza compromettere la coerenza del sistema, rendendo l'app più facilmente estensibile e mantenibile nel tempo. #sourcecode[```tsx
import { Message } from "@/types/Message";
import { ChatState } from "@/types/ChatState";
import { ChatAction } from "@/types/Action";

export const chatReducer = (state: ChatState, action: ChatAction): ChatState => {
  switch (action.type) {
    case "LOAD_HISTORY_START":
      return { 
        ...state, 
        loadingHistory: true,
        errorHistory: 0,
        hasMore: false,
      };
    case "LOAD_HISTORY_SUCCESS":
      return {
        ...state,
        messages: [...action.payload, ...state.messages],
        loadingHistory: false,
        errorHistory: 0,
        hasMore: action.hasMore,
      };
    case "LOAD_HISTORY_ERROR":
      return {
        ...state,
        loadingHistory: false,
        errorHistory: action.error,
        hasMore: false,
      };
    case "ADD_MESSAGE_START":
      return { 
        ...state, 
        messages: [...state.messages, { id: action.id, question: action.question, answer: {} as Message, error: 0, loading: true, lastUpdated: new Date().toISOString() }],
      };
    case "ADD_MESSAGE_SUCCESS":
      const updatedMessagesSuccess = state.messages.map((msg) => {
        if (msg.id === action.id) {
          return {
            ...msg,
            id: action.newid,
            answer: action.answer,
            loading: false,
            error: 0,
            lastUpdated: action.lastUpdated,
          };
        }
        return msg;
      });
      return { 
        ...state, 
        messages: updatedMessagesSuccess,
      };
    case "ADD_MESSAGE_ERROR":
      const updatedMessagesError = state.messages.map((msg) => {
        if (msg.id === action.id) {
          return {
            ...msg,
            loading: false,
            error: action.error,
          };
        }
        return msg;
      });
      return { 
        ...state, 
        messages: updatedMessagesError,
      };
    case "SCROLL_DOWN":
    return {
      ...state,
      hasToScroll: !state.hasToScroll,
    };
    default:
      return state;
  }
};
  ```]

=== Gestione e adattamento dei dati per la chat
Nel frontend di BuddyBot viene utilizzato il design pattern `Adapter` per gestire la comunicazione con le API e adattare i dati in un formato utilizzabile dall'applicazione.

- Il *`Adapter.ts`* implementa il pattern `Adapter`, che si occupa di adattare i dati ricevuti dalle API al formato richiesto dall'applicazione. Gestisce le richieste per la cronologia della chat e per ottenere le risposte alle domande, restituendo i dati come oggetti compatibili con il modello dell'app, come QuestionAnswer e Message. Le funzioni `requestHistory` e `requestAnswer` si occupano rispettivamente di recuperare la cronologia e le risposte, mentre i metodi privati all'interno dell'adapter trasformano i dati ricevuti in un formato che l'app può utilizzare facilmente. #sourcecode[```tsx
import { QuestionAnswer } from "@/types/QuestionAnswer";
import { Message } from "@/types/Message";
import { Target } from "./Target";
import { Adaptee } from "./Adaptee";
import { generateId } from "@/utils/generateId";
import { CustomError } from "@/types/CustomError";

export class Adapter implements Target {
    private adaptee: Adaptee;

    constructor() {
        this.adaptee = new Adaptee();
    }

    async requestHistory(id: string, offset: number): Promise<QuestionAnswer[]> {
        try {
            const jsonResponse = await this.adaptee.fetchHistory(id, offset);
            return this.adaptQuestionAnswerArray(jsonResponse);
        } catch (error) {
            if (error instanceof CustomError) throw error;
            throw new CustomError(500, "SERVER", "Errore interno del server");
        }
    }
    async requestAnswer(question: Message): Promise<{ answer: Message; id: string; lastUpdated: string }> {
        try {
            const answer = await this.adaptee.fetchQuestion(this.adaptMessageToJSON(question));
            return {
                answer: this.adaptMessage(answer.answer),
                id: answer.id,
                lastUpdated: answer.lastUpdated,
            };
        } catch (error) {
            if (error instanceof CustomError) throw error;
            throw new CustomError(501, "SERVER", "Errore interno del server");
        }
    }

    private adaptMessage(data: any): Message {
        return {
            content: data.content,
            timestamp: data.timestamp,
        };
    };

    private adaptQuestionAnswer(data: any): QuestionAnswer {
        return {
            id: data.id || generateId(),
            question: this.adaptMessage(data.question),
            answer: this.adaptMessage(data.answer),
            error: 0,
            loading: false,
            lastUpdated: data.lastUpdated,
        };
    };

    private adaptQuestionAnswerArray(dataArray: any[]): QuestionAnswer[] {
        return dataArray.map(data => this.adaptQuestionAnswer(data));
    };

    private adaptMessageToJSON(question: Message): any {
        return {
            text: question.content,
            date: question.timestamp,
        };
    };
}
  ```]

- Il *`Adaptee.ts`* Nasconde la complessità delle chiamate di rete e fornisce metodi semplificati per ottenere la cronologia della chat e risposte alle domande, gestendo internamente i dettagli delle comunicazioni con con l'API Gateway. #sourcecode[```tsx
import { CustomError } from "@/types/CustomError";

export class Adaptee {
    async fetchHistory(id: string, offset: number): Promise<any[]> {
        const controller = new AbortController();
        const timeoutId = setTimeout(() => controller.abort(), 25000);

        try {
            const response = await fetch(`http://${process.env.API_GATEWAY ?? 'localhost'}/api/get-storico?id=${id}&num=${offset}`, {
                method: "GET",
                headers: {
                    "Content-Type": "application/json",
                },
                signal: controller.signal,
            });
            clearTimeout(timeoutId);
            if (response.status >= 500) throw new CustomError(500, "SERVER", "Errore interno del server");
            if (response.status >= 400) throw new CustomError(400, "CONNESSIONE", "Errore interno del server");
            if (!response.ok) throw new CustomError(500, "SERVER", "Errore interno del server");
            return await response.json();
        } catch (error) {
            clearTimeout(timeoutId);
            if (error instanceof DOMException && error.name === "AbortError") throw new CustomError(408, "TIMEOUT", "Timeout della richiesta");
            if (error instanceof TypeError && error.message === "Failed to fetch") throw new CustomError(400, "CONNESSIONE", "Errore di connessione");
            if (error instanceof CustomError) throw error;
            throw new CustomError(500, "SERVER", "Errore interno del server");
        }
    }

    async fetchQuestion(data: any): Promise<any> {
        const controller = new AbortController();
        const timeoutId = setTimeout(() => controller.abort(), 20000);

        try {
            const response = await fetch(`http://${process.env.API_GATEWAY ?? 'localhost'}/api/get-risposta`, {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(data),
                signal: controller.signal,
            });
            clearTimeout(timeoutId);
            if (response.status >= 500) throw new CustomError(501, "SERVER", "Errore interno del server");
            if (response.status >= 400) throw new CustomError(401, "CONNESSIONE", "Errore interno del server");
            if (!response.ok) throw new CustomError(501, "SERVER", "Errore interno del server");
            return await response.json();
        } catch (error) {
            clearTimeout(timeoutId);
            if (error instanceof DOMException && error.name === "AbortError") throw new CustomError(409, "TIMEOUT", "Timeout della richiesta");
            if (error instanceof TypeError && error.message === "Failed to fetch") throw new CustomError(401, "CONNESSIONE", "Errore di connessione");
            if (error instanceof CustomError) throw error;
            throw new CustomError(501, "SERVER", "Errore interno del server");
        }
    }
}
  ```]
#pagebreak()

== Microservizio Api-Gateway

#figure(
    image(spc.diag_api_gateway, width: 100%, height: auto),
    caption: "Diagramma UML del microservizio Api-Gateway",
) 



Il microservizio *API Gateway* svolge un ruolo cruciale nell'architettura di #glossary("BuddyBot"), fungendo da punto di ingresso centralizzato per tutte le richieste provenienti dal #glossary("front-end") e indirizzandole verso i microservizi appropriati, garantendo il routing delle richieste e la gestione delle risposte.

Come per gli altri microservizi, anche l'API Gateway è stato progettato secondo i principi dell'architettura esagonale, al fine di garantire una netta separazione tra la logica di business e le applicazioni esterne. L'obiettivo è quello di mantenere il sistema flessibile, testabile e facilmente manutenibile.

In particolare, l'API Gateway interagisce con i microservizi tramite porte e adattatori dedicati, utilizzando #glossary("Rest-Api") per comunicare con il #glossary("front-end") e  #glossary("RabbitMQ") per la messaggistica con gli altri microservizi. Questo approccio consente di mantenere l'API Gateway completamente agnostico rispetto ai dettagli di implementazione dei microservizi, favorendo una maggiore scalabilità nel futuro.

Compiti dell'API gateway:
- comunicazione attraverso #glossary("Rest-Api") con il front-end (`@Get('get-storico')` e  `@Post('get-risposta')`);
- instradamento delle richieste ai microservizi appropriati ( Storico, ChatBot e Information):
  - recupero di nuova risposta dal servizio di Chatbot;
  - recupero dello storico dal servizio di Storico;
  - scheduling del fetch delle informazioni nel microservizio  "Information".


=== Risposta Use-Case:

L'endpoint 'get-risposta' riceve dal #glossary("front-end") una richiesta `@Post('get-risposta')` contenente il corpo "(text)" e la data "(date)" della domanda,

#sourcecode[```tsx
  async getRisposta(@Body('text') text: string, @Body('timestamp') timestamp: string): Promise<ChatDTO>   
  ```]

all'interno di un 

#sourcecode[```tsx
export class ReqAnswerDTO {
    constructor(
      public readonly text: string,
      public readonly date: string
    ) {}
  }
  ```]
  
e restituisce un oggetto "ChatDTO" contenente la risposta dalla domanda  posta.

#sourcecode[```tsx
import { MessageDto } from "./message.dto";
export class ChatDTO {
  constructor(
    public readonly id: string,
    public readonly question: MessageDto,
    public readonly answer: MessageDto,
    public readonly lastUpdate: string,
  ) {}
}

export class MessageDto {
  constructor(
    public readonly content: string,
    public readonly timestamp: string,
  ) {}
}
  ```]

Prima però la richiesta viene mandata al microservizio di "Chatbot" che restituisce una risposta

#sourcecode[```tsx
export class ProvChat {
  constructor(
    public readonly question: string,
    public readonly answer: string,
    public readonly timestamp: string,
  ) {}
}
  ```]

contenente la domanda fatta e la risposta che è stata generata.

Prima di essere passata verso il front-end, "ProvChat" viene inviata al microservizio "Storico"

#sourcecode[```tsx
postStorico(chat: ProvChat): Promise<Chat>;
  ```]

, il quale salva e assegna un UUID alla nuova #glossary ("Chat"), oltre alla data del #glossary ("Fetch"), in 'lastUpdate' a cui appartengono le informazioni con cui è stata generata. Lo "Storico" ritorna un oggetto "Chat" completo che quindi viene passato, attraverso l' #glossary("Endpoint") al front-end per essere visualizzato.



=== Storico Use-Case:

Usato per caricare le chat salvate nel database del microservizio "Storico" nel front-end.
L'endpoint 'get-storico' riceve una richiesta all'interno di 

#sourcecode[```tsx
  export class RequestChatDTO {
  constructor(
    public readonly id: string,
    public readonly numChat: number
  ) {}
}
  ```]

con ("id") UUID dell'ultima chat visualizzabile nell'interfaccia grafica front-end e un ("numChat"), numero di chat(domanda + risposta) antecedenti a questa da caricare insieme.

#sourcecode[```tsx
 async getStorico(@Query('id') id?: string,@Query('num') numChat?: number): Promise<ChatDTO[]>
  ```]

e restituisce al front-end un array di "Chat" invece che una sola. Se il sistema è stato appena avviato, viene mandata una richiesta con id ='  ' e num = 1 che restituisce l'ultima chat in ordine cronologico salvata nel database.

Le "Chat" recuperate con 

#sourcecode[```tsx
 getStorico(req: RequestChatCMD): Promise<Chat[]>;
  ```]

vengono mandate al front-end con questo formato #glossary ("Json")

#sourcecode[```json
.
.
[
      {
        "id": "ID DELLA CHAT",
        "question": {
          "content": "Domanda"
          "timestamp": "DATA DOMANDA"
        },
        "answer": {
          "content": "Risposta",
          "timestamp": "DATA RISPOSTA"
        }
      }
]
.
.
  ```]

dove vengono suddivise e visualizzate in ordine cronologico .


=== Scheduling del Fetch:
Inoltre Api-Gateway si occupa anche dello scheduling del fetch delle informazioni nel microservizio di "Information" e del passaggio della data in cui viene effettuato al microservizio di "Storico" con

#sourcecode[```tsx
postUpdate(LastFetch:string): Promise<Boolean>;
  ```]
per essere salvata e poi fornita all'utente all'interno della #glossary ("Chat") che riceve indicando a quando risalgono le informazioni usate per formulare la risposta. 

Prima però viene fatto un check per controllare se esiste una data di #glossary("fetch") nel database con

#sourcecode[```tsx
getLastUpdate(): Promise<LastUpdateCMD>;
  ```]

, se non esiste significa che non è stato ancora fatto nessun fetch e in questo caso viene effettuato un fetch completo che recupera tutte le informazioni. In questo caso noi abbiamo messo la data di qualche mese fa per facilitare il test siccome il fetch, soprattutto di github, richiede tempo, ma se non si mettesse una data viene fatto il fetch di tutto.

Nel caso invece esista questa viene usata come data di partenza.

Per gestire lo scheduling viene usato `@Cron` della libreria  `@nestjs/schedule`(in questo caso è stato impostato per essere effettuato ogni 5 minuti su richiesta dell'azienda). Oltre alla data vengono  passati anche una serie di oggetti che contengono dati sulle repository che vengono usati dal microservizio di "Information" per fare il fetch delle informazioni.

#sourcecode[```tsx
  ...
export class TasksService implements OnModuleInit {
  private readonly logger = new Logger(TasksService.name);

  constructor(
    @Inject('InfoPort') private readonly infoPort: InfoPort,
    @Inject('StoricoPort') private readonly storicoPort: StoricoPort,
  ) {}

  @Cron('0 */5 * * * *')
  async handleCron() {
    this.logger.debug('Esecuzione FETCH ogni TOT (ogni 5 min)...');
    await this.runFetch();
  }

  private async runFetch() {
    try {
      this.logger.debug('Richiesta della data di ultimo FETCH (SERVICE)');
      const isoDateString = await this.storicoPort.getLastUpdate();
      
      let DataFetch: Date;

      if (!isoDateString?.LastFetch) {

        DataFetch = new Date();
        DataFetch.setMonth(DataFetch.getMonth() - 9);
        this.logger.warn(`Nessuna data FETCH (SERVICE) precedente. Uso data di fallback: ${DataFetch}`);
      } else {
        DataFetch = new Date(isoDateString.LastFetch);
        this.logger.debug(`FETCH (SERVICE) da data salvata trovata: ${DataFetch}`);
      }

      const boardId = 1;
      const jiraCmd = new FetchJiraCMD(boardId, DataFetch);
      const confCmd = new FetchConfluenceCMD(DataFetch);

      const owner = process.env.GITHUB_OWNER || 'SweeTenTeam';
      const repoName = process.env.GITHUB_REPO || 'BuddyBot';
      const branch = process.env.GITHUB_BRANCH || 'develop';
      const repoCMD = new RepoGithubCMD(owner, repoName, branch);
      const githubCmd = new FetchGithubCMD([repoCMD], DataFetch);

      const resultFetchJira = await this.infoPort.fetchUpdateJira(jiraCmd);
      const resultFetchConf = await this.infoPort.fetchUpdateConf(confCmd);
      const resultFetchGithub = await this.infoPort.fetchUpdateGithub(githubCmd);

      if (resultFetchJira && resultFetchGithub && resultFetchConf) {
        this.logger.log(`FETCH (SERVICE) completato con successo.`);

        const NewDataFetch = new Date();
        const lastUpdateCmd = new LastUpdateCMD(NewDataFetch.toISOString());
        const result = await this.storicoPort.postUpdate(lastUpdateCmd);

        this.logger.debug(`Salvataggio data fetch riuscito: ${result}`);
      } else {
        this.logger.error(`FETCH (SERVICE) fallito: almeno uno dei servizi ha dato errore.`);
      }
    } catch (error) {
      this.logger.error('Errore nel FETCH (SERVICE) iniziale', error);
    }
  }
}
  ```]

Con *'FetchGithubCMD'* che contiene  le informazioni della repo a cui fare riferimento, questi sono salvati in un file '.env' per essere facilmente modificabili.

#sourcecode[```tsx
  
import { RepoGithubCMD } from "./RepoGithubCMD.js";
export class FetchGithubCMD {
    constructor (
        public readonly repoDTOList: RepoGithubCMD[],
        public readonly lastUpdate: Date
    ){}
}
//CHE USA
export class RepoGithubCMD{
    constructor(
        public readonly owner: string,
        public readonly repoName: string,
        public readonly branch_name: string
    ){}
}
  ```]
  
  Sono state messe 3 diverse funzioni per il fetch , una per ogni fonte, per rendere il codice facilmente espandibile in futuro, nel caso si vogliano aggiungere nuovi fonti basterà aggiungere la loro funzione e creare il loro oggetto con i dati necessari. Ma anche nel caso si voglia dare tempi di scheduling differenti ad ogni fonte e salvare nel database date di diverse per ciascuna.
  
#sourcecode[```tsx

export interface InfoPort {
  fetchUpdateGithub(req: FetchGithubCMD): Promise<Boolean>;
  fetchUpdateJira(req: FetchJiraCMD): Promise<Boolean>;
  fetchUpdateConf(req: FetchConfluenceCMD): Promise<Boolean>;
}
  ```]

== Microservizio Chatbot
#figure(image(spc.chatUml, width:118%, height: auto), caption: [UML ChatBot])

Il microservizio Chatbot rappresenta una componente cruciale all'interno dell'architettura di #glossary("BuddyBot"), essendo responsabile dell'elaborazione delle domande degli utenti e della generazione di risposte pertinenti. Questo microservizio è progettato secondo i principi dell'architettura esagonale garantendo una netta separazione tra la logica di business e i dettagli implementativi.

La sua funzione principale è quella di ricevere una domanda dall'utente, arricchirla con informazioni contestuali recuperate dal microservizio Informazioni, e utilizzare queste informazioni per generare una risposta accurata e rilevante attraverso un modello di linguaggio esterno (LLM).

=== Architettura e Componenti

L'architettura del microservizio è strutturata in diversi layer, ciascuno con responsabilità ben definite:

==== Domain Layer
Il Domain Layer contiene le entità core e i value objects che rappresentano i concetti fondamentali del dominio, indipendenti da qualsiasi tecnologia specifica:

- *Entità*:
  - `Chat`: Rappresenta una conversazione completa con domanda e risposta
  - `Information`: Contiene informazioni contestuali recuperate dal database vettoriale
  - `Metadata`: Mantiene i metadati associati alle informazioni (origine, tipo, ID)

- *Value Objects*:
  - `ReqAnswerCmd`: Command object che incapsula la richiesta dell'utente

==== Application Layer
L'Application Layer coordina il flusso di dati e implementa i casi d'uso dell'applicazione, orchestrando il lavoro delle entità del dominio:

- *Use Cases (Interfaces)*:
  - `ElaborazioneUseCase`: Definisce il contratto per l'elaborazione delle domande e la generazione di risposte

- *Ports (Interfaces)*:
  - `LLMPort`: Interfaccia che definisce le operazioni per interagire con modelli di linguaggio esterni
  - `VectorDbPort`: Interfaccia che definisce le operazioni per recuperare informazioni dal database vettoriale

- *Services*:
  - `ElaborazioneService`: Implementazione concreta di `ElaborazioneUseCase` che coordina l'interazione tra il recupero delle informazioni contestuali e la generazione delle risposte attraverso il modello di linguaggio

Questo layer implementa la logica applicativa senza dipendere direttamente da meccanismi specifici di persistenza o comunicazione, utilizzando le interfacce (ports) per interagire con il mondo esterno.

==== Adapters Layer
L'Adapters Layer traduce le interazioni tra il core dell'applicazione e il mondo esterno, gestendo le conversioni di formato e protocollo:

- *Adapters In*:
  - `ChatController`: Riceve le richieste tramite RabbitMQ, le converte in command objects (`ReqAnswerCmd`) e le passa al caso d'uso appropriato (`ElaborazioneUseCase`)

- *Adapters Out*:
  - `GroqAdapter`: Implementa `LLMPort` per interagire con il modello di linguaggio #glossary("Groq"), convertendo i formati di dominio in richieste API specifiche
  - `VectorDbAdapter`: Implementa `VectorDbPort` per comunicare con il microservizio DB Vettoriale, gestendo la serializzazione e deserializzazione dei messaggi RabbitMQ

- *Data Transfer Objects (DTOs)*:
  - `ReqAnswerDTO`: Oggetto di trasferimento dati per ricevere le richieste in ingresso dal client
  - `ChatDTO`: Oggetto di trasferimento dati per le risposte (definito ma non utilizzato nell'implementazione attuale)

Gli adapter isolano il core dell'applicazione dai dettagli di implementazione delle tecnologie esterne, consentendo di sostituire facilmente tali tecnologie senza modificare la logica di business.

==== Infrastructure Layer
L'Infrastructure Layer fornisce implementazioni concrete per servizi esterni, configurazioni e meccanismi di comunicazione:

- *Clients*:
  - `VectorDbClient`: Client che gestisce la comunicazione con il microservizio DB Vettoriale tramite RabbitMQ, incapsulando i dettagli di connessione e serializzazione
  - `ChatGroq`: Client di terze parti per l'interazione con l'API di #glossary("Groq"), configurato per utilizzare il modello di linguaggio "qwen-2.5-32b"

- *Configuration*:
  - `ConfigModule`: Modulo di NestJS che gestisce il caricamento e l'accesso alle variabili d'ambiente
  - `AppModule`: Modulo principale dell'applicazione che configura le dipendenze, i provider e i controller

- *Communication*:
  - `rabbitMQConfig`: Configurazione per la connessione a RabbitMQ, definendo code e opzioni

Questo layer si concentra esclusivamente sui dettagli tecnici e sulle implementazioni specifiche delle tecnologie, mantenendo queste preoccupazioni separate dalla logica di business.

=== Flusso Principale di Elaborazione

Il flusso principale per la generazione di una risposta segue questi passaggi:

1. *Ricezione della richiesta*
   - Un messaggio contenente la domanda dell'utente viene ricevuto tramite RabbitMQ
   - Il `ChatController` gestisce il messaggio e crea un comando `ReqAnswerCmd`

2. *Ricerca di informazioni contestuali*
   - Il servizio `ElaborazioneService` utilizza `VectorDbPort` per cercare informazioni rilevanti nel #glossary("database vettoriale")
   - La richiesta viene inoltrata al microservizio Informazioni tramite RabbitMQ

3. *Generazione della risposta*
   - Le informazioni contestuali recuperate vengono combinate con la domanda originale
   - Il servizio utilizza `LLMPort` per interagire con un modello di linguaggio (#glossary("Groq"))
   - La risposta generata viene formattata come oggetto `Chat`
#pagebreak()
4. *Restituzione della risposta*
   - Il risultato viene restituito al chiamante (API Gateway)

=== Componenti Principali

==== Controllers

- *ChatController*: Punto di ingresso per le richieste RabbitMQ. Gestisce il pattern di messaggistica "get-answer" e converte i dati di richiesta (`ReqAnswerDTO`) in comandi di dominio (`ReqAnswerCmd`).

==== Use Cases e Ports

- *ElaborazioneUseCase*: Interfaccia che definisce il contratto per il caso d'uso principale di generazione di risposte.
- *LLMPort*: Interfaccia che definisce il contratto per l'interazione con modelli di linguaggio.
- *VectorDbPort*: Interfaccia che definisce il contratto per l'interazione con il #glossary("database vettoriale").

==== Services

- *ElaborazioneService*: Implementazione principale del caso d'uso di elaborazione delle domande. Gestisce il flusso complessivo dell'elaborazione della richiesta:
  1. Ricerca di informazioni contestuali rilevanti tramite `VectorDbPort`
  2. Invio della domanda e del contesto al modello di linguaggio tramite `LLMPort`
  3. Restituzione della risposta generata

#sourcecode[```typescript
@Injectable()
export class ElaborazioneService implements ElaborazioneUseCase {
  constructor(
    @Inject(LLM_PORT)
    private readonly llmPort: LLMPort,
    @Inject(VECTOR_DB_PORT)
    private readonly vectorDbPort: VectorDbPort,
  ) {}

  async getAnswer(req: ReqAnswerCmd): Promise<Chat> {
      // 1. Ricerca del contesto rilevante nel database vettoriale tramite RabbitMQ
      const relevantContext = await this.vectorDbPort.searchVectorDb(req);
      console.log(`Retrieved ${relevantContext.length} relevant documents: `);
      
      // 2. Genera la risposta utilizzando l'LLM con il contesto recuperato
      const chat = await this.llmPort.generateAnswer(req, relevantContext);
      
      return chat;
  }
}
```]
#pagebreak()
==== Adapters

- *GroqAdapter*: Implementa `LLMPort` per interagire con il modello di linguaggio #glossary("Groq"). Utilizza #glossary("LangChain") per gestire i prompt e il parsing delle risposte.

#sourcecode[```typescript
@Injectable()
export class GroqAdapter implements LLMPort {
  constructor(private readonly groq: ChatGroq) {
    
  }

  async generateAnswer(req: ReqAnswerCmd, info: Information[]): Promise<Chat> {
    const prompt = PromptTemplate.fromTemplate(`Answer the question based only on the following context: {context} Question: {question}`);
    const ragChain = await createStuffDocumentsChain({
        llm: this.groq,
        prompt,
        outputParser: new StringOutputParser(),
    });
    const documents: Document[] = [];
    for(const information of info){
      documents.push({
        pageContent: information.content, 
        metadata: {
          'origin': information.metadata.origin,
          'type': information.metadata.type,
          'originId': information.metadata.originID
        }
      });
    }
    const response = await ragChain.invoke({
      question: req.getText(), 
      context: documents
    });
    return new Chat(req.getText(), response);
  }
}
```]

#pagebreak()

- *VectorDbAdapter*: Implementa `VectorDbPort` per interagire con il microservizio DB Vettoriale tramite RabbitMQ.

#sourcecode[```typescript
@Injectable()
export class VectorDbAdapter implements VectorDbPort {
    constructor(private client: VectorDbClient) {}
    
    async searchVectorDb(req: ReqAnswerCmd): Promise<Information[]> {
        let result: Information[] = [];
        const res = await this.client.sendMessage("retrieve.information", {query: req.getText()});
        
        for(const r of JSON.parse(JSON.stringify(res))) {
            let i = new Information(
                r.content, 
                new Metadata(r.metadata.origin, r.metadata.type, r.metadata.originID)
            );
            result.push(i);
        }
        
        return result;
    }
}
```]

==== Entità e Value Objects

- *Chat*: Rappresenta una conversazione completa, contenente sia la domanda che la risposta.

#sourcecode[```typescript
export class Chat {
  private question: string;
  private answer: string;

  constructor(question: string, answer: string) {
    this.question = question;
    this.answer = answer;
  }

  getQuestion(): string {
    return this.question;
  }

  getAnswer(): string {
    return this.answer;
  }
}
```]
#pagebreak()

- *Information*: Rappresenta le informazioni contestuali recuperate dal #glossary("database vettoriale").

#sourcecode[```typescript
export class Information {
  constructor(
    public readonly content: string,
    public readonly metadata: Metadata,
  ){}

  getContent(): string {
    return this.content;
  }

  getMetadata(): Metadata {
    return this.metadata;
  }
}
```]

- *Metadata*: Contiene metadati associati alle informazioni contestuali.

#sourcecode[```typescript
export class Metadata {
  constructor(
    public readonly origin: string,
    public readonly type: string,
    public readonly originID: string,
  ) {}

  getOrigin(): string {
    return this.origin;
  }

  getType(): string {
    return this.type;
  }

  getOriginID(): string {
    return this.originID;
  }
}
```]

=== Integrazione con LangChain e Groq

Il microservizio utilizza #glossary("LangChain") come framework per semplificare l'interazione con i modelli di linguaggio. In particolare:

1. *Costruzione dei Prompt*: Utilizza `PromptTemplate` per strutturare i prompt con un formato coerente.
2. *Catene di Elaborazione*: Utilizza `createStuffDocumentsChain` per combinare documenti di contesto con la domanda dell'utente.
3. *Parsing delle Risposte*: Utilizza `StringOutputParser` per estrarre il testo dalla risposta del modello.

Per l'integrazione con il modello #glossary("Groq"), il servizio utilizza il modello "qwen-2.5-32b" con i seguenti parametri:
- Limite di token: 6000
- Numero massimo di tentativi: 2

#pagebreak()

#sourcecode[```typescript
{
  provide: ChatGroq,
  useFactory: () => {
    return new ChatGroq({
      apiKey: process.env.GROQ_API_KEY,
      model: "qwen-2.5-32b",
      maxTokens: 6000,
      maxRetries: 2,
    });
  },
}
```]

=== Comunicazione con Altri Microservizi

La comunicazione con altri microservizi avviene principalmente tramite RabbitMQ:

1. *Ricezione di Richieste dall'API Gateway*:
   - Coda: "chatbot-queue"
   - Pattern di messaggistica: "get-answer"
   - Payload: `ReqAnswerDTO` contenente il testo della domanda e il timestamp

2. *Invio di Richieste al DB Vettoriale*:
   - Coda: "information-queue"
   - Pattern di messaggistica: "retrieve.information"
   - Payload: Oggetto contenente la query da cercare

La configurazione RabbitMQ è definita nel file `main.ts`:

#sourcecode[```typescript
const app = await NestFactory.createMicroservice<MicroserviceOptions>(
  AppModule,
  {
    transport: Transport.RMQ,
    options: {
      urls: [process.env.RABBITMQ_URL || 'amqp://rabbitmq'],
      queue: 'chatbot-queue',
      queueOptions: {
        durable: true,
      },
    },
  },
);
```]

#pagebreak()
=== Configurazione e Ambiente

Il microservizio utilizza variabili d'ambiente per gestire le configurazioni:

- `RABBITMQ_URL`: URL del server RabbitMQ (default: #raw("amqp://rabbitmq"))
- `GROQ_API_KEY`: Chiave API per l'accesso al servizio Groq

La configurazione dell'ambiente è gestita tramite il modulo `ConfigModule` di NestJS, che carica automaticamente le variabili d'ambiente all'avvio dell'applicazione.

=== Conclusione

Il microservizio Chatbot rappresenta il cuore intelligente di #glossary("BuddyBot"), responsabile della generazione di risposte accurate e contestualmente rilevanti. La sua architettura esagonale garantisce una chiara separazione delle responsabilità, facilitando la manutenzione e l'evoluzione del sistema nel tempo. L'integrazione con #glossary("LangChain") e #glossary("Groq") fornisce capacità avanzate di elaborazione del linguaggio naturale, mentre la comunicazione tramite RabbitMQ assicura un'integrazione efficiente con gli altri componenti del sistema.

#set page(flipped: true)
== Microservizio Storico Chat
\
\

#figure(
  image(spc.prog_history, width:118%, height: auto), caption: "Progettazione del Microservizio Storico Chat"
)
#set page(flipped: false)
Il microservizio dello Storico riveste un ruolo fondamentale per il corretto funzionamento di #glossary("BuddyBot"): esso si occupa della gestione delle interazioni con il database relazionale #glossary("PostgreSQL"), prelevando e inserendo dati relativi alle conversazioni in modo affidabile.
Come per gli altri microservizi, anche questo è stato progettato secondo i principi dell'architettura esagonale, al fine di garantire una netta separazione tra la logica di business e i dettagli di implementazione tecnologica.
In particolare, l'interazione con PostgreSQL è delegata a un repository dedicato (`ChatRepository`), che utilizza #glossary("TypeORM") per l'accesso e la gestione delle entità persistite.
La logica applicativa, invece, accede ai dati attraverso alle Port & Adapter di output, fungendo da mediatori con il repository.
Questo approccio consente di mantenere l'"application" completamente agnostica rispetto alla tecnologia di persistenza, favorendo una maggiore manutenibilità, testabilità e flessibilità.

=== Quattro casi d'uso
Questo microservizio è stato progettato per l'esecuzione di 4 principali operazioni.
- *Recupero dello Storico della Chat*
  - L'obiettivo è quello di recuperare dal database una specifica quantità di messaggi richiesti
- *Inserimento di nuovi messaggi* 
  - L'obiettivo è quello di inserire nuovi messaggi presenti nella #glossary("UI") nel database, in maniera tale da permettere successivi recuperi
- *Inserimento dell'ultima data di recupero informazioni* (#glossary("Retrieval Periodico"))
  - Il sistema esegue un recupero periodico dei dati provenienti da #glossary("Jira"), #glossary("GitHub"), #glossary("Confluence"). In questo microservizio si vuole memorizzare l'ultima data di recupero nel database (sovrascrivendo quella precedente se presente), così da poterla restituire insieme ai dati della chat.
- *Ottenimento della data di ultimo recupero / aggiornamento informazioni*
  - L'obiettivo è quello di recuperare correttamente nella tabella dedicata l'unico record presente rappresentante la data in cui è stato eseguito l'ultimo #glossary("Retrieval Periodico").

Nelle prossime sezioni verranno riepilogati i 4 flussi per le rispettive operazioni.

=== Recupero dello Storico della Chat

- *`FetchRequestDTO`*: rappresenta il Data Transfer Object utilizzato per contenere la richiesta di recupero dello storico. Include due parametri, ovvero:
  - ID: identificativo che rappresenta l'ultima `Chat` (coppia di messaggi, come verrà spiegato nella specifica classe) precedentemente caricata. Questo valore viene utilizzato come punto di riferimento cronologico per effettuare il fetch dei messaggi successivi, seguendo un ordinamento decrescente (dal più recente al meno recente);
  - numChat: quantità delle chat che si vogliono recuperare nella medesima operazione.
  Il DTO in questo caso è essenziale per permettere un corretto trasferimento dei dati tra microservizi e livelli differenti.

- *`FetchHistoryController`*: corrisponde al consumer, rimane in ascolto nella coda 'fetch_queue' e in ricezione ottiene un messaggio contenente una richiesta presente in un oggetto DTO - `FetchRequestDTO`. Il controller si occupa di trasformare il DTO in un oggetto `FetchHistoryCmd`, delegando l'elaborazione allo _UseCase_ (interface) e alla sua corrispettiva implementazione, ossia al _Service_. Una volta che quest'ultimo tornerà l'oggetto di dominio, il controller lo convertirà nuovamente in ChatDTO affinchè vengano rispettati i principi del modello esagonale.

- *`FetchHistoryCmd`*: command object creato a partire dal DTO, formalizza e incapsula i parametri effettivi della richiesta. Utile a separare i dati provenienti dall'esterno dal formato atteso dalla logica di business, garantendo isolamento tra livelli. I parametri presenti all'interno di tale richiesta sono sempre 'ID' e 'numChat', citati e spiegati in precedenza per il `FetchRequestDTO`.

- *`FetchHistoryUseCase`*: interfaccia che rappresenta la porta di ingresso della logica applicativa per il recupero dello storico. Utile per garantire disaccopiamento tra _Controller_ e _Service_. Nel metodo esposto per il recupero viene passsato `FetchHistoryCmd` come input, mentre in output si ritorna l'oggetto di dominio, ossia `Chat`.

- *`FetchHistoryService`*: implementazione concreta dell'interfaccia precedente, è la classe principale della business logic. Non interagisce direttamente con il database, il suo ruolo è quello di *orchestrare* un corretto recupero dello storico presente in database. In linea con i principi dell'architettura esagonale, questa classe consente di mantenere la logica di business indipendente dall'infrastruttura.

- *`FetchHistoryPort`*: questa interfaccia rappresenta la porta di uscita (output port) dal punto di vista della logica applicativa. Astrae il meccanismo con cui vengono recuperati i dati dal livello di persistenza.

- *`FetchHistoryAdapter`*: implementazione concreta dell'interfaccia spiegata in precedenza, funge da punto di collegamento tra logica applicativa al sistema di persistenza ma non accede al database. Il suo primo compito è quello di formalizzare la richiesta ricevuta (`FetchHistoryCmd`) in un formato adatto al repository, estraendo e passando in modo esplicito i parametri (id, numChat) necessari alla query. Dopodichè riceve i dati persistiti (`ChatEntity`), li trasforma in dati di dominio (`Chat`) e li restituisce al _Service_.

- *`ChatRepository`*: È la componente incaricata dell'accesso diretto a PostgreSQL, utilizzando #glossary("TypeORM") per la gestione delle entità e delle query. Fornisce il metodo fetchStoricoChat, che implementa la logica di recupero dei messaggi in due scenari distinti:
  - nel caso di primo accesso a BuddyBot (quando non è fornito un id), vengono recuperate le conversazioni più recenti, ordinate per data in modo decrescente;
  - nei casi successivi, viene prima identificata la chat corrispondente all'id fornito e, a partire dalla sua data, vengono recuperate le conversazioni precedenti.
  A seguire, viene inserito il metodo "fetchStoricoChat()" presente in questa classe.
  #sourcecode[```tsx
  ...
  export class ChatRepository {
    constructor(
      @InjectRepository(ChatEntity) //tabella db della chat
      private readonly chatRepo: Repository<ChatEntity>,

      @InjectRepository(LastUpdateEntity) //tabella db con unico record data ultimo retrieval info
      private readonly lastUpdateRepo: Repository<LastUpdateEntity>,
    ) {}


    async fetchStoricoChat(lastChatId: string, numChat?: number): Promise<ChatEntity[]> {
    try {
      const take = numChat ? numChat : 5;

      //caso senza ID (quindi primo accesso)
      if (!lastChatId) {
        const lastChats = await this.chatRepo.find({
          order: { answerDate: 'DESC' },
          take,
        });
        return lastChats.slice().reverse()
      }

      //caso con ID, trovo chat corrispondente e prendo le precedenti (ragionando in ordine cronologico)
      const lastChat = await this.chatRepo.findOne({
        where: { id: lastChatId },
      });

      if (!lastChat) {
        throw new Error('Last chat ID not found');
      }

      const previousChats = await this.chatRepo.find({
        where: {
          answerDate: LessThan(lastChat.answerDate),
        },
        order: { answerDate: 'DESC' },
        take: take,
      });
      const combo = previousChats.slice().reverse()
      return combo;

    } catch (error) {
      console.error('Error during History-fetch:', error);
      throw new Error('Error during History-fetch');
    }
    ...
  }
  ```]

- *`Chat`*: rappresenta l'entità di dominio; una singola Chat rappresenta una *coppia di messaggi*, ossia include una domanda e la rispettiva risposta. La conversazione con #glossary("BuddyBot"), quindi, si compone di Chats. 
  #sourcecode[```tsx
  export class Chat {
    constructor(
      public readonly id: string,
      public readonly question: Message,
      public readonly answer: Message,
      public readonly lastFetch: string
    ) {}
  }
  ```]
- *`ChatDTO`*: data transfer object di uscita, costruito dal controller a partire dagli oggetti Chat. 

- *`Message`*: rappresenta l'entità di dominio che incapsula le informazioni relative a un singolo messaggio all'interno di una `Chat`.
  #sourcecode[```tsx
  export class MessageDTO { 
  constructor(
    public readonly content: string,
    public readonly timestamp: string,
  ) {}
}
  ```]
- *`MessageDTO`*: data transfer object utilizzato per esporre i singoli messaggi all'esterno.

- *`ChatEntity`*: rappresenta la mappatura dell'entità "Chat" nel database PostgreSQL, gestita tramite #glossary("TypeORM"). E' associata a una tabella generata automaticamente e viene utilizzata per persistere ogni conversazione tra l'utente e BuddyBot. I principali campi della classe sono:
  - id: chiave primaria generata in formato UUID;
  - question: il contenuto testuale della domanda posta dall'utente;
  - questionDate: timestamp associato alla domanda. Il valore di questo campo viene esplicitamente passato tramite la richiesta di inserimento e conservato così com'è nel database;
  - answer: il contenuto testuale della risposta generata;
  - answerDate: a differenza della _questionDate_, è un timestamp generato automaticamente al momento dell'inserimento nel database. È gestito da TypeORM tramite il decoratore \@CreateDateColumn, che assegna il valore corrente (now) senza necessità di specificarlo a livello applicativo.
  - lastFetch: rappresenta la data dell'ultimo "#glossary("Retrieval Periodico")" eseguito, dando all'utilizzatore la possibilità di capire quanto recenti (o meno) sono i dati elaborati dal chatbot.
  #sourcecode[```tsx
  import { Column, CreateDateColumn, Entity, PrimaryGeneratedColumn } from "typeorm";

  @Entity()
  export class ChatEntity {
      @PrimaryGeneratedColumn('uuid') //primaryKey
      id: string;

      @Column()
      question: string;

      @Column({ type: 'timestamptz' })
      questionDate: Date;

      @Column()
      answer: string;

      @CreateDateColumn({ type: 'timestamptz', default: () => 'CURRENT_TIMESTAMP' })
      answerDate: Date = new Date();

      @Column()
      lastFetch: string;
  }
  ```]

=== Inserimento di nuovi messaggi

- *`InsertRequestDTO`*: rappresenta il Data Transfer Object utilizzato per contenere la richiesta di inserimento nel database di una nuova Chat (coppia di messaggi). Include tre parametri, ovvero:
  - question: una stringa contenente la domanda posta;
  - timestamp: una stringa contenente la data+orario dell'invio della domanda
    - si osservi che viene passata solamente quella domanda poiché quella della risposta viene decretata una volta avvenuto l'inserimento in database;
  - answer: una stringa contenente la risposta generata dal chatbot.
  Il DTO in questo caso è essenziale per permettere un corretto traferimento dei dati tra microservizi e livelli differenti.

- *`InsertChatController`*: corrisponde al consumer, rimane in ascolto nella coda 'chat_message' e in ricezione ottiene un messaggio contenente una richiesta presente in un oggetto DTO - `InsertRequestDTO`. Il controller si occupa di trasformare il DTO in un oggetto `InsertChatCmd`, delegando l'elaborazione allo _UseCase_ (interface) e alla sua corrispettiva implementazione, ossia al _Service_. Una volta che quest'ultimo tornerà l'oggetto di dominio, il controller lo convertirà nuovamente in ChatDTO affinchè vengano rispettati i principi del modello esagonale.

- *`InsertChatCmd`*: command object creato a partire dal DTO, formalizza e incapsula i parametri effettivi della richiesta. Utile a separare i dati provenienti dall'esterno dal formato atteso dalla logica di business, garantendo isolamento tra livelli. I parametri presenti all'interno di tale richiesta rimangono i medesimi citati e spiegati in precedenza per il `InsertRequestDTO`.

- *`InsertChatUseCase`*: interfaccia che rappresenta la porta di ingresso della logica applicativa per l'inserimento in database di una nuova `Chat`. Utile per garantire disaccopiamento tra _Controller_ e _Service_.

- *`InsertChatService`*: implementazione concreta dell'interfaccia precedente, è la classe principale della business logic. Non interagisce direttamente con il database, il suo ruolo è quello di *orchestrare* un corretto inserimento di una `Chat` nel database. In linea con i principi dell'architettura esagonale, questa classe consente di mantenere la logica di business indipendente dall'infrastruttura.

- *`InsertChatPort`*: questa interfaccia rappresenta la porta di uscita (output port) dal punto di vista della logica applicativa. Astrae il meccanismo mediante il quale viene eseguito il processo di inserimento dati nel database.

- *`InsertChatAdapter`*: implementazione concreta dell'interfaccia spiegata in precedenza, funge da punto di collegamento tra logica applicativa al sistema di persistenza ma non accede al database. Il suo primo compito è quello di formalizzare la richiesta ricevuta (`FetchHistoryCmd`) in un formato adatto al repository, estraendo e passando in modo esplicito i parametri (id, numChat) necessari alla query. Dopodichè riceve i dati persistiti (`ChatEntity`), li trasforma in dati di dominio (`Chat`) e li restituisce al _Service_.

- *`ChatRepository`*: componente incaricata dell'accesso diretto a PostgreSQL, utilizzando #glossary("TypeORM") per la gestione delle entità e delle query. Fornisce il metodo insertStoricoChat(), che ha il compito di persistere una nuova conversazione nel database. Prima di creare la nuova entità, viene effettuata una lettura dal repository `lastUpdateRepo`, per recuperare il valore corrente dell'ultima data di aggiornamento, _lastFetch_, utilizzato poi per popolare il medesimo campo della nuova conversazione (domanda-risposta).

  A seguire, viene inserito il metodo "insertStoricoChat()" presente in questa classe.
  #sourcecode[```tsx
  ...
  export class ChatRepository {
    constructor(
      @InjectRepository(ChatEntity) //tabella db della chat
      private readonly chatRepo: Repository<ChatEntity>,

      @InjectRepository(LastUpdateEntity) //tabella db con unico record data ultimo retrieval info
      private readonly lastUpdateRepo: Repository<LastUpdateEntity>,
    ) {}


    async insertChat(question: string, answer: string, date: Date): Promise<ChatEntity> {
      const lastUpdate = await this.lastUpdateRepo.findOne({ where: { id: 1 } });

      if (!lastUpdate) {
        throw new Error('LastUpdate entry not found');
      }

      const newChat: ChatEntity = this.chatRepo.create({
        question,
        questionDate: date,
        answer,
        lastFetch: lastUpdate.lastFetch.toISOString()
      });

      await this.chatRepo.save(newChat);

      return newChat;
    }
    ...
  }
  ```]

- *`Chat`*: rappresenta l'entità di dominio; una singola Chat rappresenta una *coppia di messaggi*, ossia include una domanda e la rispettiva risposta. La conversazione con #glossary("BuddyBot"), quindi, si compone di Chats. 

- *`ChatDTO`*: data transfer object di uscita, costruito dal controller a partire dagli oggetti `Chat`. 

- *`Message`*: rappresenta l'entità di dominio che incapsula le informazioni relative a un singolo messaggio all'interno di una `Chat`.

- *`MessageDTO`*: data transfer object utilizzato per esporre i singoli messaggi all'esterno.

- *`ChatEntity`*: rappresenta la mappatura dell'entità "Chat" nel database PostgreSQL, gestita tramite #glossary("TypeORM"). E' associata a una tabella generata automaticamente e viene utilizzata per persistere ogni conversazione tra l'utente e BuddyBot. I suoi campi sono stati citati e spiegati nella sezione precedente durante la spiegazione della medesima classe.

- *`LastUpdateEntity`*: rappresenta l'entità incaricata di tracciare la data dell'ultimo #glossary("Retrieval periodico") effettuato, ovvero l'ultimo momento in cui è stato eseguito un fetch globale delle informazioni. Nel database, la tabella _last_update_ ospita un unico record persistente, contenente esclusivamente la data di aggiornamento più recente. #sourcecode[```tsx
import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('last_update')
export class LastUpdateEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({type: 'timestamp' })
  lastFetch: Date;
}
```]

=== Inserimento dell'ultima data di recupero informazioni

- *`LastUpdateDTO`*: data transfer object utilizzato per rappresentare il payload della richiesta in arrivo. Contiene un unico campo lastFetch, espresso come stringa, che rappresenta la data da registrare come ultimo fetch delle informazioni.

- *`InsertLastUpdateController`*: punto di ingresso del microservizio per la richiesta di aggiornamento del dato relativo all'ultimo retrieval. Il consumer (ossia tale controller) resta in ascolto di nuovi messaggi sulla coda 'lastFetch_queue' ed espone un metodo insertLastRetrieval() che riceve come input un `LastUpdateDTO`, che trasformerà poi in un command object (Cmd). Ritornerà infine un boolean per rappresentare l'esito dell'operazione.

- *`LastUpdateCmd`*: si tratta del command object utilizzato per incapsulare e strutturare il dato passato dal DTO, prima di invocare lo _UseCase_. Questo passaggio consente di isolare il formato esterno (DTO) dalla logica interna, mantenendo un'interfaccia pulita verso il dominio applicativo.

- *`InsertLastUpdateUseCase`*: interfaccia che rappresenta la porta di ingresso della logica applicativa per l'inserimento in database di una nuova "data di ultimo aggiornamento". Utile per garantire disaccopiamento tra _Controller_ e _Service_.

- *`InsertLastUpdateService`*: implementazione concreta dell'interfaccia precedente, è la classe principale della business logic. Non interagisce direttamente con il database, il suo ruolo è quello di *orchestrare* un corretto inserimento in database della data ottenuta. In linea con i principi dell'architettura esagonale, questa classe consente di mantenere la logica di business indipendente dall'infrastruttura.

- *`InsertLastUpdatePort`*: questa interfaccia rappresenta la porta di uscita (output port) dal punto di vista della logica applicativa. Astrae il meccanismo mediante il quale viene eseguito il processo di inserimento del dato in questione nel database.

- *`InsertLastUpdateAdapter`*: implementazione concreta dell'interfaccia spiegata in precedenza, funge da punto di collegamento tra logica applicativa al sistema di persistenza, richiamando il metodo richiesto ma non accedendo al database.

- *`ChatRepository`*: componente incaricata dell'accesso diretto a PostgreSQL, utilizzando #glossary("TypeORM") per la gestione delle entità e delle query. In questo contesto, espone il metodo insertLastRetrieval(), che si occupa di aggiornare il valore della data di ultimo accesso nel record persistito della tabella last_update. Si individua il record con id = 1 (ossia unico record presente nella tabella) aggiornando il campo lastFetch con il dato nuovo da inserire.

  A seguire, viene inserito il metodo "insertLastRetrieval()" presente in questa classe.
  #sourcecode[```tsx
  ...
  export class ChatRepository {
    constructor(
      @InjectRepository(ChatEntity) //tabella db della chat
      private readonly chatRepo: Repository<ChatEntity>,

      @InjectRepository(LastUpdateEntity) //tabella db con unico record data ultimo retrieval info
      private readonly lastUpdateRepo: Repository<LastUpdateEntity>,
    ) {}


    async insertLastRetrieval(date: string): Promise<boolean> {
      const parsedDate = new Date(date);

      //id sempre 1
      const existing = await this.lastUpdateRepo.findOne({ where: { id: 1 } });

      if (existing) {
        existing.lastFetch = parsedDate;
        await this.lastUpdateRepo.save(existing);
      } else {
        const newEntry = this.lastUpdateRepo.create({
          id: 1,
          lastFetch: parsedDate,
        });
        await this.lastUpdateRepo.save(newEntry);
      }

      return true;
    }
    ...
  }
  ```]

- *`LastUpdateEntity`*: rappresenta l'entità incaricata di tracciare la data dell'ultimo #glossary("Retrieval periodico") effettuato, ovvero l'ultimo momento in cui è stato eseguito un fetch globale delle informazioni. Nel database, la tabella _last_update_ ospita un unico record persistente, contenente esclusivamente la data di aggiornamento più recente.

=== Ottenimento della data di ultimo recupero / aggiornamento informazioni

- *`LastUpdateDTO`*: data transfer object utilizzato per trasmettere verso l'esterno il valore corrente della data di ultimo aggiornamento.

- *`FetchLastUpdateController`*: rappresenta il punto di ingresso del microservizio per la richiesta di lettura della data relativa all'ultimo retrieval periodico effettuato dal sistema. Il consumer (ossia tale controller) resta in ascolto di nuovi messaggi sulla coda 'getLastFetch_queue' ed espone un metodo fetchLastUpdate(). Una volta ricevuto un messaggio, attiva il metodo il quale delega l'elaborazione al caso d'uso implementato nel `FetchLastUpdateService`.

- *`FetchLastUpdateUseCase`*: interfaccia che rappresenta la porta di ingresso della logica applicativa per il recupero del dato dal database. Utile per garantire disaccopiamento tra _Controller_ e _Service_.

- *`FetchLastUpdateService`*: implementazione concreta dell'interfaccia precedente, è la classe principale della business logic. Non interagisce direttamente con il database, il suo ruolo è quello di *orchestrare* un corretto recupero della "data di ultimo aggiornamento delle informazioni" presente in database. In linea con i principi dell'architettura esagonale, questa classe consente di mantenere la logica di business indipendente dall'infrastruttura.

- *`FetchLastUpdatePort`*: questa interfaccia rappresenta la porta di uscita (output port) dal punto di vista della logica applicativa. Astrae il meccanismo mediante il quale viene eseguito il processo di recupero del dato in questione dal database.

- *`FetchLastUpdateAdapter`*: implementazione concreta dell'interfaccia spiegata in precedenza, funge da punto di collegamento tra logica applicativa al sistema di persistenza, richiamando il metodo richiesto ma senza accedere al database.

- *`ChatRepository`*: componente incaricata dell'accesso diretto a PostgreSQL, utilizzando #glossary("TypeORM") per la gestione delle entità e delle query. In questo contesto viene esposto il metodo fetchLastUpdate(), responsabile del recupero dell'unico record presente nella tabella _last_update_, contenente la data dell'ultimo retrieval periodico. Si individua il record con `id = 1` (ossia unico record presente nella tabella) e, una volta recuperato, viene restituito al chiamante.

  A seguire, viene inserito il metodo "fetchLastUpdate()" presente in questa classe.
  #sourcecode[```tsx
  async fetchLastUpdate(): Promise<LastUpdateEntity> {
    const entity = await this.lastUpdateRepo.findOne({ where: { id: 1 } });
    if (!entity) {
      throw new Error('LastUpdate-record not found (in db)');
    }
    return entity;
  }
  ```]

- *`LastUpdate`*: rappresenta l'entità di dominio, contiene un solo campo lastFetch, espresso come stringa, che identifica il momento in cui è stato eseguito l'ultimo fetch periodico delle informazioni.

- *`LastUpdateEntity`*: rappresenta l'entità incaricata di tracciare la data dell'ultimo #glossary("Retrieval periodico") effettuato, ovvero l'ultimo momento in cui è stato eseguito un fetch globale delle informazioni. Nel database, la tabella _last_update_ ospita un unico record persistente, contenente esclusivamente la data di aggiornamento più recente.

== Microservizio Informazioni

Il microservizio Informazioni gestisce l'interazione tra il sistema e tre fonti esterne --- *Jira*, *Confluence* e *GitHub* --- recuperando informazioni rilevanti che vengono archiviate in un database vettoriale. Oltre alla fase di acquisizione e persistenza dei dati, il microservizio espone funzionalità di retrieval semantico, fornendo le informazioni più pertinenti in base alle query degli utenti per supportare il modello linguistico nella generazione di risposte contestualizzate.

=== Funzionalità principali

Il microservizio si articola in quattro casi d'uso fondamentali:
- Recupero e memorizzazione dei dati da *Jira*;
- Recupero e memorizzazione dei dati da *Confluence*;
- Recupero e memorizzazione dei dati da *GitHub*;
- Recupero di informazioni rilevanti basato sulle query utente.

Tutte le richieste vengono ricevute in modalità asincrona tramite *RabbitMQ*, che opera come message broker. Ogni messaggio attiva il caso d'uso corrispondente, gestito secondo un'architettura esagonale che garantisce una netta separazione tra logica di dominio, servizi applicativi e adattatori per l'integrazione con fonti esterne e sistema di storage.


=== Classi condivise

==== Qdrant-information-repository

Questa classe gestisce la persistenza e il retrieval delle informazioni nel database vettoriale Qdrant, fungendo da punto centralizzato per le operazioni di salvataggio e recupero. Il repository viene inizializzato con un'istanza del Vector Store di LangChain passata come attributo nel costruttore, permettendo un'astrazione efficace rispetto all'implementazione specifica del database vettoriale.

*Operazioni principali:*

- `storeInformation(info: Information): Result`

  Questo metodo gestisce il salvataggio di nuove informazioni nel database vettoriale attraverso i seguenti passaggi:
  1. Estrazione dei metadati dall'oggetto Information;
  2. Verifica dell'esistenza di vettori precedenti con lo stesso identificativo;
  3. Rimozione di eventuali vettori esistenti utilizzando i Metadata per garantire la consistenza; 
  4. Suddivisione del documento in segmenti più piccoli (chunking) se la dimensione supera la soglia massima per un embedding efficace;
  5. Generazione degli embedding per ogni segmento attraverso il model provider gestito da LangChain;
  6. Salvataggio dei vettori risultanti nel database vettoriale attraverso l'uso Vector Store di LangChain.

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

==== Result
Classe di supporto che fornisce un meccanismo standardizzato per rappresentare l'esito di operazioni di recupero e salvataggio dati. Permette di distinguere tra successo e fallimento, e in caso di errore, di fornire una descrizione dettagliata.

=== Recupero e memorizzazione dei dati da GitHub

#figure(
    image(spc.github_fetch, width: 100%, height: auto),
    caption: "Diagramma UML di dettaglio riguardo alla raccolta delle informazioni di Github",
) 

#figure(
    image(spc.github_store, width: 100%, height: auto),
    caption: "Diagramma UML di dettaglio riguardo al salvataggio delle informazioni di Github",
) 

==== FetchGithubDTO
Classe che viene ricevuta in input dall'`InformationController`, contiene una lista di `RepoDTO`, spiegati in seguito, e la data dall'ultima raccolta di informazioni.

```typescript
export class FetchGithubDto {
  constructor (
    private repoDTOList: RepoGithubDTO[],
    private lastUpdate?: Date
  ){}
}
```
==== RepoDTO
Classe che contiene le informazioni necessarie a identificare univocamente la risorsa di cui vogliamo raccogliere le informazioni, ossia:
- a chi appartiene il repository su #glossary("Github")
- il nome del repository
- il branch del repository
```ts
export class RepoGithubDTO{
  constructor(
    private owner: string,
    private repoName: string,
    private branch_name: string
  ){}
}
```

==== GithubCmd
Questa classe rappresenta il Command che riceve la business logic, contiene una lista di `RepoCmd`, che contiene gli stessi campi di `RepoDTO`, e lo stesso 'lastUpdate' ricevuto nel `FetchGithubDto`

```ts
export class GithubCmd {
  constructor(
    private repoCmdList:RepoCmd[],
    private lastUpdate?:Date
  ){}  
}
```

==== RepoCmd
Questa classe è la classe `RepoDTO` adattata alla business logic.

```ts
export class RepoCmd{
  constructor (
    private owner: string,
    private repoName: string,
    private branch_name: string
  ){}
}
```

==== Commit
Questa classe è oggetto della business logic, contiene le informazioni che vogliamo raccogliere dei commit di una determinata repository.

```ts
export class Commit{
    constructor(
        private repoName: string,
        private ownerRepository: string,
        private branch: string,
        private hash: string,
        private message: string,
        private dateOfCommit: string,
        private modifiedFiles: string[],
        private author: string,
    ) {}
    
    toStringifiedJson(): string {
        return JSON.stringify(this);
    }

    getMetadata(): Metadata {
      return new Metadata(Origin.GITHUB, Type.COMMIT, this.hash);
    }
}
``` 

==== File
Questa classe è oggetto della business logic, contiene le informazioni che vogliamo raccogliere dei files di un determinato branch in una determinata repository.

```ts
export class File{
    constructor(
        private path: string,
        private sha: string,
        private repositoryName: string,
        private branchName: string,
        private content: string
    ) {}
    
    toStringifiedJson(): string {
        return JSON.stringify(this);
    }

    getMetadata(): Metadata {
      return new Metadata(Origin.GITHUB, Type.FILE, this.sha);
    }
}
```
==== PullRequest
Questa classe è oggetto della business logic, contiene le informazioni che vogliamo raccogliere delle pull requests in una determinata repository.

```ts
export class PullRequest{
    constructor(
        private id: number,
        private pull_number: number,
        private title: string,
        private description: string,
        private status: string,
        private assignees: string[],
        private reviewers: string[],
        private comments: CommentPR[],
        private modifiedFiles: string[],
        private fromBranch: string,
        private toBranch: string,
        private repository_name: string,
    ) {}
    
    toStringifiedJson(): string {
        return JSON.stringify(this);
    }

    getMetadata(): Metadata {
      return new Metadata(Origin.GITHUB, Type.PULLREQUEST, this.id.toString());
    }
}
```

==== CommentPR
Questa classe è oggetto della business logic, è contenuta all'interno di `PullRequest` in quanto si occupa di contenere al suo interno le informazioni riguardanti un determinato commento di review su una `PullRequest`.

```ts
export class CommentPR{
    constructor(
        private authorName: string,
        private content: string,
        private date: Date
    ){}

    getAuthorName(): string {
        return this.authorName;
    }

    getContent(): string {
        return this.content;
    }

    getDate(): Date {
        return this.date;
    }
}
```

==== Repository
Questa classe è oggetto della business logic, contiene le informazioni che vogliamo raccogliere di una determinata repository.

```ts
export class Repository {
    constructor(
    private id: number,
    private name: string,
    private createdAt: string,
    private lastUpdate: string,
    private mainLanguage: string,
  ) {}
  
  toStringifiedJson(): string {
    return JSON.stringify(this);
  }
  
  getMetadata(): Metadata {
    return new Metadata(Origin.GITHUB, Type.REPOSITORY, this.id.toString());
  }
}
```

==== Workflow
Questa classe è oggetto della business logic, contiene le informazioni che vogliamo raccogliere dei workflow in una determinata repository.

```ts
export class Workflow{
  constructor(
    private id: number,
    private name: string,
    private state: string,
    private repository_name: string,
  ) {}

  toStringifiedJson(): string {
    return JSON.stringify(this);
  }

  getMetadata(): Metadata {
    return new Metadata(Origin.GITHUB, Type.WORKFLOW, this.id.toString());
  }
}
```

==== WorkflowRun
Questa classe è oggetto della business logic, è contenuta all'interno di `Workflow` in quanto si occupa di contenere al suo interno le informazioni riguardanti una determinata run di un `Workflow`.

```ts
export class WorkflowRun {
  constructor(
    private readonly id: number,
    private readonly status: string,
    private readonly duration_seconds: number,
    private log: string,
    private trigger: string,
    private workflow_id: number,
    private workflow_name: string
  ) {}

  toStringifiedJson(): string {
    return JSON.stringify(this);
  }

   getMetadata(): Metadata {
    return new Metadata(Origin.GITHUB, Type.WORKFLOW_RUN, this.id.toString());
  }
} 
```
==== GithubFetchAndStoreController
Controller che resta in attesa di messaggi sulla coda `information-queue`, al fine di portare a termine le operazioni di raccolta e salvataggio delle informazioni ottenute da Github. Ritorna come output un oggetto `ResultDTO`.

==== GithubUseCase
Interfaccia che si comporta da porta d'ingresso alla business logic, offre il metodo `fetchAndStoreInfo`, che prende in input il `GithubCmd` ricevuto dal controller.

```ts
export interface GithubUseCase {
    fetchAndStoreGithubInfo(req: GithubCmd): Promise<Result>;
}
```
==== GithubService
La classe principale della business logic, che implementa `GithubUseCase` citato precedentemente. Si occupa di recuperare tutte le informazioni descritte nell'#glossary("Analisi dei Requisiti") e di salvarle nel database vettoriale.

==== GithubCommitAPIPort
Interfaccia che si comporta come porta d'uscita (outbound port), offre il metodo `fetchCommitInfo` che riceve in input `GithubCmd` e ritorna in output una lista di `Commit`.

```ts
export interface GithubCommitAPIPort {
    fetchGithubCommitsInfo(req: GithubCmd): Promise<Commit[]>
}
```

==== GithubFileAPIPort
Interfaccia che si comporta come porta d'uscita (outbound port), offre il metodo `fetchGithubFilesInfo` che riceve in input `FileCmd` e ritorna in output una lista di `Commit`.

```ts
export interface GithubFilesAPIPort {
    fetchGithubFilesInfo(req: FileCmd[]): Promise<File[]>
}
```
==== GithubPullRequestAPIPort
Interfaccia che si comporta come porta d'uscita (outbound port), offre il metodo `fetchGithubPullRequestsInfo` che riceve in input `GithubCmd` e ritorna in output una lista di `PullRequest`.

```ts
export interface GithubPullRequestsAPIPort {
    fetchGithubPullRequestsInfo(req: GithubCmd): Promise<PullRequest[]>
}
```
==== GithubRepositoryAPIPort
Interfaccia che si comporta come porta d'uscita (outbound port), offre il metodo `fetchGithubRepositoryInfo` che riceve in input `GithubCmd` e ritorna in output una lista di `Repository`.

```ts
export interface GithubRepositoryAPIPort {
    fetchGithubRepositoryInfo(req: GithubCmd): Promise<Repository[]>
}
```
==== GithubWorkflowAPIPort
Interfaccia che si comporta come porta d'uscita (outbound port), offre i metodi: 
- `fetchGithubWorkflowInfo` che riceve in input `GithubCmd` e ritorna in output una lista di `Workflow`.
- `fetchGithubWorkflowRuns` che riceve in input `WorkflowRunCmd` e ritorna in output una lista di `WorkflowRun`.

```ts
export interface GithubWorkflowsAPIPort {
    fetchGithubWorkflowInfo(req: GithubCmd): Promise<Workflow[]>
    fetchGithubWorkflowRuns(req: WorkflowRunCmd): Promise<WorkflowRun[]>
}
```
==== GithubAPIAdapter
Questa classe implementa:
- `GithubCommitAPIPort`
- `GithubFileAPIPort`
- `GithubPullRequestAPIPort`
- `GithubRepositoryAPIPort`
- `GithubWorkflowAPIPort`
ponendosi come adapter tra la business logic e la classe che si occupa di fare le richieste API, ossia `GithubAPIRepository`. Trasforma infatti gli oggetti JSON 'grezzi' ritornati da quest'ultima e li trasforma negli oggetti della business logic.

==== GithubAPIRepository
Questa è la classe che si occupa di interfacciarsi direttamente con le API di Github. Esegue richieste tramite il client offerto da `octo-kit` e ritorna JSON con i dati 'grezzi'.

==== GithubStoreInfoPort
Questa è l'interfaccia che funge da porta d'uscita (outbound port) al fine di salvare i `GithubInfo` nel database vettoriale, offre il metodo `storeGithubInfo` che riceve in input una lista di `GithubInfo`.

```typescript
export interface GithubStoreInfoPort {
    storeGithubInfo(req: GithubInfo): Promise<boolean>
}
```

==== GithubStoreInfoAdapter
Questa classe implementa `GithubStoreInfoPort`, si occupa di trasformare i `GithubInfo` in `Information` per poter essere usati dal `qdrant-information-repository` ed essere salvati sul database vettoriale.

=== Recupero e memorizzazione dei dati da Confluence

#figure(
    image(spc.confluence, width: 100%, height: auto),
    caption: "Diagramma UML di dettaglio riguardo a Confluence",
) 

==== ConfluenceController
Controller che resta in attesa di messaggi sulla coda `information-queue`, al fine di portare a termine le operazioni di raccolta e salvataggio delle informazioni ottenute da Confluence. Ritorna come output un oggetto `ResultDTO`.

==== ConfluenceUseCase
Interfaccia che si comporta da porta d'ingresso alla business logic, offre il metodo `fetchAndStoreDocument`, che prende in input il `ConfluenceCmd` ricevuto dal controller e ritorna come output un oggetto `Result`.

```typescript
export interface ConfluenceUseCase {
  fetchAndStoreConfluenceInfo(req: ConfluenceCmd): Promise<Result>;
}
```

==== ConfluenceService
La classe principale della business logic, che implementa `ConfluenceUseCase` citato precedentemente. Si occupa di recuperare i documenti creati e modificati entro una certa data, presente all'interno di `ConfluenceCmd`.

```typescript
export class ConfluenceService implements ConfluenceUseCase {
  constructor(
    @Inject(CONFLUENCE_API_PORT) private readonly confluenceAPIAdapter: ConfluenceAPIPort,
    @Inject(CONFLUENCE_STORE_INFO_PORT) private readonly confluenceStoreAdapter: ConfluenceStoreInfoPort
  ) {}

  async fetchAndStoreConfluenceInfo(req: ConfluenceCmd): Promise<Result> {
    const documents = await this.confluenceAPIAdapter.fetchDocuments(req);
    return await this.confluenceStoreAdapter.storeDocuments(documents);;
  }
}
```

==== ConfluenceDocument
Classe del domain, definisce le informazioni che vengono raccolte e viene usato come oggetto della business logic.

==== ConfluenceAPIPort
Interfaccia che si comporta come porta d'uscita (outbound port), offre il metodo `fetchDocuments` che riceve in input `ConfluenceCmd` e ritorna in output una lista di ConfluenceDocument.


==== ConfluenceAPIAdapter
Questa classe implementa `ConfluenceAPIPort`, ponendosi come adapter tra la business logic e la classe che si occupa di fare le richieste API, ossia `ConfluenceAPIRepository`. Trasforma infatti gli oggetti JSON 'grezzi' ritornati da quest'ultima e li trasforma negli oggetti della business logic di `ConfluenceDocument`.

==== ConfluenceAPIRepository
Questa è la classe che si occupa di interfacciarsi direttamente con le API di Confluence. Esegue richieste HTTP e ritorna JSON con i dati 'grezzi'.

==== ConfluenceStorePort
Questa è l'interfaccia che funge da porta d'uscita (outbound port) al fine di salvare i `ConfluenceDocument` nel database vettoriale, offre il metodo `storeDocuments` che riceve in input una lista di `ConfluenceDocument`.

```typescript
export interface ConfluenceStoreInfoPort {
  storeDocuments(req: ConfluenceDocument[]): Promise<Result>;
}
```

==== ConfluenceStoreAdapter
Questa classe implementa `ConfluenceStorePort`, si occupa di trasformare i `ConfluenceDocument` in `Information` per poter essere usati dal `qdrant-information-repository` ed essere salvati sul database vettoriale.

=== Recupero e memorizzazione dei dati da Jira

Il seguente diagramma illustra le classi coinvolte nel caso d'uso "Recupero e memorizzazione dei ticket di Jira", evidenziando l'architettura esagonale adottata:
#figure(
  image(spc.diag_fetch_jira, width: 42em, fit: "contain"),
  caption: "Diagramma delle classi per il caso d'uso di recupero e memorizzazione dei ticket di Jira",
)

==== Componenti Principali

===== JiraFetchAndStoreController

Punto d'ingresso per l'operazione di recupero e memorizzazione dei ticket da Jira. Riceve le richieste esterne, le convalida e le indirizza verso il caso d'uso appropriato. Il controller accetta in input un `FetchJiraDTO` contenente tutte le informazioni necessarie, inclusa la data dell'ultimo aggiornamento per ottimizzare l'efficienza del recupero dati.

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

Interfaccia che astrae le operazioni di interazione con l'API Jira, definendo un contratto chiaro indipendente dai dettagli implementativi. Espone il metodo `FetchTickets(req: FetchJiraCmd): Ticket*` che restituisce un array di ticket creati o modificati dalla data specificata nel comando.

===== JiraAPIAdapter

Implementa *JiraAPIPort* gestendo la comunicazione effettiva con l'API Jira tramite *JiraAPIRepository*. Traduce le risposte API nel formato interno richiesto dall'applicazione.

===== JiraAPIRepository
Classe che funge da intermediario per interagire direttamente con le API di Jira. Al momento della sua creazione, richiede l'iniezione di un client autenticato per stabilire la connessione con Jira.  Espone un metodo `fetchRecentIssues(daysBack: number, boardId: number): Json*` in cui entrambi i parametri sono opzionali:
- *daysBack*: Specifica il numero di giorni nel passato per cui recuperare le issue. Se omesso, vengono restituite tutte le issue accessibili all'account;
- *boardId*: Limita la ricerca alle issue associate a una specifica board. Se omesso, vengono recuperate le issue da tutte le board accessibili.


===== StoreJiraPort

Definisce l'interfaccia per la memorizzazione dei ticket, permettendo al nucleo applicativo di salvare dati indipendentemente dal sistema di storage sottostante. Espone il metodo `storeTickets(tickets: Ticket*): Result` che restituisce l'esito dell'operazione.

===== StoreJiraAdapter

Implementa *StoreJiraPort* gestendo la persistenza dei ticket nel database vettoriale tramite *qdrant-information-repository*. Si occupa della trasformazione dei dati nel formato appropriato e dell'interazione con il meccanismo di storage.


=== Recupero di informazioni rilevanti basato sulle query utente

Il seguente diagramma illustra le classi coinvolte nel caso d'uso "Recupero delle informazioni rilevanti basato sulle query utente", evidenziando l'architettura esagonale adottata: 
#figure(
  image(spc.diag_retr_info, width: 42em, fit: "contain"),
  caption: "Diagramma delle classi per il caso d'uso di recupero di informazioni rilevanti basato sulle query utente",
)
==== Componenti Principali

===== RetrievalController

Punto d'ingresso per il recupero delle informazioni. Riceve richieste esterne contenenti una stringa query incapsulata in un RetrievalInfoDTO, che viene poi convertito in un comando di dominio RetrieveCmd. Dopo aver invocato il caso d'uso, restituisce un array di oggetti InformationDTO che rappresentano le informazioni più rilevanti trovate.

===== RetrievalInfoUseCase

Interfaccia che definisce il contratto del caso d'uso, delegando la responsabilità di recuperare le informazioni rilevanti. Espone il metodo `retrieveRelevantInfo(cmd: RetrieveCmd): Information*`, che restituisce un array ordinato di oggetti Information.

===== RetrievalInfoService

Implementazione concreta di RetrievalInfoUseCase, si occupa della logica principale del caso d'uso. Riceve il comando, interagisce con la porta RetrievalInfoPort, la quale viene iniettata nel costruttore, e restituisce il risultato sotto forma di array di Information.

===== RetrieveCmd

Oggetto di dominio che incapsula la richiesta dell'utente, contenente il campo query. Utilizzato internamente per mantenere la coerenza del linguaggio di dominio tra i livelli.

===== RetrievalInfoPort

Interfaccia che astrae la logica di accesso ai dati. Espone il metodo `retrieveRelevantInfo(cmd: RetrieveCmd): Information*`, consentendo al servizio applicativo di restare disaccoppiato dalla tecnologia di persistenza.

===== RetrievalInfoAdapter

Implementazione concreta della porta RetrievalInfoPort, interagisce con qdrant-information-repository per recuperare le informazioni rilevanti alla domanda dell'utente. Converte gli oggetti provenienti dal repository in oggetti di dominio.
#pagebreak()


= Tracciamento requisiti
== Stato dei requisiti funzionali
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
    columns: (auto, auto, auto),
    [Codice], [Descrizione], [Stato],
    [*RF-001*],
    [L'utente deve accedere all'applicazione senza necessità di autenticazione],
    [Soddisfatto],

    [*RF-002*],
    [Il sistema deve archiviare in modo persistente le domande degli utenti e le risposte generate],
    [Soddisfatto],

    [*RF-003*],
    [L'utente deve poter visualizzare lo storico della chat in ordine cronologico inverso (dal più recente al più vecchio).],
    [Soddisfatto],

    [*RF-004*],
    [L'utente deve visualizzare un messaggio informativo che spiega che non ci sono messaggi nello storico],
    [Soddisfatto],

    [*RF-005*],
    [L'utente deve visualizzare un messaggio di errore se il sistema non riesce a recuperare lo storico],
    [Soddisfatto],

    [*RF-006*],
    [L'utente deve visualizzare un messaggio di errore se la richiesta non è stata completata a causa di un timeout],
    [Soddisfatto],

    [*RF-007*],
    [L'utente deve visualizzare un messaggio di errore se il backend non è disponibile],
    [Soddisfatto],

    [*RF-008*],
    [L'utente deve visualizzare per ogni messaggio: il contenuto, la data e ora di invio],
    [Soddisfatto],

    [*RF-009*],
    [L'utente deve visualizzare lo sfondo di un messaggio inviato da un utente di colore grigio],
    [Soddisfatto],

    [*RF-010*],
    [L'utente deve visualizzare lo sfondo di un messaggio inviato da #glossary("Buddybot") di colore blu],
    [Soddisfatto],

    [*RF-011*],
    [L'utente deve visualizzare per ogni messaggio inviato da #glossary("Buddybot") la data e l'ora dell'ultimo aggiornamento dei dati usati per generare la risposta],
    [Soddisfatto],

    [*RF-012*], [L'utente deve poter scrivere una domanda in linguaggio naturale], [Soddisfatto],
    [*RF-013*], [L'utente deve poter inviare la domanda scritta al sistema], [Soddisfatto],
    [*RF-014*], [L'utente deve poter visualizzare la risposta generata da #glossary("Buddybot")], [Soddisfatto],
    [*RF-015*],
    [L'utente deve essere informato se la domanda che ha posto non rientra nelle competenze specifiche del sistema tramite una risposta generata da #glossary("Buddybot")],
    [Soddisfatto],

    [*RF-016*],
    [L'utente deve essere informato se i documenti richiesti nella domanda non sono disponibili all'interno del sistema tramite una risposta generata da #glossary("Buddybot")],
    [Soddisfatto],

    [*RF-017*],
    [L'utente deve poter visualizzare un messaggio di errore se si è verificato un errore generico nella generazione della risposta da parte del #glossary("backend")],
    [Soddisfatto],

    [*RF-018*],
    [L'utente deve poter visualizzare un messaggio di errore se la risposta non è stata generata perchè supera la lunghezza massima consentita],
    [Soddisfatto],

    [*RF-019*],
    [L'utente deve poter visualizzare un messaggio di errore se la domanda supera la lunghezza massima consentita],
    [Soddisfatto],

    [*RF-020*],
    [Il sistema deve generare una risposta appropriata alla domanda posta dell'utente],
    [Soddisfatto],

    [*RF-021*],
    [Il sistema deve recuperare da GitHub le seguenti informazioni:

    Per ogni repository:
    - Nome della repository
    - Id della repository
    - Descrizione della repository
    - Data di creazione della repository
    - Ultima data di aggiornamento della repository
    - Linguaggio principale della repository

    Per ogni commit:
    - Hash del commit
    - Messaggio del commit
    - Data e ora dell'ultimo commit
    - Branch associato al commit
    - File modificati nel commit
    - Autore dell'ultimo commit
    - Nome della repository di appartenenza del commit
    - Nome del branch di appartenenza del commit

    Per ogni pull request:
    - Id della pull request
    - Titolo della pull request
    - Descrizione della pull request
    - Stato della pull request
    - Assegnatario della pull request
    - Reviewers della pull request
    - Commenti della pull request
    - File modificati nella pull request
    - Branch di origine della pull request
    - Branch di destinazione della pull request
    - Nome repository di appartenenza

    Per ogni workflow:
    - Id del workflow
    - Nome del workflow
    - Stato del workflow
    - Nome repository di appartenenza
    - Lista delle run per il workflow

    Per ogni workflow run:
    - Id della run
    - Stato della run
    - Durata in secondi della run
    - Link del log della run
    - Trigger della run
    - Id del workflow di appartenenza
    - Nome del workflow di appartenenza

    Per ogni file:
    - Path del file
    - SHA del file
    - Nome repository di appartenenza
    - Nome branch di appartenenza
    - Contenuto del file
    ],
    [Soddisfatto],

    [*RF-022*],
    [Il sistema deve recuperare da Confluence le seguenti informazioni:
      - Id di una pagina
      - Titolo di una pagina
      - Stato di una pagina
      - Autore di una pagina
      - Owner di una pagina
      - Spazio di una pagina
      - Contenuto di una pagina
    ],
    [Soddisfatto],

    [*RF-023*],
    [Il sistema deve recuperare da Jira le seguenti informazioni:
     - Id di un ticket
     - Titolo di un ticket
    - Descrizione di un ticket
    - Assegnatario di un ticket
    - Stato di un ticket
    - Sprint di appartenenza di un ticket
    - Story point estimate di un ticket
    - Creatore di un ticket
    - Priorità
    - Data di scadenza
    - Ticket collegati
    - Commenti del ticket

    Per ogni commento del ticket:
    - Autore del commento
    - Data di creazione
    - Contenuto del commento
    ],
    [Soddisfatto],

    [*RF-024*],
    [Il sistema deve informare l'utente in caso di errore durante la generazione della risposta],
    [Soddisfatto],

    [*RF-025*],
    [Il sistema deve informare l'utente se la risposta supera la lunghezza massima consentita],
    [Soddisfatto],

    [*RF-026*],
    [Il sistema deve fornire la data e l'ora dell'ultimo aggiornamento dei dati utilizzati],
    [Soddisfatto],

    [*RF-027*],
    [Il sistema deve aggiornare i dati dei documenti provenienti da GitHub, Confluence e Jira ogni 24 ore],
    [Soddisfatto],

    [*RF-028*],
    [Il sistema deve salvare i dati provenienti dalle fonti (Githbu, Jira, Confluence) in un database vettoriale],
    [Soddisfatto],

    [*RF-029*],
    [Il sistema deve convertire i dati provenienti dalle fonti (Githbu, Jira, Confluence) da forma testuale a forma vettoriale],
    [Soddisfatto],

    [*RF-030*], [L'utente deve poter modificare una domanda già inviata], [Non soddisfatto],

    [*RF-031*], [L'utente deve poter selezionare il tema chiaro o scuro per visualizzare l'interfaccia utente], [Soddisfatto],

    [*RF-032*],
    [Il sistema deve visualizzare un'icona identificativa (cliccabile ed interattiva) per l'accesso a una risorsa esterna, aprendo la pagina web associata in una nuova finestra o scheda del browser.], [Soddisfatto],

    [*RF-033*],
    [Il sistema deve visualizzare un'icona identificativa (cliccabile ed interattiva) per l'accesso al sito-documentazione di Jira], [Soddisfatto],

    [*RF-034*],
    [Il sistema deve visualizzare un'icona identificativa (cliccabile ed interattiva) per l'accesso al sito-documentazione di GitHub], [Soddisfatto],

    [*RF-035*],
    [Il sistema deve visualizzare un'icona identificativa (cliccabile ed interattiva) per l'accesso al sito-documentazione di Confluence], [Soddisfatto],

    [*RF-036*],
    [Il sistema deve visualizzare un'animazione di caricamento circolare durante il recupero dello storico della chat], [Soddisfatto],

    [*RF-037*],
    [Il sistema deve visualizzare un'animazione di caricamento composta da tre puntini, durante l'elaborazione della risposta da parte del backend], [Soddisfatto],

    [*RF-038*],
    [Il sistema deve visualizzare un pulsante "Load More" nella parte superiore della chat, che consenta all'utente di caricare 10 messaggi precedenti non ancora visualizzati], [Soddisfatto],

    [*RF-039*],
    [L'utente deve visualizzare il contenuto del messaggio in formato markdown], [Soddisfatto],

    [*RF-040*],
    [L'utente deve poteer incollare nell'input di testo il contenuto copiato in precedenza], [Soddisfatto],

    [*RF-041*],
    [L'interfaccia utente deve scrollare verso il basso mostrando l'ultimo messaggio inviato ogni volta che l'utente invia un nuovo messaggio], [Soddisfatto],
  ),
  caption: "Stato Requisiti Funzionali",
)
#pagebreak()
== Grafici riassuntivi
#figure(image("../../../images/specifica-tecnica/reqObbligatori.png", width:70%),
  caption: [Stato dei requisiti funzionali obbligatori]
)
#linebreak()
#figure(image("../../../images/specifica-tecnica/reqOpzionali.png", width:63%),
  caption: [Stato dei requisiti funzionali opzionali]
)
#linebreak()
#figure(image("../../../images/specifica-tecnica/reqDesiderabili.png", width:83%),
  caption: [Stato dei requisiti funzionali desiderabili]
)
