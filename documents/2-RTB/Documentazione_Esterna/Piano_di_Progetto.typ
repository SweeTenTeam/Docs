#import "/template/document.typ": *
#let num_tab_calendario_prj = 6
#let num_tab_prev_costi = 7
#let num_tab_doc_revisioni = 8

#show: project.with(
  title: "Piano di Progetto",
  managers: p.fracaro,
  recipients: (
    p.vardanega,
    p.cardin,
    p.azzurro,
  ),
  changelog: (
    "0.0.1",
    "2024-11-21",
    p.fracaro,
    p.benedetti,
    [
      Struttura iniziale del documento
    ],
  ),
  show_images_list: false,
  show_tables_list: false,
  outline_depth: 3,
)

= *Introduzione*
== Scopo del documento

Il presente documento rappresenta un elemento cardine per la pianificazione e la gestione di progetti di sviluppo software,
con l'obiettivo di garantire il rispetto dei più elevati standard di qualità definiti dall’ingegneria del software.
Esso intende fornire una descrizione completa e dettagliata delle pratiche e dei metodi organizzativi e di pianificazione adottati,
specificandone l'applicazione concreta in tutte le fasi del progetto.
In particolare, il documento non solo funge da guida interna per il team di sviluppo, offrendo un supporto strutturato per la retrospettiva
e l'ottimizzazione delle attività, ma si propone anche come uno strumento utile per i valutatori esterni.
Attraverso l'illustrazione delle metodologie applicate, delle risorse impiegate e dei costi stimati,
consente una chiara comprensione dell'evoluzione del progetto e della sua sostenibilità.

Nel dettaglio, il documento affronta i seguenti temi fondamentali:

- Analisi dei rischi, per identificare le criticità e definire strategie di mitigazione;
- Modello di sviluppo adottato, con una spiegazione delle scelte metodologiche;
- Pianificazione delle attività, che include la suddivisione temporale delle fasi di lavoro;
- Distribuzione dei ruoli, per garantire una gestione ottimale delle responsabilità all'interno del team;
- Stima dei costi e delle risorse, con proiezioni dettagliate per ogni periodo e l'indicazione di eventuali variazioni.
Questo piano non si limita a offrire una visione operativa del progetto, ma mira a garantire un approccio sistematico e trasparente,
facilitando la gestione del processo e il monitoraggio dei progressi.

#linebreak()
== Scopo del prodotto

Il progetto ha l'obiettivo di sviluppare un assistente virtuale che centralizzi e aggrega le informazioni provenienti da GitHub, Confluence e Jira, sfruttando le potenzialità delle tecnologie di intelligenza artificiale per migliorare l'efficacia e la personalizzazione del supporto offerto agli utenti. L'assistente consentirà un accesso facile, rapido e intuitivo a tutte le informazioni aziendali rilevanti, semplificando la ricerca e riducendo i tempi di navigazione tra diverse piattaforme.#linebreak()
In questo modo, l'assistente non solo contribuirà a ottimizzare i flussi di lavoro, ma aiuterà anche a migliorare la produttività complessiva dell'organizzazione, garantendo una gestione delle informazioni più smart e un supporto sempre più personalizzato. La soluzione offrirà quindi un significativo vantaggio competitivo, permettendo ai membri dell'azienda di concentrarsi su attività a maggior valore aggiunto e migliorando i risultati aziendali a lungo termine.

#linebreak()
== Glossario
Al fine di evitare eventuali equivoci o incomprensioni riguardo la terminologia utilizzata all'interno di questo documento,
si è deciso di adottare un Glossario, con file apposito, in cui
vengono riportate tutte le definizioni rigogliose delle parole ambigue utilizzate in ambito di
questo progetto. Nel documento appena descritto verranno riportati tutti i termini definiti nel
loro ambiente di utilizzo con annessa descrizione del loro significato.
La presenza di un termine all'interno del Glossario è evidenziata dal #glossary("colore marrone")

#pagebreak()
== Riferimenti
=== Riferimenti normativi
- Piano di progetto v.1.0.0
- Capitolato C9: BuddyBot#linebreak()https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9.pdf
- Regolamento progetto didattico#linebreak()https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf

=== Riferimenti informativi
- T2 - Processi di ciclo di vita del software
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf
- T4 - Gestione di progetto
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf
- Glossario
https://sweetenteam.github.io/docs/RTB/Glossario

#pagebreak()
= *Analisi dei rischi*
Durante lo sviluppo del progetto, è essenziale mitigare gli impatti delle difficoltà riscontrate attraverso una corretta analisi dei rischi, fondamentale per garantire il successo delle attività pianificate. Per affrontare le problematiche che possono emergere in diverse condizioni durante l'implementazione, questa sezione del Piano di Progetto si concentra sull'identificazione, analisi e trattamento dei rischi.

