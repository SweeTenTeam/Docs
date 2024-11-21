#import "/template/document.typ": *

#show: project.with(
  title: "Analisi dei Requisiti",
  managers: p.belenkov,
  recipients: (p.vardanega, p.cardin, p.azzurro,),
  changelog: ("0.0.1", "2024-11-16", p.belenkov, p.santi, [
    Stesura iniziale del documento e breve introduzione.
  ]),
  changelog: ("0.0.2", "2024-11-21", p.mahdi, p.santi, [
    Fine punto 1 e inizio punto 2.
  ]),
  show_images_list: true,
  show_tables_list: true,
  outline_depth: 3,
)

= *Introduzione*
== Scopo del documento
L'#glossary("Analisi dei requisiti") è un documento fondamentale per tutti i progetti di sviluppo software che vogliono
creare un prodotto a regola d'arte.\

Lo scopo di questo documento è di definire le funzionalità che il sistema sarà in grado di offrire, ossia i requisiti
obbligatori e opzionali che dovranno essere soddisfatti al fine di realizzare le richieste fatte dal #glossary("proponente").\

Il documento non si pone come una soluzione tecnica al problema, quanto più una definizione chiara e concisa di esso e
di come possa essere risolto.\

In particolare, le finalità di questo documento possono essere descritte nei seguenti punti:\

- *Definire le esigenze del proponente*:\
Questo documento si basa principalmente sulle richieste del proponente, ossia le idee che quest'ultimo ha riguardo a
come dovrebbe essere il software che verrà sviluppato dal nostro team. Tali idee verranno raccolte tramite i vari
documenti e incontri con #box(image(g.azzurro, width: 5em, height: auto)) che avverranno lungo il percorso dello
svolgimento del progetto.\

- *Fornire una base per la progettazione del sistema*:\
L'Analisi dei Requisiti fornisce una base per la progettazione del sistema, in quanto definisce le funzionalità che il
sistema dovrà offrire, permettendo così ai #glossary("programmatori") di comprendere le esigenze dei proponenti
identificando le soluzioni che più si adeguano a tali esigenze.\ //TODO: Sistemar questa frase, troppe ripetizioni

- *Tracciare i requisiti del sistema*:\
Una volta raccolte le richieste del proponente, questo documento si impone di identificare i requisiti e suddividerli in
requisiti funzionali e non funzionali.\

- *Verificare e validare i requisiti*:\
Questo processo garantisce che le attività siano svolte seguendo il #glossary("Way of Working") del gruppo, controllando
la presenza di errori e correggendoli una volta identificati.\
Ciò permette di accertare che il prodotto finale corrisponda alle aspettative del proponente.\

Una volta che i requisiti del sistema saranno stati definiti in maniera chiara in modo tale da permettere al lettore di
comprenderli pienamente, allora verrà data una rappresentazione formale grafica del software attraverso l'utilizzo di
#glossary("diagrammi dei casi d'uso").

== Scopo del progetto
Lo scopo del progetto è la realizzazione dei un assistente virtuale sotto forma di #glossary("chatbot") in grado di assistere gli utenti rispondendo alle loro domande in linguaggio naturale. 
Il chatbot garantirà un accesso rapido alle informazioni interne dell'azienda aggregando i dati provenienti dalle piattaforme #glossary("Jira"), #glossary("Github") e #glossary("Confluence") ed elaborando questi ultimi con l'uso dell'intelligenza artificiale per dare risposte chiare.
Questo strumento sarà utile non solo ai membri già attivi dell'azienda per tagliare i tempi lunghi di ricerca manuale di una determinata informazione ma anche per il processo di onboarding dei nuovi arrivati rispondendo alle domande più frequenti e guidandoli nel processo di apprendimento delle risorse aziendali senza il bisogno di una figura di supporto.

== Glossario
Al fine di evitare eventuali equivoci o incomprensioni riguardo la terminologia utilizzata all’interno di 
questo documento, si è deciso di adottare un Glossario, file e pagina web, in cui
vengono riportate tutte le definizioni delle parole ambigue utilizzate nei documenti di questo progetto. 
Nel documento verranno riportati tutti i termini definiti nel loro ambiente di utilizzo con la descrizione del loro significato.
I termini presenti nel glossario sono evidenziati e hanno una piccola 'G' alla fine

== Sviluppo e miglioramento
Questo documento è stato sviluppato in modo graduale e progressivo, 
con l'obiettivo di facilitare eventuali modifiche future 
in base alle necessità concordate tra il gruppo di progetto e l'azienda committente. 
Pertanto è soggetto a un continuo miglioramento.

== Riferimenti
=== Normativi
  Presentazione pdf del capitolato C9:
  https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9p.pdf
=== Informativi
  Slide del corso(T5): 
  https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T05.pdf

= Descrizione
== Obiettivo del prodotto
Lo scopo del progetto è la creazione di un #glossary("chatbot") #glossary("text-to-text") per l'azienda #box(image(g.azzurro, width: 5em, height: auto)) 
che centralizza le informazioni relative all'azienda provenienti da diverse piattaforme e con l'uso di un #glossary("LLM") le elabora per creare delle risposte 
in linguaggio naturale. Il #glossary("chatbot") sarà in grado di rispondere a domande che variano dalla data di un determinato incontro fissato su #glossary("Jira") 
a cosa è cambiato in un determinato commit su #glossary("Github"). Inoltre aiuterà i nuovi membri a navigare tra tra le risorse aziendali e rispondendo alle domande frequenti.
