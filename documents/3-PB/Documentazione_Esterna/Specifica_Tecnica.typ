#import "/template/document.typ": *
#import "@preview/codelst:2.0.2": sourcecode

#show: project.with(
  title: "Specifica Tecnica",
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
    "0.0.6",
    "2025-04-10",
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

// = Analisi
// // TO BE REVIEWED
#pagebreak()
= Architectura di sistema
//aggiungere microservizi

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

= Progettazione di dettaglio
== Progettazione frontend
#set page(flipped: true)
\
\

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


= Microservizio Chatbot
#figure(image(spc.chatUml, width:118%, height: auto), caption: [UML ChatBot])

Il microservizio Chatbot rappresenta una componente cruciale all'interno dell'architettura di #glossary("BuddyBot"), essendo responsabile dell'elaborazione delle domande degli utenti e della generazione di risposte pertinenti. Questo microservizio è progettato secondo i principi dell'architettura esagonale garantendo una netta separazione tra la logica di business e i dettagli implementativi.

La sua funzione principale è quella di ricevere una domanda dall'utente, arricchirla con informazioni contestuali recuperate dal microservizio Informazioni, e utilizzare queste informazioni per generare una risposta accurata e rilevante attraverso un modello di linguaggio esterno (LLM).

== Architettura e Componenti

L'architettura del microservizio è strutturata in diversi layer, ciascuno con responsabilità ben definite:

=== Domain Layer
Il Domain Layer contiene le entità core e i value objects che rappresentano i concetti fondamentali del dominio, indipendenti da qualsiasi tecnologia specifica:

- *Entità*:
  - `Chat`: Rappresenta una conversazione completa con domanda e risposta
  - `Information`: Contiene informazioni contestuali recuperate dal database vettoriale
  - `Metadata`: Mantiene i metadati associati alle informazioni (origine, tipo, ID)

- *Value Objects*:
  - `ReqAnswerCmd`: Command object che incapsula la richiesta dell'utente

=== Application Layer
L'Application Layer coordina il flusso di dati e implementa i casi d'uso dell'applicazione, orchestrando il lavoro delle entità del dominio:

- *Use Cases (Interfaces)*:
  - `ElaborazioneUseCase`: Definisce il contratto per l'elaborazione delle domande e la generazione di risposte

- *Ports (Interfaces)*:
  - `LLMPort`: Interfaccia che definisce le operazioni per interagire con modelli di linguaggio esterni
  - `VectorDbPort`: Interfaccia che definisce le operazioni per recuperare informazioni dal database vettoriale

- *Services*:
  - `ElaborazioneService`: Implementazione concreta di `ElaborazioneUseCase` che coordina l'interazione tra il recupero delle informazioni contestuali e la generazione delle risposte attraverso il modello di linguaggio

Questo layer implementa la logica applicativa senza dipendere direttamente da meccanismi specifici di persistenza o comunicazione, utilizzando le interfacce (ports) per interagire con il mondo esterno.

=== Adapters Layer
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

=== Infrastructure Layer
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

== Flusso Principale di Elaborazione

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

== Integrazione con LangChain e Groq

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

== Comunicazione con Altri Microservizi

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
== Configurazione e Ambiente

Il microservizio utilizza variabili d'ambiente per gestire le configurazioni:

- `RABBITMQ_URL`: URL del server RabbitMQ (default: #raw("amqp://rabbitmq"))
- `GROQ_API_KEY`: Chiave API per l'accesso al servizio Groq

La configurazione dell'ambiente è gestita tramite il modulo `ConfigModule` di NestJS, che carica automaticamente le variabili d'ambiente all'avvio dell'applicazione.

== Conclusione

Il microservizio Chatbot rappresenta il cuore intelligente di #glossary("BuddyBot"), responsabile della generazione di risposte accurate e contestualmente rilevanti. La sua architettura esagonale garantisce una chiara separazione delle responsabilità, facilitando la manutenzione e l'evoluzione del sistema nel tempo. L'integrazione con #glossary("LangChain") e #glossary("Groq") fornisce capacità avanzate di elaborazione del linguaggio naturale, mentre la comunicazione tramite RabbitMQ assicura un'integrazione efficiente con gli altri componenti del sistema.

#set page(flipped: true)
=== Microservizio Storico Chat
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

==== Quattro casi d'uso
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

===== Recupero dello Storico della Chat

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

===== Inserimento di nuovi messaggi

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

===== Inserimento dell'ultima data di recupero informazioni

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

===== Ottenimento della data di ultimo recupero / aggiornamento informazioni

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
