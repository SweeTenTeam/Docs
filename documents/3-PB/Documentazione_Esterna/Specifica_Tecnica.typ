#import "/template/document.typ": *

#show: project.with(
  title: "Specifica Tecnica",
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
    "0.0.8",
    "2025-04-11",
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

= Analisi


#pagebreak()

=== Microservizio Api-Gateway



#figure(
    image(st.diag_api_gateway, width: 100%, height: auto),
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


== Risposta Use-Case:

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



== Storico Use-Case:

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


== Scheduling del Fetch:
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
