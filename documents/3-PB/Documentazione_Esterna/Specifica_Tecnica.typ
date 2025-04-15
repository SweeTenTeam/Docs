#import "/template/document.typ": *

#show: project.with(
  title: "Specifica Tecnica",
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
    "0.0.X",
    "2025-02-27",
    (p.belenkov),
    (p.fracaro),
    [
      Aggiunta documentazione raccolta e salvataggio informazioni da Github e Confluence
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

//= Analisi
// TO BE REVIEWED

= Architettura di sistema

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