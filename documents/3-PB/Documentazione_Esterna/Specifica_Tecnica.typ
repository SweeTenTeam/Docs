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

= Analisi
// TO BE REVIEWED


=== Microservizio Storico Chat
#figure(
  image(spc.prog_history, width: 46em), caption: "Progettazione del Microservizio Storico Chat"
)
Il microservizio dello Storico riveste un ruolo fondamentale per il corretto funzionamento di #glossary("BuddyBot"): esso si occupa della gestione delle interazioni con il database relazionale #glossary("PostgreSQL"), prelevando e inserendo dati relativi alle conversazioni in modo affidabile.
Come per gli altri microservizi, anche questo è stato progettato secondo i principi dell'architettura esagonale, al fine di garantire una netta separazione tra la logica di business e i dettagli di implementazione tecnologica.
In particolare, l'interazione con PostgreSQL è delegata a un repository dedicato (`ChatRepository`), che utilizza #glossary("TypeORM") per l'accesso e la gestione delle entità persistite.
La logica applicativa, invece, accede ai dati attraverso alle Port & Adapter di output, fungendo da mediatori con il repository.
Questo approccio consente di mantenere l'"application" completamente agnostica rispetto alla tecnologia di persistenza, favorendo una maggiore manutenibilità, testabilità e flessibilità.

==== Tre diversi casi d'uso
Questo microservizio è stato progettato per l'esecuzione di 3 principali operazioni.
- *Recupero dello Storico della Chat*
  - L'obiettivo è quello di recuperare dal database una specifica quantità di messaggi richiesti
- *Inserimento di nuovi messaggi* 
  - L'obiettivo è quello di inserire nuovi messaggi presenti nella #glossary("UI") nel database, in maniera tale da permettere successivi recuperi
- *Inserimento dell'ultima data di recupero informazioni* (#glossary("Retrieval Periodico"))
  - Il sistema esegue un recupero periodico dei dati provenienti da #glossary("Jira"), #glossary("GitHub"), #glossary("Confluence"). In questo microservizio si vuole memorizzare l'ultima data di recupero nel database (sovrascrivendo quella precedente se presente), cosi da poterla restituire insieme ai dati della chat.

Nelle prossime sezioni verranno riepilogati i 3 flussi per le rispettive operazioni.

===== Recupero dello Storico della Chat

- *`FetchRequestDTO`*: rappresenta il Data Transfer Object utilizzato per contenere la richiesta di recupero dello storico. Include due parametri, ovvero:
  - ID: identificativo che rappresenta l'ultima `Chat` (coppia di messaggi, come verrà spiegato nella specifica classe) precedentemente caricata. Questo valore viene utilizzato come punto di riferimento cronologico per effettuare il fetch dei messaggi successivi, seguendo un ordinamento decrescente (dal più recente al meno recente);
  - numChat: quantità delle chat che si vogliono recuperare nella medesima operazione.
  Il DTO in questo caso è essenziale per permettere un corretto traferimento dei dati tra microservizi e livelli differenti.

- *`FetchHistoryController`*: corrisponde al consumer, rimane in ascolto nella coda 'fetch_queue' e in ricezione ottiene un messaggio contenente una richiesta presente in un oggetto DTO - `FetchRequestDTO`. Il controller si occupa di trasformare il DTO in un oggetto `FetchHistoryCmd`, delegando l'elaborazione allo _UseCase_ (interface) e alla sua corrispettiva implementazione, ossia al _Service_. Una volta che quest'ultimo tornerà l'oggetto di dominio, il controller lo convertirà nuovamente in ChatDTO affinchè vengano rispettati i principi del modello esagonale.

- *`FetchHistoryCmd`*: command object creato a partire dal DTO, formalizza e incapsula i parametri effettivi della richiesta. Utile a separare i dati provenienti dall'esterno dal formato atteso dalla logica di business, garantendo isolamento tra livelli. I parametri presenti all'interno di tale richiesta sono sempre 'ID' e 'numChat', citati e spiegati in precedenza per il `FetchRequestDTO`.

- *`FetchHistoryUseCase`*: interfaccia che rappresenta la porta di ingresso della logica applicativa per il recupero dello storico. Utile per garantire disaccopiamento tra _Controller_ e _Service_. Nel metodo esposto per il recupero viene passsato `FetchHistoryCmd` come input, mentre in output si ritorna l'oggetto di dominio, ossia `Chat`.

- *`FetchHistoryService`*: implementazione concreta dell'interfaccia precedente, è la classe principale della business logic. Non interagisce direttamente con il database, il suo ruolo è quello di *orchestrare* il recupero dello storico rispettando la business logic.

- *`FetchHistoryPort`*: questa interfaccia rappresenta la porta di uscita (output port) dal punto di vista della logica applicativa. Astrae il meccanismo con cui vengono recuperati i dati dal livello di persistenza.

