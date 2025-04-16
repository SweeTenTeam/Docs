#import "/template/document.typ": *
#import "@preview/codelst:2.0.2": sourcecode

#show: project.with(
  title: "Manuale Utente",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0.0",
    "2025-04-16",
    p.mahdi,
    p.santi,
    [
      Approvazione documento per PB
    ],
    "1.0.1",
    "2025-03-10",
    p.ferazzani,
    p.mahdi,
    [
      Prima stesura del documento
    ],
  ),
  show_outline: true,
  show_images_list: true,
  show_tables_list: true,
)

= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di dare all'utente le istruzioni per l'installazione e il corretto utilizzo del prodotto. Nello specifico, il documento contiene le istruzioni per installare localmente l'applicazione e utilizzarla nel modo corretto, oltre che i requisiti minimi.

== Scopo del prodotto

L'obiettivo del progetto è la realizzazione di un #glossary("chatbot") sotto forma di #glossary("Web App") atto a fornire un supporto al team di #box(image(g.azzurro, width: 5em, height: auto)) nella gestione delle attività di un progetto in corso di sviluppo. Nella fattispecie, il chatbot utilizza delle #glossary("API") e un modello di #glossary("LLM") per, rispettivamente, reperire informazioni da sistemi esterni utilizzati dall'azienda (più specificatamente, Jira, GitHub e Confluence) e elaborare una risposta. Questa risposta può contenere del semplice testo o un #glossary("code block"). Il chatbot ha una singola sessione per ogni utente, e può essere utilizzato da più utenti contemporaneamente.

Il team è confidente che questo genere di prodotto migliorerà il workflow del team di #box(image(g.azzurro, width: 5em, height: auto)), riducendo i tempi di risposta e migliorando la qualità del lavoro svolto.

== Miglioramenti e maturità

Questo documento è redatto con approccio incrementale e modificato nel tempo per riflettere l'andamento del progetto e le decisioni prese. In particolare, il documento è soggetto a modifiche in base ai feedback ricevuti e all'evoluzione dei requisiti del progetto. Per questo motivo, il documento non è considerabile definitivo, esaustivo e completo fino al raggiungimento di una versione stabile dello stesso (`1.0.0` o superiore).

== Glossario

Per evitare ambiguità e incomprensione riguardanti la terminologia tecnica utilizzata nel documento, viene redatto e adottato un Glossario contenente le definizioni dei termini tecnici utilizzati. Il Glossario è consultabile sul nostro sito all'indirizzo #link("https://sweetenteam.github.io/docs/PB/Glossario") e i termini presenti nel documento sono evidenziati con #glossary("questo stile").


== Riferimenti

=== Riferimenti normativi

- Presentazione pdf del capitolato C9: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9p.pdf","C9p.pdf") (_versione disponibile al 2025-03-20_)
- Norme di Progetto: #link(d.NdP, "Norme_di_Progetto_v1.0.0.pdf")
- Piano di Qualifica: #link(d.PdQ, "Piano_di_Qualifica_v1.0.0.pdf")

=== Riferimenti informativi

// - Analisi dei Requisiti: #link(d.AdR, "Analisi_dei_Requisiti_v1.1.0.pdf");
- Glossario: #link(d.Glossario, "Glossario");

= Requisiti

In questo breve capitolo sono elencati i requisiti minimi per l'installazione e l'utilizzo del prodotto. I requisiti sono divisi in due categorie: requisiti hardware e requisiti di browser.

== Requisiti hardware

Dato che non sono stati specificati requisiti hardware da capitolato o da progetto, i seguenti requisiti sono stati decisi dal team di sviluppo e sono da considerarsi sufficienti per l'installazione e l'utilizzo del prodotto:

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
    columns: (auto, auto),
    [Componente], [Requisito],
    [CPU], [2,5GHz Dual Core o superiore],
    [RAM], [8GB DDR4 o superiore],
    [Connessione], [Connessione ad internet stabile],
    [Sistema Operativo], [Windows 10 o superiore, Linux, MacOS],
  ),
  caption: "Requisiti hardware",
)

== Requisiti di browser


Dato che il prodotto è una #glossary("Web App"), è necessario un browser per l'utilizzo. I requisiti di browser sono stati decisi dal team di sviluppo e sono da considerarsi sufficienti per l'installazione e l'utilizzo del prodotto:


#figure(
  table(
    align: center + horizon,
    columns: (auto, auto),
    [Browser], [Versione],
    [Google Chrome], [135.0.7049.42 o superiore],
    [Mozilla Firefox], [137.0.1 o superiore],
    [Microsoft Edge], [134.0.3124.83 o superiore],
    [Safari], [18.3 o superiore],
  ),
  caption: "Requisiti di browser",
)