Il processo di gestione dei rischi si articola in cinque fasi principali:

1. Identificazione dei rischi: questa fase prevede il riconoscimento delle fonti di rischio, delle aree di impatto, degli eventi e delle conseguenze potenziali. Il team utilizzerà tecniche di brainstorming per compilare un elenco completo di rischi basato sugli ostacoli che potrebbero influenzare il raggiungimento degli obiettivi.
2. Analisi dei rischi: consente di sviluppare una comprensione approfondita di ciascun rischio e contribuisce a determinare strategie adeguate per affrontarli.
3. Valutazione dei rischi: sulla base dei risultati dell'analisi, si prendono decisioni per stabilire quali rischi trattare e come prioritizzarne il trattamento.
4. Trattamento dei rischi: include misure preventive, mitigazioni o il trasferimento del rischio tramite strumenti come assicurazioni, per ridurre l'impatto o la probabilità che si verifichi.
5. Monitoraggio e revisione: entrambe le attività vengono integrate nella pianificazione e richiedono controlli regolari per garantire che i rischi siano gestiti in modo continuo ed efficace.Per migliorare la gestione, i rischi sono presentati in forma tabellare, con dettagli come descrizione, grado di rischio (scala da 1 a 5), pericolosità (Alta, Media, Bassa), precauzioni da adottare e un piano riorganizzato in caso di necessità. Questa struttura facilita il monitoraggio continuo durante l'intero ciclo di vita del progetto e consente interventi tempestivi per limitare i danni.

Le principali categorie di rischi includono:

- Rischi personali (RP): problemi relativi al personale, come assenze o conflitti di competenze.
- Rischi organizzativi interni ed esterni (ROI/ROE): fattori che coinvolgono processi aziendali o relazioni con stakeholder esterni.
- Rischi tecnologici/software (RT): malfunzionamenti tecnici o errori di implementazione.
In sintesi, questa sezione si propone di prevenire e mitigare eventuali ostacoli o rallentamenti che potrebbero compromettere il progresso del progetto, fornendo un approccio metodico e dettagliato alla gestione dei rischi, per garantire il raggiungimento degli obiettivi prefissati.