- *`FetchHistoryAdapter`*: implementazione concreta dell'interfaccia spiegata in precedenza, funge da punto di collegamento tra logica applicativa al sistema di persistenza ma non accede al database. Il suo primo compito è quello di formalizzare la richiesta ricevuta (`FetchHistoryCmd`) in un formato adatto al repository, estraendo e passando in modo esplicito i parametri (id, numChat) necessari alla query. Dopodichè riceve i dati persistiti (`ChatEntity`), li trasforma in dati di dominio (`Chat`) e li restituisce al _Service_.

- *`ChatRepository`*: È la componente incaricata dell'accesso diretto a PostgreSQL, utilizzando #glossary("TypeORM") per la gestione delle entità e delle query. Fornisce il metodo fetchStoricoChat, che implementa la logica di recupero dei messaggi in due scenari distinti:
  - nel caso di primo accesso a BuddyBot (quando non è fornito un id), vengono recuperate le conversazioni più recenti, ordinate per data in modo decrescente;
  - nei casi successivi, viene prima identificata la chat corrispondente all'id fornito e, a partire dalla sua data, vengono recuperate le conversazioni precedenti.
  A seguire, viene inserito il metodo "fetchStoricoChat()" presente in questa classe.
  ```ts
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
  ```
- *`Chat`*: rappresenta l'entità di dominio; una singola Chat rappresenta una *coppia di messaggi*, ossia include una domanda e la rispettiva risposta. La conversazione con #glossary("BuddyBot"), quindi, si compone di Chats. 
  - ```ts
  export class Chat {
    constructor(
      public readonly id: string,
      public readonly question: Message,
      public readonly answer: Message,
      public readonly lastFetch: string
    ) {}
  }
  ```
- *`ChatDTO`*: data transfer object di uscita, costruito dal controller a partire dagli oggetti Chat. 

- *`Message`*: rappresenta l'entità di dominio che incapsula le informazioni relative a un singolo messaggio all'interno di una `Chat`.
  - ```ts
  export class MessageDTO { 
  constructor(
    public readonly content: string,
    public readonly timestamp: string,
  ) {}
}
  ```
- *`MessageDTO`*: data transfer object utilizzato per esporre i singoli messaggi all'esterno.

- *`ChatEntity`*: rappresenta la mappatura dell'entità "Chat" nel database PostgreSQL, gestita tramite #glossary("TypeORM"). E' associata a una tabella generata automaticamente e viene utilizzata per persistere ogni conversazione tra l'utente e BuddyBot. I principali campi della classe sono:
  - id: chiave primaria generata in formato UUID;
  - question: il contenuto testuale della domanda posta dall'utente;
  - questionDate: timestamp associato alla domanda. Il valore di questo campo viene esplicitamente passato tramite la richiesta di inserimento e conservato cosi com'è nel database;
  - answer: il contenuto testuale della risposta generata;
  - answerDate: a differenza della _questionDate_, è un timestamp generato automaticamente al momento dell'inserimento nel database. È gestito da TypeORM tramite il decoratore \@CreateDateColumn, che assegna il valore corrente (now) senza necessità di specificarlo a livello applicativo.
  - lastFetch: rappresenta la data dell'ultimo "#glossary("Retrieval Periodico")" eseguito, dando all'utilizzatore la possibilità di capire quanto recenti (o meno) sono i dati elaborati dal chatbot.
  ```ts
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
  ```


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

- *`InsertChatService`*: implementazione concreta dell'interfaccia precedente, è la classe principale della business logic. Non interagisce direttamente con il database, il suo ruolo è quello di *orchestrare* un corretto inserimento di una `Chat` in database rispettando la business logic.

- *`InsertChatPort`*: questa interfaccia rappresenta la porta di uscita (output port) dal punto di vista della logica applicativa. Astrae il meccanismo mediante il quale viene eseguito il processo di inserimento dati nel database.

- *`InsertChatAdapter`*: implementazione concreta dell'interfaccia spiegata in precedenza, funge da punto di collegamento tra logica applicativa al sistema di persistenza ma non accede al database. Il suo primo compito è quello di formalizzare la richiesta ricevuta (`FetchHistoryCmd`) in un formato adatto al repository, estraendo e passando in modo esplicito i parametri (id, numChat) necessari alla query. Dopodichè riceve i dati persistiti (`ChatEntity`), li trasforma in dati di dominio (`Chat`) e li restituisce al _Service_.

- *`ChatRepository`*: componente incaricata dell'accesso diretto a PostgreSQL, utilizzando #glossary("TypeORM") per la gestione delle entità e delle query. Fornisce il metodo insertStoricoChat(), che ha il compito di persistere una nuova conversazione nel database. Prima di creare la nuova entità, viene effettuata una lettura dal repository `lastUpdateRepo`, per recuperare il valore corrente dell'ultima data di aggiornamento, _lastFetch_, utilizzato poi per popolare il medesimo campo della nuova conversazione (domanda-risposta).

  A seguire, viene inserito il metodo "insertStoricoChat()" presente in questa classe.
  ```ts
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
  ```

