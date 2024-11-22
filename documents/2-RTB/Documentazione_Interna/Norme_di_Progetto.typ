#import "/template/document.typ": *


#show: project.with(
  title: "Norme Di Progetto",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.0.4",
    "2024-11-22",
    (p.campagnaro),
    (p.ferazzani),
    [
      Stesura del capitolo: Processi Primari - Fornitura
    ],
    "0.0.3",
    "2024-11-21",
    (p.ferazzani),
    (p.campagnaro),
    [
      Stesura del capitolo: Processi Organizzativi - Gestione dei Processi
    ],
    "0.0.2",
    "2024-11-21",
    (p.campagnaro),
    (p.ferazzani),
    [
      Stesura del capitolo: Introduzione
    ],
    "0.0.1",
    "2024-11-20",
    (p.ferazzani),
    (p.campagnaro),
    [
      Stesura del capitolo: Processi di Supporto - Gestione della qualità
    ],
  ),

  show_images_list: true,
  show_tables_list: true,
)

= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di definire le linee guida operative che il gruppo adotterà per la realizzazione del progetto didattico. In questo documento sono raccolte le procedure da seguire per ogni #glossary("processo") e attività.
Per la realizzazione di questo documento è prevista la modifica e l'aggiunta di nuove indicazioni in base alle decisioni che verranno prese dal gruppo durante lo svolgimento del progetto.
Tutti i membri del gruppo si impegnano a consultare regolarmente questo documento e ad attenersi scrupolosamente alle procedure in esso descritte, al fine di garantire un approccio professionale, coerente e uniforme nello svolgimento delle attività.

== Scopo del progetto
Il team #box(image(g.azzurro, width: 5em, height: auto)) utilizza quotidianamente diverse piattaforme per redigere documentazione e consultare informazioni essenziali per i progetti, questo può spesso comportare inefficienze.
L'obiettivo del progetto Buddybot è lo sviluppo di una piccola piattaforma web con un’interfaccia #glossary("chat") per interagire con l’#glossary("IA") che funga da assistente virtuale.
Questo deve essere in grado di ottenere in modo facile e veloce informazioni dalle fonti specificate e di fornirle in base alle domande poste tramite #glossary("chat") in linguaggio naturale. Tali informazioni devono essere aggregate e centralizzate da diverse fonti tra cui #glossary("GitHub"), #glossary("Confluence") e #glossary("Jira") permettendo un accesso facile
e immediato con il fine di migliorare la produttività e dare supporto all’#glossary("OnBoarding").

