#import "/template/document.typ": *

#show: project.with(
  title: "Analisi dei Requisiti",
  managers: p.belenkov,
  recipients: (
    p.vardanega,
    p.cardin,
    p.azzurro,
  ),
  changelog: (
    "0.0.1","2024-11-16", p.belenkov, p.santi,
    [
      Stesura iniziale del documento e breve introduzione.
    ]
  ),
  show_images_list: false,
  show_tables_list: false,
  outline_depth: 3,
)

= *Introduzione*
== Scopo del documento
L'analisi dei requisiti è un documento fondamentale per tutti i progetti di sviluppo software che vogliono creare un prodotto a regola d'arte.\

Lo scopo di questo documento è di definire le funzionalità che il sistema sarà in grado di offrire, ossia i requisiti obbligatori e opzionali che dovranno essere soddisfatti al fine di realizzare le richieste fatte dal proponente.\

Il documento non si pone come una soluzione tecnica al problema, quanto più una definizione chiara e concisa di esso e di come possa essere risolto.\

In particolare, le finalità di questo documento possono essere descritte nei seguenti punti:\

-  *Definire le esigenze del proponente*:\
Questo documento si basa principalmente sulle richieste del proponente, ossia le idee che quest'ultimo ha riguardo a come dovrebbe essere il software che verrà sviluppato da noi. Tali idee verranno raccolte tramite i vari documenti e incontri con #box(image(g.azzurro, width: 5em, height: auto)) che avverranno lungo il percorso dello svolgimento del progetto.\

- *Fornire una base per la progettazione del sistema*:\
L'Analisi dei Requisiti fornisce una base per la progettazione del sistema, in quanto definisce le funzionalità che il sistema dovrà offrire, permettendo così ai programmatori di comprendere le esigenze dei proponenti identificando le soluzioni che più si adeguano a tali esigenze.\

- *Tracciare i requisiti del sistema*:\
Una volta raccolte le richieste del proponente, questo documento si impone di identificare i requisiti e suddividerli in requisiti funzionali e non funzionali.\

- *Verificare e validare i requisiti*:\
Questo processo garantisce che le attività siano svolte seguendo il Way of Working del gruppo, controllando la presenza di errori e correggendoli una volta identificati.\
Ciò permette di accertare che il prodotto finale corrisponda alle aspettative del proponente.\

Una volta che i requisiti del sistema saranno stati definiti in maniera chiara in modo tale da permettere al lettore di comprenderli pienamente, allora verrà data una rappresentazione formale grafica del software attraverso l'utilizzo di diagrammi dei casi d'uso.