= Installazione
In questo paragrafo verrà spiegato come installare il prodotto sulla propria macchina in modo da poterne usufruire in locale. Si ricorda che il progetto è stato concepito per essere consegnato al proponente e che venga fatto operare sui loro server dedicati. L'installazione in locale è da considerarsi un'operazione non necessaria e non richiesta, ma è stata comunque implementata per facilitare lo sviluppo e il testing del prodotto.

== Strumenti e tecnologie necessarie

- #glossary("Brew") se la propria macchina è un sistema UNIX based: un gestore di pacchetti per macOS e Linux, che permette di installare facilmente software e librerie. È possibile installarlo con il comando:
  #figure(
    sourcecode[```bash
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
      ```],
    caption: "Installazione di Brew",
  )
- #glossary("Choco") se la propria macchina è un sistema Windows based: un gestore di pacchetti per Windows, che permette di installare facilmente software e librerie. È possibile installarlo aprendo il terminale in modalità amministratore e copiando il comando:
#pagebreak()
#figure(
  sourcecode[```bash
    @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
    ```],
  caption: "Installazione di Choco",
)
- #glossary("Docker"): un software che permette di eseguire applicazioni in container, isolando le dipendenze e le librerie necessarie per il loro funzionamento. È possibile installarlo con il comando:
  #figure(
    sourcecode[```bash
      brew install docker
      ```],
    caption: "Installazione di Docker su macOS e Linux",
  ) oppure
  #figure(
    sourcecode[```bash
      choco install docker-desktop
      ```],
    caption: "Installazione di Docker su Windows",
  )
- Git: un sistema di controllo versione distribuito, che permette di tenere traccia delle modifiche apportate al codice sorgente. È possibile installarlo con il comando:
  #figure(
    sourcecode[```bash
      brew install git
      ```],
    caption: "Installazione di Git su macOS e Linux",
  ) oppure
  #figure(
    sourcecode[```bash
      choco install git
      ```],
    caption: "Installazione di Git su Windows",
  )
// - Node.js: un ambiente di esecuzione JavaScript, che permette di eseguire codice JavaScript al di fuori del browser. È possibile installarlo con il comando:
//   #figure(
//     sourcecode[```bash
//       brew install node
//       ```],
//     caption: "Installazione di Node.js su macOS e Linux",
//   ) oppure
//   #figure(
//     sourcecode[```bash
//       choco install nodejs
//       ```],
//     caption: "Installazione di Node.js su Windows",
//   )
// - #glossary("npm"): un gestore di pacchetti per Node.js, che permette di installare facilmente librerie e dipendenze. È incluso nell'installazione di Node.js, quindi non è necessario installarlo separatamente.

== Creazione delle API Key
Per utilizzare il prodotto, è necessario creare delle API Key per i servizi esterni utilizzati dal chatbot. Le API Key sono delle chiavi univoche che permettono di autenticarsi e accedere ai servizi esterni. Per creare l'Api key, è necessario creare un account per ogni servizio, e navigare nella pagina dedicata alle API Key nelle impostazioni dell'account. Di seguito sono riportati i link per creare le API Key per i servizi esterni utilizzati dal chatbot:

- https://nomic.ai
- https://console.groq.com/keys
- https://www.atlassian.com/software/jira
- https://www.atlassian.com/software/confluence
- https://github.com/settings/tokens


== Installazione del prodotto
Per installare il prodotto, è necessario clonare il repository Git del progetto e installare le dipendenze necessarie. La cartella del prodotto è scaricabile anche in formato `.zip` da Github e può essere scompattata in una cartella a piacere. In tal caso, non è necessario Git.
Per installare il prodotto, è necessario eseguire i seguenti comandi:

+ Aprire il terminale e navigare nella cartella in cui si desidera installare il prodotto (o navigare nella cartella in cui è stato scompattato il file `.zip`) con il comando:
  #figure(
    sourcecode[```bash
      cd /percorso/della/cartella
      ```],
    caption: "Navigazione nella cartella del prodotto",
  )
+ Clonare il repository Git del progetto con il comando (passaggio opzionale se si è scaricato il progetto da GitHub):
  #figure(
    sourcecode[```bash
      git clone git@github.com:SweeTenTeam/BuddyBot.git
      ```],
    caption: "Clonazione del repository Git",
  )
+ Navigare nella cartella del progetto con il comando:
  #figure(
    sourcecode[```bash
      cd BuddyBot
      ```],
    caption: "Navigazione nella cartella del progetto",
  )

+ A partire dai file `.env.example` presenti nella cartella del progetto, è necessario creare i file `.env`. I file `.env` contengono le variabili di ambiente necessarie per il corretto funzionamento del prodotto. Per farlo è possibile eseguire il comando:
#figure(
  sourcecode[```bash
    cp .env.example .env
    ```],
  caption: "Creazione dei file .env",
)
Una volta fatto, basta inserire le API Key create in precedenza nei file `.env` e il prodotto sarà pronto per essere utilizzato.
Questo passaggio va ripetuto per ogni microservizio del prodotto.