== Glossario
Per garantire chiarezza e coerenza nella terminologia utilizzata nei documenti, è stato deciso di creare un glossario contenente le definizioni dei termini. Questo strumento raccoglierà tutti i termini specifici del dominio d’uso, accompagnati dai rispettivi significati. L’inclusione di un termine nel glossario sarà segnalata attraverso #glossary("questo stile") dedicato.

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto v1.0.0`
- Documentazione e presentazione del capitolato d'appalto C9: BuddyBot \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9.pdf") (Ultimo accesso: 2024-11-21) \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9p.pdf") (Ultimo accesso: 2024-11-21)
- Regolamento del progetto didattico: \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf") (Ultimo accesso: 2024-11-21)

=== Riferimenti informativi
- I processi di ciclo di vita del software \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf") (Ultimo accesso: 2024-11-21)
- `Glossario v1.0.0`: \ #link("https://sweetenteam.github.io/docs/RTB/Glossario")
- Documentazione #glossary("git"): \
  #link("https://git-scm.com/docs") (Ultimo accesso: 2024-11-21)
- Documentazione #glossary("GitHub"): \
  #link("https://docs.github.com/en") (Ultimo accesso: 2024-11-21)
- Documentazione #glossary("Typst") \
  #link("https://typst.app/docs/") (Ultimo accesso: 2024-11-21)

#pagebreak()
= Processi primari
== Fornitura
=== Scopo
Il processo primario di #glossary("fornitura"), definito dallo standard `ISO/IEC 12207:1995` (versione aggiornata al 2017), descrive l'insieme delle attività necessarie per sviluppare un prodotto software che soddisfi completamente i requisiti e le esigenze del #glossary("Committente"). Questo processo copre tutte le fasi, dalla formulazione della proposta fino alla consegna finale del prodotto, assicurando un percorso chiaro, strutturato, #glossary("efficiente") ed #glossary("efficace"). \
Lo scopo di questo processo è di tracciare e descrivere le attività svolte da ogni componente del gruppo SweeTenTeam, per determinare quanto lavoro è ancora da completare oppure è stato ultimato rispetto alle richieste del #glossary("proponente").

=== Descrizione
Queste sono le attività definite nel processo primario di #glossary("fornitura"):

- *Acquisizione e preparazione*: si individuano le necessità del cliente e vengono definiti eventuali requisiti, con associate analisi dei costi pecuniari e temporali (preventivo), e valutazione delle varie opzioni;
- *Contrattazione*: vengono negoziati tra fornitore e cliente i termini e le condizioni contrattuali, e vengono stipulati di comune accordo obiettivi, costi, tempistiche e responsabilità di entrambe le parti;
- *Pianificazione*: vengono pianificate le attività e le stesure dei documenti utili alla realizzazione del progetto nel rispetto degli accordi presi;
- *Attuazione e controllo*: vengono eseguite le attività pianificate, controllando regolarmente e consistentemente lo stato di avanzamento e il rispetto degli impegni prefissati conformemente al costo, alle tempistiche e ai requisiti accordati in precedenza;
- *Revisione e valutazione*: vengono effettuate revisioni periodiche e confronti con il cliente, per assicurare il corretto svolgimento del progetto secondo i termini prefissati e risolvere dubbi e incertezze;
- *Completamento e consegna*: una volta completato il progetto, viene consegnato al cliente il prodotto finale, secondo quanto stipulato nel contratto.

=== Aspettative
Il gruppo SweeTen Team intende instaurare e mantenere uno stretto rapporto di collaborazione con l’azienda proponente #box(image(g.azzurro, width: 5em, height: auto)) e, in particolare, con le figure dei referenti: Giorgio Vallini, Martina Daniele, Mattia Gottardello e Nicola Boscaro.

Grazie ad un dialogo continuo, il gruppo intende:

- Ricevere #glossary("feedback") sul lavoro svolto;
- Verificare che i vincoli e i requisiti individuati corrispondano a quanto richiesto dal capitolato e dall’azienda proponente.


=== Rapporti con il proponente
L’azienda #box(image(g.azzurro, width: 5em, height: auto)) ha messo a disposizione un canale di comunicazione costante e tempestivo per facilitare il dialogo con i responsabili del progetto assegnato al team. Questo canale, istituito sulla piattaforma #glossary("Discord"), consente di risolvere dubbi, ricevere consigli e gestire l’organizzazione del lavoro. Oltre a #glossary("Discord"), per delle richieste più formali è possibile contattare la Proponente anche tramite posta elettronica.

Inoltre, è stato concordato di organizzare regolarmente riunioni di Stato Avanzamento Lavori (#glossary("SAL")), che si tengono generalmente ogni due settimane, il martedì alle 17:00 (con eventuali modifiche di data o orario in caso di necessità). Queste riunioni coincidono con la conclusione dello Sprint corrente e l’inizio del successivo. Durante gli incontri, il team presenta il lavoro svolto nello #glossary("Sprint"), riceve feedback dall’azienda, discute eventuali problemi riscontrati e pianifica le attività per il prossimo #glossary("Sprint").

Per ogni colloquio con l’azienda proponente verrà redatto un resoconto sotto forma di Verbale Esterno, che riporterà nel nome e all’interno del documento la data del relativo incontro. I verbali redatti potranno essere consultati all’interno della relativa cartella presente sul #glossary("repository") #link("https://github.com/SweeTenTeam/Docs/tree/master/documents"), disponibile per ogni #glossary("baseline") del progetto.

=== Documentazione fornita
In aggiunta alle attività volte alla realizzazione del progetto, vengono redatti e resi disponibili all’azienda #glossary("propronente") #box(image(g.azzurro, width: 5em, height: auto)) e ai Committenti Prof. Vardanega e Prof. Cardin i seguenti documenti:

==== Valutazione dei Capitolati
La Valutazione dei Capitolati è un documento che fornisce una panoramica dettagliata sui capitolati d’appalto presentati il 15 ottobre 2023. Per ogni progetto vengono analizzate le richieste del #glossary("proponente"), individuate le possibili soluzioni e identificate eventuali criticità.

Ogni capitolato è stato suddiviso nelle seguenti sezioni:

- *Descrizione*: nome del progetto, azienda proponente, informazioni generali relative al prodotto da sviluppare secondo quanto descritto nella presentazione del capitolato;
- *Dominio applicativo*: contesto del progetto;
- *Dominio tecnologico*: tecnologie da utilizzare per lo sviluppo;
- *Aspetti positivi*;
- *Fattori critici*;
- *Conclusioni*: motivazioni sulla scelta/non scelta del capitolato

==== Dichiarazione degli Impegni
Questo documento formalizza la volontà del gruppo di impegnarsi nella realizzazione del prodotto previsto da un capitolato specifico (nel nostro caso, #glossary("BuddyBot"), proposto dall’azienda #box(image(g.azzurro, width: 5em, height: auto))). 

Oltre a dichiarare l’impegno, il documento include:

- La suddivisione del monte ore complessivo e dei singoli ruoli tra i membri del gruppo;
- La descrizione dettagliata dei ruoli e delle loro responsabilità, con riferimento alle specifiche del progetto;
- Un preventivo iniziale dei costi;
- La scadenza prefissata prevista per il completamento del progetto.

==== Glossario
Il Glossario è un documento di supporto pensato per i membri del team, i committenti e l’azienda #glossary("proponente"). La sua creazione ha l’obiettivo di eliminare ambiguità o incomprensioni legate alla terminologia utilizzata nella documentazione del progetto, garantendo chiarezza e coerenza nella comunicazione.

==== Lettera di presentazione
La Lettera di Presentazione è un documento che accompagna la documentazione e il prodotto forniti all’azienda #glossary("proponente") durante le fasi di revisione del progetto. Il suo scopo è fornire un rapido contesto sullo stato di avanzamento dei lavori (o sul loro avvio, nel caso della lettera relativa ai capitolati) e offrire una breve panoramica della documentazione prodotta fino a quel momento.

==== Analisi dei Requisiti
L’Analisi dei Requisiti è un documento che definisce le funzionalità che il prodotto deve offrire e i requisiti da soddisfare affinché il #glossary("software") sviluppato risulti conforme alle richieste del proponente. Descrive in dettaglio i casi d’uso, i #glossary("requisiti") del progetto e le funzionalità attese per il prodotto finale, basandosi sugli obiettivi definiti. Inoltre, funge da base preliminare per la progettazione del software.

Contiene le seguenti informazioni:

- *Descrizione del prodotto*: obiettivo finale del prodotto e le sue funzionalità principali;
- *Lista dei casi d’uso*: identificazione di tutti gli scenari di utilizzo del sistema da parte degli utenti. Per ogni caso d’uso sono analizzati: 
  - Scenario;
  - Attori coinvolti;
  - Azioni eseguibili.
- *Lista dei requisiti*: tutte le richieste o vincoli definiti dal proponente o dedotti dal team per la realizzazione del prodotto finale. I requisiti possono essere obbligatori, desiderabili e opzionali e verranno classificati dal gruppo a seconda della loro importanza.

==== Piano di Progetto
Il Piano di Progetto è un documento versionato e soggetto ad approvazione, redatto e aggiornato dal Responsabile del progetto con il supporto degli Amministratori durante l’intera durata del lavoro. Il suo scopo è delineare la pianificazione e la gestione delle attività necessarie per la realizzazione del progetto.

Il documento include le seguenti sezioni:

- *Analisi dei Rischi*: identifica le potenziali problematiche che potrebbero rallentare o ostacolare lo sviluppo. Per prevenire questi problemi, il gruppo propone soluzioni da applicare tempestivamente. I rischi sono classificati in:
  - *#glossary("Rischi organizzativi")*
  - *#glossary("Rischi tecnologici")*
- *Modello di sviluppo*: descrive l’approccio metodologico e strutturato adottato dal team per sviluppare il prodotto.
- *Pianificazione*: suddivide il progetto in periodi definiti, ciascuno corredato da eventi e attività specifiche. Per ogni periodo, il documento mostra una stima dell’impegno richiesto a ciascun membro del gruppo.
- *Preventivo*: fornisce una stima della durata di ogni periodo e il tempo necessario per completare tutte le attività previste.
- *Consuntivo*: analizza il lavoro effettivamente svolto rispetto al preventivo, valutando lo stato di avanzamento del progetto al termine di ciascun periodo.

==== Piano di Qualifica
Il Piano di Qualifica descrive le strategie di verifica e validazione per garantire la qualità del prodotto e dei processi del progetto. È un documento dinamico e aggiornato che definisce le pratiche di controllo qualità, con focus sulle metriche di valutazione del prodotto.

Le principali sezioni sono:

- *Qualità di processo*: garantisce che i processi di sviluppo siano ottimali, integrando la qualità in tutte le attività del ciclo di vita del #glossary("software").
- *Qualità di prodotto*: assicura che il prodotto soddisfi i requisiti del progetto, concentrandosi su affidabilità, funzionalità, manutenibilità e usabilità.
- *Test*: include il piano di testing, comprendente test di unità, integrazione, sistema e accettazione, per verificare la correttezza finale del prodotto.

==== Norme di Progetto
Il documento Norme di Progetto ha lo scopo di definire un insieme di standard e regole riguardanti i processi e le loro modalità operative (#glossary("Way of Working")), da seguire obbligatoriamente dal team di sviluppo durante l'intero ciclo di vita del progetto, per garantire la qualità e la conformità agli obiettivi e requisiti stabiliti con il cliente. 

Il documento è suddiviso nelle seguenti sezioni:

- Introduzione
- Processi primari
- Processi di supporto
- Processi organizzativi
- Standard `ISO/IEC 9126` per la qualità
- Metriche di qualitá del processo
- Metriche di qualitá del prodotto

==== Manuale Utente
Il documento Manuale Utente serve a descrivere i requisiti minimi e le istruzioni utili all’installazione/utilizzo del prodotto finale. Descrive inoltre le funzionalità del prodotto e di come l’utente può usufruirne.

==== Specifica Tecnica
Il documento Specifica Tecnica ha lo scopo di descrivere e chiarire gli aspetti tecnici chiave del progetto, oltre a servire come guida per la codifica e la manutenzione del sistema. La sua finalità principale è fornire una descrizione dettagliata e approfondita dell'architettura implementativa del sistema, analizzando anche il codice e i design pattern utilizzati. Inoltre, il documento ha il compito di monitorare la copertura dei requisiti definiti nell'Analisi dei Requisiti.

==== Verbali Interni
La documentazione relativa alle riunioni interne avvenute tramite la piattaforma comunicativa #glossary("Discord") del team, viene riportata sottoforma di verbali interni. 

Lo scopo dei verbali interni è quello di fissare per iscritto:

- Discussioni, proposte, dubbi ed eventuali problemi riscontrati;
- Riassunto dell’andamento dell’ultimo periodo;
- Organizzazione per il prossimo periodo.

==== Verbali esterni
La documentazione relativa alle riunioni esterne avvenute tramite la piattaforma comunicativa #glossary("Google Meet") dal team e dai referenti del progetto, viene riportata sottoforma di verbali esterni. 

Lo scopo dei verbali esterni è quello di fissare per iscritto:

- Discussioni, proposte, dubbi ed eventuali problemi riscontrati;
- Resoconto del lavoro svolto durante l’ultimo Sprint con #glossary("feedback") della Proponente;
- Organizzazione e obiettivi per il prossimo #glossary("Sprint").

I verbali esterni, al contrario dei verbali interni, una volta redatti, verranno inviati telematicamente alla Proponente per una essere verificati e convalidati.

=== Strumenti
Gli strumenti software utilizzati nel processo di fornitura sono descritti di seguito.

==== #glossary("Telegram")
Servizio di messaggistica istantanea utilizzato per come metodo di comunicunicazione asincrona tra membri del gruppo.

==== #glossary("Gmail")
Servizio di posta elettronica utilizzato come metodo di comunicunicazione formale fra il team e i referenti del progetto.

==== #glossary("Discord")
Piattaforma utilizzata dal team per effettuare videochiamate e scambiare informazioni, file, dati utili, link e appunti. #glossary("Discord"), attraverso un apposito canale, viene utilizzato anche per avere un riscontro immediato con il team di #box(image(g.azzurro, width: 5em, height: auto)).

==== #glossary("Google Meet")
Piattaforma dove vengono svolti incontri, ogni due settimane, con l’azienda e i responsabili del progetto.

==== #glossary("Google Calendar")
Servizio che offre la possibilità di visualizzare le riunioni esterne e fissate dalla Proponente.

==== #glossary("Fogli Google")
Applicazione online che consente di creare e formattare fogli di calcolo. Viene utilizzata dal team per inserire e organizzare i dati relativi a preventivi e consuntivi dei vari periodi;

==== #glossary("GitHub")
Piattaforma online che consente agli sviluppatori di creare, salvare, gestire e condividere il proprio codice sorgente, facilitando la collaborazione e il controllo delle versioni.

==== #glossary("Typst")
Linguaggio utilizzato per la creazione e la redazione della documentazione.

// PARTE DI MATTEO


#pagebreak()
= Processi di Supporto
// PARTE DI MATTEO




== Gestione della qualità
=== Scopo
Il processo di Gestione Della Qualità ha come obiettivo principale quello di garantire che i processi, i prodotti e gli artefatti tutti nel ciclo di vita del progetto, siano conformi ai piani specificati, allineati con i requisiti stabiliti e che, in generale, rispettino i canoni di qualità in precedenza decisi.

=== Descrizione
Per garantire e mantenere un certo standard di qualità, il team si impegna ad utilizzare altri processi di supporto, come ad esempio la #glossary("Verifica"), #glossary("Validazione") e revisioni aggiuntive con il #glossary("Proponente").
Una volta stabiliti e definiti gli standard da rispettare nel #glossary("Piano Di Qualifica"), rimane solamente da assicurarsi che questi vengano applicati e rispettati in ogni fase del progetto.
Sono state quindi definite le `best practices` di modo che ogni componente del gruppo lavori seguendo le stesse direttive e linee guida. In questo modo, applicare e rispettare questi standard diventa più semplice e veloce. Per controllare che questi standard siano applicati durante tutta la durata del progetto, ogni prodotto o artefatto è controllato da un #glossary("Verificatore").

=== Piano Di Qualifica
Il documento *Piano di Qualifica* è fondamentale per garantire il rispetto gli standard di qualità richiesti, per il completamento degli obiettivi di questo #glossary("processo") e per soddisfare le richieste e le aspettative degli #glossary("Stakeholders").

Il documento si estende, e non si limita, a:

- Definire gli obiettivi di qualità del progetto;
- Definire le metriche di visione quantitativa;
- Definire test di qualità e di accettazione;
- Fornire una retrospettiva sul progetto;

=== Testing
Il suddetto documento *Piano di Qualifica* definisce obiettivi di qualità sia dei processi che dei prodotti. Le metriche relative forniscono una verifica sugli aspetti di accessibilità, mentre i test garantiscono la qualità generale del software e dei processi.

Le categorie di test sono:

+ #glossary("Test di unità"): verifica il corretto sviluppo e funzionamento di un'unica unità del sistema. Un'unità è definita come un elemento indivisibile e unico del sistema stesso.
+ #glossary("Test di integrazione"): verifica il corretto funzionamento di più unità del sistema, integrate tra loro, ma che cooperano per svolgere un'unica funzione all'interno del sistema.
+ #glossary("Test di sistema"): verifica il funzionamento del sistema nel suo intero. I requisiti funzionali, di vincolo, di qualità e di prestazione precedentemente concordati con il Proponente sono testati e verificati in questa fase.
+ #glossary("Test di accettazione"): verifica il soddisfacimento del Proponente rispetto ai requisiti concordati. Questi test sono eseguiti in presenza del Proponente stesso. Il superamento di questi test garantisce il rilascio del prodotto.

=== Metriche

Le metriche di qualità sono fondamentali per garantire il rispetto degli standard di qualità richiesti. Il documento *Piano di Qualifica* fornisce varie metriche utilizzate per misurare e rispettare gli standard di qualità.

Le metriche sono divise in due categorie:

- Processo: PRC
- Prodotto: PRD

Inoltre, le suddette metriche sono identificate come segue:
*#align("M-[Categoria-Metrica]-[Sigla-Identificativa-Metrica]", center)*

Ogni metrica ha:

- un valore minimo (o accettabile): valore sotto il quale il processo o il prodotto misurato diventa inaccettabile
- un valore ammissibile (o ottimale): valore ideale che dovrebbe essere raggiunto dalla metrica
- descrizione: descrizione breve della metrica

//to do: ricontrollare questo paragrafo

=== Aspettative

Il team si aspetta di rispettare in ogni momento gli standard di qualità definiti. Inoltre, il team si aspetta:

- Ottima qualità del prodotto
- Ottima qualità dei processi
- Miglioramento costante
- Test frequenti e predicibili
- Soddisfazione delle richieste e aspettative del Proponente

#pagebreak()
= Processi Organizzativi
I processi organizzativi sono fondamentali per garantire il corretto svolgimento del progetto in conformità con gli standard di qualità prefissati.

== Gestione dei Processi
=== Scopo
Come stabilito dallo Standard `ISO/IEC 12207:1997`, il processo organizzativo di gestione dei processi ha come scopo quello di identificare le attività generali che ogni membro del team è chiamato a svolgere. È un'attività chiave per garantire il completamento del progetto in modo efficiente e in linea con gli standard di qualità già definiti e con le aspettative del Proponente.

=== Descrizione
Il processo è diviso nelle seguenti attività:

- Inizio e definizione dello Scopo;
- Pianificazione;
- Esecuzione e Controllo;
- Revisione e Valutazione;
- Chiusura.


=== Pianificazione
==== Scopo
Come da `Standard ISO/IEC 12207:1997`, il #glossary("Responsabile") ha il compito di predisporre i piani per l'esecuzione di tutte le attività di pianificazione. I piani dovranno essere dettagliati, contenere la descrizione delle attività e dei compiti (e ruoli) assegnati.
Il Responsabile dovrà redigere questa pianificazione all'interno del documento #glossary("Piano di Progetto").
Questo documento riporta tutte le descrizioni e pianificazioni delle attività da svolgere in un certo periodo (uno o più sprint).

==== Descrizione
L'attività di pianificazione viene articolata nelle due seguenti sezioni:

+ Ruoli
+ Ticketing

==== Aspettative
L'attività di pianificazione aiuta il team a:

- Organizzare e pianificare le attività da svolgere;
- Assegnare i compiti ai membri del team;
- Rispettare le scadenze prefissate;
- Monitorare e controllare l'avanzamento del progetto.

Inoltre serve al Team per rispettare le regole organizzative stabilite per lo svoglimento del progetto.

==== Ruoli
I ruoli sono decisi dal Responsabile di Progetto. Questa figura è coordinatrice di tutti i membri, e delle attività da essi svolte. Al termine del progetto, ogni memebro dovrà aver ricoperto ogni ruolo. *SweeTenTeam* ha deciso di ruotare i ruoli ogni sprint (ogni due settimane).

I ruoli in depth:

*Responsabile di progetto*\
Ha il compito fondamentale di rappresentare il gruppo e di esporlo al Proponente e ai committenti.

I compiti di questo ruolo sono:

- Approvare la documentazione
- Gestire la pianificazione del progetto
- Coordinare i membri del gruppo assegnando tasks e ruoli
- Studiare e gestire l'analisi dei rischi
- Coordinare e curare i rapporti esterni ed interni.

*Amministratore* \
Definisce, controlla e gestisce l'ambiente e gli strumenti di lavoro del progetto. Ha piena responsabilità sull'efficacia ed efficienza del #glossary("Way of Working").

I pricipali compiti sono:

- Redigere e mantenere aggiornata la documentazione: gestisce il versionamento
- Gestire la configurazione del progetto e del prodotto: controllo sul prodotto software
- Gestire i processi: problem solving rispetto ai processi
- Migliorare l'ambiente di lavoro: ricerca gli strumenti e le tecnologie necessarie per migliorare e automatizzare il lavoro

\

*Analista* \
L'#glossary("Analista") approfondisce le richieste, tecniche e non, del #glossary("Capitolato"). E' principalmente fondamentale, e presente, nella prima fase del progetto, quando viene redatta l'analisi dei requisiti. Supervisiona la scrittura della stessa, in quanto è di vitale importanza che non vi siano errori. Avere errori nell'Analisi dei Requisiti comprometterebbe l'intero progetto.

Ha il compito di:

- Studiare il progetto e il suo contesto applicativo
- Raccogliere, analizzare e studiare i bisogni del cliente
- Scrivere l'Analisi dei Requisiti
- Definire la complessità dei vari requisiti

*Progettista* \
Determina le scelte tecniche del progetto, trasformando i requisiti trovati dagli Analisti in un'architettura che strutturi e rappresenti il problema. Il progettista inoltre seguirà lo sviluppo ma non la manutenzione.

I compiti principali sono:

- Sviluppare un prodotto economico e facilmente manutenibile partendo dalle indicazioni degli Analisti
- Favorire efficienza ed efficacia con le sue scelte

*Verificatore* \
Controlla il lavoro svolto dagli altri membri del Team e si assicura che sia conforme agli standard di qualità definiti.

Il Verificatore ha il compito di:

- Verificare che le attività svolte siano corrette e conformi agli standard attraverso le tecniche e gli strumenti definiti nelle `Norme di Progetto`

*Programmatore* \
Svolge l'attività di codifica del progetto e delle sue componenti di supporto basandosi sull'architettura indicata dal Progettista.

I compiti principali sono:

- Implementare le funzionalità richieste dal Progettista
- Scrivere codice pulito, documentato e manutenibile che rispetti le `Norme di Progetto`
- Creare Test per verifica e validazione del codice
- Scrivere il #glossary("manuale utente")

==== Ticketing

Il Team utilizza il sistema di #glossary("Issue Tracking Sistem") (ITS) di GitHub. Questo permette di assegnare compiti e ruoli ai membri del Team, di monitorare l'avanzamento del progetto e di tenere traccia delle attività svolte, oltre ad essere facilmente collegabile a #glossary("Pull Request") e #glossary("Commit").

Le issue principali sono create dal responsabile del gruppo che assegna i compiti ai vari membri del team. In seguito, ogni problema è ulteriormente suddiviso in sotto-problemi e di conseguenza, "sotto-issue". Queste ultime sono create non dal Responsabile, ma dall'assegnatario della issue principale. Questo permette di avere una visione chiara e dettagliata delle attività da svolgere e di monitorare l'avanzamento del progetto. Ad esempio:

- Responsabile crea la Issue `Norme di Progetto` e la assegna al componente X
- X studia il documento `Norme di progetto` e individua sotto-issue per rendere il problema più approcciabile.
- X crea le sotto-issue individutae, le auto-asssegna e sceglie il verificatore.

Ogni _Issue_ è composta da:

- Titolo: titolo della issue
- Descrizione: descrizione dell'attività da completare
- Assegnatario (o Assegnatari): chi deve svolgere questa issue
- Verificatore: chi deve verificare il lavoro svoltop
- #glossary("Milestone"): traguardo da raggiungere
- #glossary("Label"): etichetta per categorizzare le issue
- #glossary("Project"): progetto a cui appartiene la issue
- stato: aperta, chiusa, in corso, ecc.
- data di inizio: data di inizio dell'attività
- data di fine: data di fine dell'attività

La creazione e la gestione della issue segue il seguente flusso:

1. Creazione della Issue
2. Assegnazione della Issue
3. Creazione delle sotto-issue
4. Assegnazione delle sotto-issue
5. Inizio dell'attività
6. Spostamento della Issue da `To Do` a `In Progress`
7. Svolgimento attività
8. Fine attività
9. Creazione #glossary("Pull Request")
10. Verifica del lavoro svolto
  1. se corretto, si passa al punto 11
  2. se non corretto, il verificatore lascia commenti sulla #glossary("Pull Request") riguardanti le modifiche necessarie, l'assegnatario della issue apporta le modifiche e si ripete dal punto 10
11. Chiusura della Issue
12. Spostamento della Issue da `In Progress` a `Done`
13. Chiusura #glossary("Pull Request") e merge su branch `Develop`
14. Eventuale eliminazione del branch (solo se non deve essere riutilizzato)

*Milestones* \
Il gruppo, dopo una pianificazione accurata, ha deciso di impostare le milestones ad '#glossary("Artefatti")' e non a '#glossary("sprint")'.
Il gruppo ritiene che le Milestones indichino qualcosa di completato, quindi è stato deciso di ritenere una milestone completata solamente quando un artefatto è stato completato e verificato. Al contrario, è stata impostata una data di inizio e una data di fine alla singola issue, in modo che l'avanzamento del progetto sia comunque monitorabile nel tempo.

=== Coordinamento
È l'attività responsabile della gestione delle comunicazioni e degli incontri, sia interni che esterni. Questo compito assume un ruolo fondamentale nella corretta riuscita del progetto, garantendo l'efficienza e l'efficacia del Team stesso.

Le attività di coordinamento comprendono le comunicazioni interne ed esterne, l'organizzazioni delle riunioni e la gestione delle scadenze.

==== Comunicazioni

===== Interne

Le comunicazioni interne avvengono con due modalità: le comunicazioni scritte, formali e non, avvengono attraverso #glossary("Telegram"). Le comunicazioni verbali, quindi le riunioni, la condivisione di file, di codice, e di qualsiasi altra risorsa avvengono attraverso #glossary("Discord").

Su #glossary("Telegram") sono affrontate solamente questioni di rapida risoluzione, e comunicazioni off-topic. Le decisioni più strutturate, come elencato sopra, verranno prese su discord in presenza di tutti i memebri del Team durante la riunione settimanale.

===== Esterne

Tutte le comunicazioni esterne sono gestite dal Responsabile del Progetto, previa consultazione con il Team e visione della comunicazione stessa. Le comunicazioni formali vengono effettuale tramite email attraverso questo indirizzo: #link("mailto:" + g.mail). L'azienda #box(image(g.azzurro, width: 5em, height: auto)) ha messo a disposizione anche un canale di comunicazione per facilitare il dialogo con i responsabili del progetto assegnato al team.



==== Riunioni

Il responsabile attuale ha il compito di introdurre i punti che saranno trattati nella riunione e di redigere il verbale interno, oltre che a decidere chi lo verificherà. La riunione avviene su Discord, in un canale dedicato.

===== Interne

Le riunioni interne avvengono settimanalmente, il giorno e l'ora sono decisi dal Responsabile e comunicati al Team in base alle esigenze di ogni membro. Queste riunioni servono per discutere lo stato del progetto, le attività svolte e da svolgere, e per prendere decisioni importanti.

===== Esterne

Le riunioni esterne che coinvolgono il Proponente e i Committenti si tengono generalmente ogni due settimane, il martedì dalle 17:00 alle 18:00 (con eventuali modifiche di data o orario in caso di necessità).
Le riunioni esterne sono effettuate su #glossary("Google Meet"). Queste riunioni sono gestite dal Responsabile del Progetto, che si occupa di organizzare l'incontro, di redigere l'ordine del giorno e il verbale esterno. Quest'ultimo viene condiviso con il Team e con il Proponente.

==== Verbali

Dopo ogni incontro, sia esso interno od esterno, viene redatto un verbale dal Responsabile e verificato dal Verificatore stabilito.

===== Interni

In ogni incontro interno vengono affrontati diversi temi, come si vede al punto 3.1.4.2.1. Al termine di una riunione, viene creata dal responsabile una issue, che è auto-assegnata. Dopo la redazione di tale verbale, viene verificato, creata la #glossary("Pull Request") e chiusa la issue.

===== Esterni

Le modalità sono le stesse del punto precedente. Dopo che la issue viene chiusa, il verbale viene mandato al Proponente e ai Committenti per essere firmato e approvato. Dopo la firma, il verbale viene caricato su #glossary("GitHub").