#pagebreak()
== Rischi personali
#table(
  columns: (1fr),
  inset: 10pt,
  align: center,
  fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
  [*RP1 - Mancanza di competenze tecniche specifiche.*], 
  table(
    columns: (auto, 1fr),
    inset: (5pt),
    fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
    [*Descrizione*], [Mancanza di alcuni membri del gruppo o dell'interezza dello stesso di esperienze professionali nella gestione e realizzazione di un progetto software. Mancanza di conoscenze delle tecnologie necessarie allo sviluppo del prodotto.],
    [*Grado di rischio*], [5],
    [*Pericolosità*], [Alta],
    [*Precauzioni*], [Studio a monte di pratiche utilizzate in contesti realistici, e delle tecnologie coinvolte. Supporto interno tra i membri del team. Inoltre la metodologia di lavoro utilizzata dal gruppo di progetto, la quale prevede la divisioni dei compiti relativi relativi ad una singola sprint da svolgere generalmente in coppia, favorisce la condivisione delle conoscenze e aiuto reciproco per sopperire a lacune di tipo tecnologico.],
    [*Piano di contingenza*], [Comunicazioni interne ed esterne rapide in caso di dubbi per chiarimenti e delucidazioni. Eventuali #glossary("workshop") da parte dei membri del gruppo più esperti su specifiche tecnologie.],
  )
)
#align(center)[Tabella 2: RP1 - Mancanza di competenze tecniche specifiche.]

#table(
  columns: (1fr),
  inset: 10pt,
  align: center,
  fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
  [*RP2 - Non conformità agli impegni dichiarati.*], 
  table(
    columns: (auto, 1fr),
    inset: (5pt),
    fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
    [*Descrizione*], [Irregolarità nell'impegno di uno o più componenti del team rispetto a quanto patuito.],
    [*Grado di rischio*], [3],
    [*Pericolosità*], [Alta],
    [*Precauzioni*], [Buone pratiche di pianificazione, e assegnazione dei ruoli in modo da avere un #glossary("cruscotto") completo dei lavori fin da subito. Mantenere una comunicazione costante nel tempo tra tutti i membri del team di progetto.],
    [*Piano di contingenza*], [Comunicazione e discussione con il docente del corso. Conseguente adeguamento e ridistribuzione dei compiti.],
  )
)
#align(center)[Tabella 3: RP2 - Non conformità agli impegni dichiarati.]

#table(
  columns: (1fr),
  inset: 10pt,
  align: center,
  fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
  [*RP3 - Problemi di comunicazione e collaborazione.*], 
  table(
    columns: (auto, 1fr),
    inset: (5pt),
    fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
    [*Descrizione*], [Intesi a livello personale, si intendono tutte le possibili divergenze tra le componenti del team che possono portare a tensione e discussioni, intaccando così l'armonia e la collaborazione all'interno del gruppo di lavoro.],
    [*Grado di rischio*], [3],
    [*Pericolosità*], [Alta],
    [*Precauzioni*], [Instaurare un rapporto umano e sociale tra i membri del gruppo. Avere pratiche di risoluzione dei conflitti efficaci e veloci. Inotre il Responsabile ha il compito di intervenire e cercare di mediare, cercando di portare ad una risoluzione che ristabilisca il clima di lavoro positivo.],
    [*Piano di contingenza*], [Definire dei meeting nel quale esporre le varie divergenze e poi cercare di arrivare ad una soluzione di gruppo, trammite eventuali votazioni. Avviare una ipotetica comunicazione e discussione con il docente del corso. Conseguente adeguamento e ridistribuzione dei compiti.],
  )
)
#align(center)[Tabella 4: RP3 - Problemi di comunicazione e collaborazione.]

#table(
  columns: (1fr),
  inset: 10pt,
  align: center,
  fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
  [*RP4 - Malattia o indisponibilità.*], 
  table(
    columns: (auto, 1fr),
    inset: (5pt),
    fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
    [*Descrizione*], [Malattia di uno o più membri del team, indisponibilità legata a eventuali impegni universitari o personali, o problematiche di altro genere. Questa problematica potrebbe essere più evidente durante il periodo invernale caratterizzato dalle molte influenze stagionali, in prossimità delle vacanze e delle sessioni di esami.],
    [*Grado di rischio*], [3],
    [*Pericolosità*], [Media],
    [*Precauzioni*], [Gestione delle attività il più possibile preventiva, definendo deadline "larghe" che lascino spazio a imprevisti di questo genere. Mantenere una comunicazione con tutti i membri del gruppo e questi devono impegnarsi ad avvisare tempostivamente i colleghi così da provvedere ad eventuali #glossary("context switch").],
    [*Piano di contingenza*], [Conseguente adeguamento e ridistribuzione dei compiti],
  )
)
#align(center)[Tabella 5: RP4 - Malattia o indisponibilità.]

== Rischi organizzativi interni ed esterni 
=== Interni
=== Esterni
== Rischi tecnologici/software
#pagebreak()
= *Calendario di progetto*
== Introduzione
In questa sezione vengono presentate le tempistiche delle revisioni principali del progetto, con le relative scadenze, tenendo conto dei rischi identificati nella pianificazione.

== Prima stesura *2024/11/27* 
Partendo delle osservazioni fatte nella sezione 2 _Analisi dei rischi_, si è deciso di pianificare lo svolgimento dei lavori in modo da completare i documenti e gli artefatti necessari per le due revisioni di progetto nelle date riportate nella tabella #num_tab_calendario_prj.

#align(center)[#table(
  columns: 2,
  align: left,
    [*Revisione*], [*Data*],
    [#glossary("RTB") (Requirements and Technology Baseline)], [2025-01-13],
    [#glossary("PB") (Product Baseline)], [2025-03-28],
)]
#align(center)[Tabella #num_tab_calendario_prj: Calendario di progetto]


= *Stima costi realizzazione*
== Introduzione
Questa sezione presenta la stima dei costi per la realizzazione del progetto, calcolata in base al costo orario dei ruoli e alle ore previste per ciascuna attività. La stima si basa su quanto discusso nella sezione 2 _Analisi dei rischi_ e nei documenti _#glossary("Analisi dei requisiti")_ e _Dichiarazione degli impegni_.


== Prima stesura *2024/11/27* 
#align(center)[
  #table(
    columns: 4,
    align: (left, center, center, center),
      [*Ruolo*], [*Costo orario (€ / h)*], [*Ore per ruolo (h)*], [*Ore per membro (h)*],
      [Responsabile], [30], [63], [9],
      [Amministratore], [20], [56], [8],
      [Analista], [25], [77], [11],
      [Progettista], [25], [119], [17],
      [Programmatore], [15], [168], [24],
      [Verificatore], [15], [154], [22],
      [Totale], [€ 12.740], [637], [91],
  )
]

#align(center)[
  Tabella #num_tab_prev_costi: Preventivo costi
]

Il costo totale del progetto è fissato a € 12.740, rappresentando il limite massimo del budget disponibile. Qualora si presentasse il rischio di superare tale importo, sarà avviata una rinegoziazione dei requisiti tra il gruppo fornitore e il proponente.

= *Modello di Sviluppo*