- *`Chat`*: rappresenta l'entità di dominio; una singola Chat rappresenta una *coppia di messaggi*, ossia include una domanda e la rispettiva risposta. La conversazione con #glossary("BuddyBot"), quindi, si compone di Chats. 

- *`ChatDTO`*: data transfer object di uscita, costruito dal controller a partire dagli oggetti `Chat`. 

- *`Message`*: rappresenta l'entità di dominio che incapsula le informazioni relative a un singolo messaggio all'interno di una `Chat`.

- *`MessageDTO`*: data transfer object utilizzato per esporre i singoli messaggi all'esterno.

- *`ChatEntity`*: rappresenta la mappatura dell'entità "Chat" nel database PostgreSQL, gestita tramite #glossary("TypeORM"). E' associata a una tabella generata automaticamente e viene utilizzata per persistere ogni conversazione tra l'utente e BuddyBot. I suoi campi sono stati citati e spiegati nella sezione precedente durante la spiegazione della medesima classe.

- *`LastUpdateEntity`*: rappresenta l'entità incaricata di tracciare la data dell'ultimo #glossary("Retrieval periodico") effettuato, ovvero l'ultimo momento in cui è stato eseguito un fetch globale delle informazioni. Nel database, la tabella _last_update_ ospita un unico record persistente, contenente esclusivamente la data di aggiornamento più recente. ```ts
import { Entity, PrimaryGeneratedColumn, Column } from 'typeorm';

@Entity('last_update')
export class LastUpdateEntity {
  @PrimaryGeneratedColumn()
  id: number;

  @Column({type: 'timestamp' })
  lastFetch: Date;
}

```

===== Inserimento dell'ultima data di recupero informazioni

- *`LastUpdateDTO`*: data transfer object utilizzato per rappresentare il payload della richiesta in arrivo. Contiene un unico campo lastFetch, espresso come stringa, che rappresenta la data da registrare come ultimo fetch delle informazioni.

- *`InsertLastUpdateController`*: punto di ingresso del microservizio per la richiesta di aggiornamento del dato relativo all'ultimo retrieval. Il consumer (ossia tale controller) resta in ascolto di nuovi messaggi sulla coda 'lastFetch_queue' ed espone un metodo insertLastRetrieval() che riceve come input un `LastUpdateDTO`, che trasformerà poi in un command object (Cmd). Ritornerà infine un boolean per rappresentare l'esito dell'operazione.

- *`LastUpdateCmd`*: si tratta del command object utilizzato per incapsulare e strutturare il dato passato dal DTO, prima di invocare lo _UseCase_. Questo passaggio consente di isolare il formato esterno (DTO) dalla logica interna, mantenendo un'interfaccia pulita verso il dominio applicativo.

- *`InsertLastUpdateUseCase`*: interfaccia che rappresenta la porta di ingresso della logica applicativa per l'inserimento in database di una nuova "data di ultimo aggiornamento". Utile per garantire disaccopiamento tra _Controller_ e _Service_.

- *`InsertLastUpdateService`*: implementazione concreta dell'interfaccia precedente, è la classe principale della business logic. Non interagisce direttamente con il database, il suo ruolo è quello di *orchestrare* un corretto inserimento della data ottenuta in database rispettando la business logic.

- *`InsertLastUpdatePort`*: questa interfaccia rappresenta la porta di uscita (output port) dal punto di vista della logica applicativa. Astrae il meccanismo mediante il quale viene eseguito il processo di inserimento del dato in questione nel database.

- *`InsertChatAdapter`*: implementazione concreta dell'interfaccia spiegata in precedenza, funge da punto di collegamento tra logica applicativa al sistema di persistenza, richiamando il metodo richiesto ma non accedendo al database.

- *`ChatRepository`*: componente incaricata dell'accesso diretto a PostgreSQL, utilizzando #glossary("TypeORM") per la gestione delle entità e delle query. In questo contesto, espone il metodo insertLastRetrieval(), che si occupa di aggiornare il valore della data di ultimo accesso nel record persistito della tabella last_update. Si individua il record con id = 1 (ossia unico record presente nella tabella) aggiornando il campo lastFetch con il dato nuovo da inserire.

  A seguire, viene inserito il metodo "insertLastRetrieval()" presente in questa classe.
  ```ts
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
  ```

- *`LastUpdateEntity`*: rappresenta l'entità incaricata di tracciare la data dell'ultimo #glossary("Retrieval periodico") effettuato, ovvero l'ultimo momento in cui è stato eseguito un fetch globale delle informazioni. Nel database, la tabella _last_update_ ospita un unico record persistente, contenente esclusivamente la data di aggiornamento più recente.