+ Impostare la repositorye la branch da tracciare nel file `.env` del microservizio `apiGateway`;

+ Far partire il container di Docker con il seguente comando se è la prima volta:
  #figure(
    sourcecode[```bash
      docker-compose up --build
      ```],
    caption: "Build e Avvio del container di Docker",
  )
  In caso contrario, è possibile eseguire il comando:
  #figure(
    sourcecode[```bash
      docker-compose up
      ```],
    caption: "Avvio del container di Docker",
  )

A questo punto, basterà aprire il browser preferito e recarsi all'indirizzo `http://localhost:3000` per visualizzare l'applicazione.

= Istruzioni per l'uso

Il prodotto permette un'interazione con il chatbot tramite un'interfaccia grafica semplice e intuitiva. In questo capitolo verranno fornite le istruzioni per l'utilizzo del prodotto, con particolare attenzione alle funzionalità principali e alle modalità di interazione con il chatbot.

All'avvio dell'applicazione, l'utente si troverà di fronte a questa schermata:

#figure(
  image(mu.esempio, width: 100%, height: auto),
  caption: "Schermata principale dell'applicazione",
)

Nel caso in cui invece sia il primo avvio, e non ci siano messaggi nello storico, il messaggio visualizzato sarà questo:

#figure(
  image(mu.empty-history, width: 100%, height: auto),
  caption: "Messaggio di storico vuoto",
)

L'utente può interagire con il chatbot tramite la barra di input presente nella parte inferiore della schermata. Per inviare un messaggio, è sufficiente digitare il testo desiderato e premere il tasto "Invio" sulla tastiera. In alternativa, è possibile fare clic sul pulsante a destra della barra di input.

#figure(
  image(mu.input-area, width: 100%, height: auto),
  caption: "barra di input",
)

#figure(
  image(mu.navbar, width: 100%, height: auto),
  caption: "barra di input",
)
Nella parte sinistra della Navbar, si possono trovare 4 icone, le prime tre per raffigurare i servizi terzi con cui il chatbot si interfaccia. In particolare, queste icone sono link diretti alle documentazioni di ciascun servizio. La quarta icona invece rappresenta il sito (o dashboard interna) del proponente.


#figure(
  image(mu.nav-left, width: 100%, height: auto),
  caption: "link barra di input",
)

L'applicazione prende come tema di default quello specificato dalle impostazioni di sistema dell'utente, tuttavia è possibile modificare tale impostazione con cliccando l'apposito bottone nella parte destra della navbar.
#figure(
  image(mu.nav-right, width: 100%, height: auto),
  caption: "Bottone per il cambio tema",
)

== Errori

In caso di errore durante il fetch della cronologia dei messaggi, l'utente verrà avvisato con un messaggio di errore.

#figure(
  image(mu.connection-error, width: 100%, height: auto),
  caption: "Messaggio di errore",
)

Nel caso in cui il server non risponda entro un certo intervallo di tempo, l'utente verrà avvisato con un messaggio di errore, nello specifico, TimeOut error.

#figure(
  image(mu.timeout-error, width: 100%, height: auto),
  caption: "Messaggio di errore",
)

Nella parte inferiore sinistra dell'area di input è presente contatore di caratteri, che mostra il numero di caratteri inseriti. Se il numero di caratteri supera il limite massimo, il contatore diventa rosso e il messaggio non viene inviato. Il limite massimo è di 10000 caratteri.
#figure(
  image(mu.char-error, width: 100%, height: auto),
  caption: "Messaggio di errore",
)

Nel caso in cui il sistema generi una risposta troppo lunga, viene generato un messaggio di errore che informa l'utente dell'accaduto. In tal caso, l'utente può provare a riformulare la domanda in modo da ottenere una risposta più breve.
#figure(
  image(mu.answer-error, width: 100%, height: auto),
  caption: "Messaggio di errore",
)

// Nel caso in cui il server restituisca un errore, viene generato un messaggio di errore che informa l'utente dell'accaduto. In tal caso, l'utente può provare a aggiornare la pagina e poi riformulare la domanda .
// #figure(
//   image(gn.associazione, width: 100%, height: auto),
//   caption: "Messaggio di errore",
// )

// Nel caso in cui il server non sia raggiungibile, viene generato un messaggio di errore che informa l'utente dell'accaduto. In tal caso, l'utente può provare ad aspettare qualche minuto e provare poi a riformulare la domanda .
// #figure(
//   image(gn.associazione, width: 100%, height: auto),
//   caption: "Messaggio di errore",
// )