== Modello adottato

A seguito di un confronto approfondito con l'azienda proponente e dopo un'attenta valutazione delle metodologie di sviluppo software, il team ha optato per un approccio #glossary("Agile"). La scelta è stata fortemente incoraggiata dall'azienda, che ha condiviso la propria esperienza positiva maturata nell'adozione di questa metodologia in contesti di sviluppo software complessi.

A differenza dei modelli tradizionali, l'#glossary("Agile") si caratterizza per un approccio iterativo e dinamico. Il modello scelto implementato prevede cicli di sviluppo della durata di una o due settimane, durante i quali il team lavora in modo autonomo, pianificando, eseguendo e valutando le attività progettuali.

== Principi Fondamentali

L'approccio #glossary("Agile") si basa su alcuni principi chiave che lo distinguono dai modelli di sviluppo tradizionali:

- *Flessibilità*: Capacità di adattarsi rapidamente ai cambiamenti dei requisiti, mantenendo alta la qualità del prodotto.
- *Collaborazione*: Creazione di un ambiente di lavoro che favorisce comunicazione continua, condivisione delle conoscenze e supporto reciproco.
- *Sviluppo Incrementale*: Realizzazione del prodotto attraverso rilasci frequenti e funzionali, che permettono una verifica continua.

== Vantaggi Attesi

L'adozione del modello #glossary("Agile") offre diversi benefici strategici:

- *Gestione dei Rischi*: Cicli brevi consentono di identificare e risolvere tempestivamente le criticità, riducendo i rischi di fallimento del progetto.
- *Soddisfazione degli Stakeholder*: Review periodiche e feedback continui garantiscono che il prodotto finale corrisponda alle aspettative dei committenti.
- *Motivazione del Team*: L'approccio auto-organizzativo e la visualizzazione dei progressi mantengono alto il coinvolgimento dei membri.

== Pratiche Implementative

Il modello #glossary("Agile") si concretizzerà attraverso:

- Utilizzo di strumenti di Continuous Integration/Continuous Deployment (CI/CD)
- Pianificazione periodica e revisione delle attività
- Analisi critica e miglioramento continuo dei processi
- Revisione collaborativa del codice
- Monitoraggio delle performance del team e del progetto

In particolare, i periodi di sviluppo saranno suddivisi in #glossary("sprint") di due settimane per il primo periodo (#glossary("RTB")), con successiva riduzione a #glossary("sprint") settimanali nel secondo periodo (#glossary("PB")). Ogni #glossary("sprint") sarà seguito da incontri periodici tra il team di sviluppo e l'azienda proponente, durante i quali verranno verificati gli avanzamenti rispetto agli obiettivi prefissati e pianificati i cicli successivi. Questa struttura garantirà un controllo continuo sull'evoluzione del progetto, facilitando l'adattamento alle necessità emergenti e migliorando la collaborazione tra le parti.



= *Periodi*

Per ogni periodo si riportano di seguito le seguenti informazioni:
- Data di inizio, data di fine prevista, data di fine attuale ed eventuali giorni di ritardo;
- Pianificazione delle attività da svolgere al suo interno (avanzamento atteso), con tanto di potenziali rischi;
- Tempo stimato per poter completare tutte le attività previste (preventivo);
- Confronto fra il lavoro svolto (avanzamento conseguito) e quello preventivato, con annessa analisi
dei costi;
- Rischi eﬀettivamente occorsi, valutandone il loro impatto e la loro mitigazione;
- Retrospettiva di periodo per capire cosa e come migliorare in futuro e cosa invece mantenere;

I periodi del progetto sono suddivisi in due fasi, ciascuna corrispondente a una revisione di avanzamento:

- #glossary("RTB")
- #glossary("PB")

Ogni fase si concentra sulla preparazione dei documenti e artefatti richiesti dalle specifiche revisioni, come indicato nella tabella #num_tab_doc_revisioni.

#align(center)[ #table( columns: 3, align: (left, center, center), [Revisione], [Documenti richiesti], [Artefatti], [#glossary("RTB")], [#glossary("Piano di progetto"), #glossary("Piano di qualifica"), #glossary("Norme di progetto"), #glossary("Analisi dei requisiti"), #glossary("Glossario")], [#glossary("PoC") (Proof of Concept)], [#glossary("PB")], [#glossary("Specifica tecnica"), #glossary("Manuale utente"), #glossary("Piano di progetto"), #glossary("Piano di qualifica"), #glossary("Norme di progetto"), #glossary("Analisi dei requisiti"), #glossary("Glossario")], [#glossary("MVP") (Minimum Viable Product)], ) ]

#align(center)[ Tabella #num_tab_doc_revisioni: Documenti e artefatti richiesti ]

== *RTB*
