#import "/template/document.typ": *
#import "@preview/codelst:2.0.2": sourcecode

#show: project.with(
  title: "Specifica Tecnica",
  recipients: (p.vardanega, p.cardin, p.azzurro),
  changelog: (
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
    (p.blank),
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
== Architettura frontend
Per la parte di frontend, il team ha utilizzato #glossary("Next.Js"), framework basato su React, per la creazione di pagine web. Next.Js è stato scelto per la sua facilità d'uso e per la sua scalabilità. Inoltre, il team ha utilizzato #glossary("TailwindCSS") per la creazione di interfacce utente. TailwindCSS è stato scelto per la sua facilità d'uso e per la sua documentazione dettagliata, oltre che per la semplificazione della specificità di CSS base.

La scelta di tali tecnologie ha portato il team ad uno sviluppo a componenti del frontend. Saranno questi poi a comporre la struttura della web app. L'approccio a componenti, tipico di React, permette una maggiore modularità e scalabilità del codice, oltre che ad una maggiore facilità di manutenzione, evitando di avere tutto il codice in una singola pagina.

BuddyBot è una #glossary("SPA"), ovvero una Single Page Application, che permette di avere una sola pagina web che viene caricata una sola volta e che viene aggiornata dinamicamente senza dover ricaricare la pagina. Questo permette di avere una maggiore velocità di caricamento e di navigazione all'interno della web app. Inoltre, essendo un ChatBot, non vi era la necessità di avere più di una pagina, anche se il team ha previsto la possibilità di aggiungere nuove pagine in futuro.

#set page(flipped: true)
== Diagramma delle classi
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



