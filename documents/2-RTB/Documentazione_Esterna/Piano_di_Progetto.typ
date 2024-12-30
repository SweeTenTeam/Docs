#import "/template/document.typ": *

#show: project.with(
  title: "Piano di Progetto",
  managers: p.fracaro,
  recipients: (
    p.vardanega,
    p.cardin,
    p.azzurro,
  ),
  changelog: (
    "0.2.0",
    "2024-12-26",
    p.benedetti,
    p.campagnaro,
    [
      Stesura del consuntivo del periodo 2
    ],
    "0.1.0",
    "2024-12-15",
    p.campagnaro,
    p.fracaro,
    [
      Stesura del consuntivo del periodo 1
    ],
    "0.0.4",
    "2024-12-10",
    p.campagnaro,
    p.fracaro,
    [
      Stesura del preventivo del periodo 1
    ],
    "0.0.3",
    "2024-12-04",
    p.fracaro,
    p.benedetti,
    [
      Stesura sezioni 3, 4, 5
    ],
    "0.0.2",
    "2024-11-29",
    p.benedetti,
    p.fracaro,
    [
      Stesura sezioni 1 e 2 del documento
    ],
    "0.0.1",
    "2024-11-21",
    p.fracaro,
    p.benedetti,
    [
      Struttura iniziale del documento
    ],
  ),
  show_images_list: true,
  show_tables_list: true,
  figure_breakable: false,
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

Il progetto ha l'obiettivo di sviluppare un assistente virtuale che centralizzi e aggreghi le informazioni provenienti da GitHub, Confluence e Jira, sfruttando le potenzialità delle tecnologie di intelligenza artificiale per migliorare l'efficacia e la personalizzazione del supporto offerto agli utenti. L'assistente consentirà un accesso facile, rapido e intuitivo a tutte le informazioni aziendali rilevanti, semplificando la ricerca e riducendo i tempi di navigazione tra diverse piattaforme.#linebreak()
In questo modo, l'assistente non solo contribuirà a ottimizzare i flussi di lavoro, ma aiuterà anche a migliorare la produttività complessiva dell'organizzazione, garantendo una gestione delle informazioni più smart e un supporto sempre più personalizzato. La soluzione offrirà quindi un significativo vantaggio competitivo, permettendo ai membri dell'azienda di concentrarsi su attività a maggior valore aggiunto e migliorando i risultati aziendali a lungo termine.

#linebreak()
== Glossario
Al fine di evitare eventuali equivoci o incomprensioni riguardo la terminologia utilizzata all'interno di questo documento,
si è deciso di adottare un Glossario, con file apposito, in cui
vengono riportate tutte le definizioni rigorose delle parole ambigue utilizzate in ambito di
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
- T2 - Processi di ciclo di vita del software#linebreak()https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf

- T4 - Gestione di progetto#linebreak()https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T04.pdf
- Glossario#linebreak()https://sweetenteam.github.io/docs/RTB/Glossario

#pagebreak()
= *Analisi dei rischi*
Durante lo sviluppo del progetto, è essenziale mitigare gli impatti delle difficoltà riscontrate attraverso una corretta analisi dei rischi, fondamentale per garantire il successo delle attività pianificate. Per affrontare le problematiche che possono emergere in diverse condizioni durante l'implementazione, questa sezione del Piano di Progetto si concentra sull'identificazione, analisi e trattamento dei rischi.

Il processo di gestione dei rischi si articola in cinque fasi principali:

1. Identificazione dei rischi: questa fase prevede il riconoscimento delle fonti di rischio, delle aree di impatto, degli eventi e delle conseguenze potenziali. Il team utilizzerà tecniche di brainstorming per compilare un elenco completo di rischi basato sugli ostacoli che potrebbero influenzare il raggiungimento degli obiettivi.
2. Analisi dei rischi: consente di sviluppare una comprensione approfondita di ciascun rischio e contribuisce a determinare strategie adeguate per affrontarli.
3. Valutazione dei rischi: sulla base dei risultati dell'analisi, si prendono decisioni per stabilire quali rischi trattare e come prioritizzarne il trattamento.
4. Trattamento dei rischi: include misure preventive, mitigazioni o il trasferimento del rischio tramite strumenti come assicurazioni, per ridurre l'impatto o la probabilità che si verifichi.
5. Il monitoraggio e la revisione sono attività integrate nella pianificazione e richiedono controlli regolari per garantire una gestione continua ed efficace dei rischi. Per rendere il processo più efficiente, i rischi vengono presentati in forma tabellare, includendo dettagli chiave come:

- Descrizione del rischio;
- Grado di rischio, valutato su una scala numerica da 1 a 5 per quantificare la probabilità di accadimento o l'entità dell'impatto;
- Pericolosità, che indica qualitativamente il livello di minaccia rappresentato dal rischio (Alta, Media, Bassa) in base alla sua potenziale gravità;
- Precauzioni da adottare per mitigare il rischio;
- Piano di contingenza per affrontare eventuali emergenze;

Le principali categorie di rischi includono:

- Rischi personali (RP): problemi relativi al personale, come assenze o conflitti di competenze;
- Rischi organizzativi interni ed esterni (ROI/ROE): fattori che coinvolgono processi aziendali o relazioni con stakeholder esterni;
- Rischi tecnologici/software (RT): malfunzionamenti tecnici o errori di implementazione.
In sintesi, questa sezione si propone di prevenire e mitigare eventuali ostacoli o rallentamenti che potrebbero compromettere il progresso del progetto, fornendo un approccio metodico e dettagliato alla gestione dei rischi, per garantire il raggiungimento degli obiettivi prefissati.

#pagebreak()
== Rischi personali
#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*RP1 - Mancanza di competenze tecniche specifiche.*<RP1>], 
    table(
      columns: (auto, 1fr),
      inset: (5pt),
      fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
      [*Descrizione*], [Assenza di esperienza professionale, da parte di alcuni membri del team o dell'intero gruppo, nella gestione e realizzazione di un progetto software. Insufficiente conoscenza delle tecnologie richieste per lo sviluppo del prodotto.],
      [*Grado di rischio*], [5],
      [*Pericolosità*], [Alta],
      [*Precauzioni*], [Studio preliminare delle pratiche utilizzate in contesti reali e delle tecnologie coinvolte. È previsto anche un supporto interno tra i membri del team. La metodologia di lavoro adottata dal gruppo, con compiti di ogni sprint spesso svolti in coppia, facilita la condivisione delle conoscenze e il mutuo aiuto per superare eventuali carenze tecnologiche.],
      [*Piano di contingenza*], [Comunicazioni interne ed esterne rapide in caso di dubbi per chiarimenti e delucidazioni. Eventuali #glossary("workshop") da parte dei membri del gruppo più esperti su specifiche tecnologie.],
    )
  ), caption: "RP1 - Mancanza di competenze tecniche specifiche."
)

#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*RP2 - Non conformità agli impegni dichiarati.*<RP2>], 
    table(
      columns: (auto, 1fr),
      inset: (5pt),
      fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
      [*Descrizione*], [Discontinuità nell'impegno di uno o più membri del team rispetto agli accordi stabiliti.],
      [*Grado di rischio*], [3],
      [*Pericolosità*], [Alta],
      [*Precauzioni*], [Buone pratiche di pianificazione, e assegnazione dei ruoli in modo da avere un #glossary("cruscotto") completo dei lavori fin da subito. Mantenere una comunicazione costante nel tempo tra tutti i membri del team di progetto.],
      [*Piano di contingenza*], [Interazione e confronto con il docente del corso, con conseguente adattamento e redistribuzione delle attività.],
    )
  ), caption: "RP2 - Non conformità agli impegni dichiarati."
)
#pagebreak()

#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*RP3 - Problemi di comunicazione e collaborazione.*<RP3>], 
    table(
      columns: (auto, 1fr),
      inset: (5pt),
      fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
      [*Descrizione*], [A livello personale, si riferiscono a tutte le possibili divergenze tra i membri del team che possono generare tensioni e discussioni, compromettendo così l'armonia e la collaborazione all'interno del gruppo di lavoro.],
      [*Grado di rischio*], [3],
      [*Pericolosità*], [Media],
      [*Precauzioni*], [Instaurare un rapporto umano e sociale tra i membri del gruppo. Avere pratiche di risoluzione dei conflitti efficaci e veloci. Inotre il Responsabile ha il compito di intervenire e cercare di mediare, cercando di portare ad una risoluzione che ristabilisca il clima di lavoro positivo.],
      [*Piano di contingenza*], [Organizzare meeting per discutere le divergenze emerse e cercare di giungere a una soluzione condivisa, eventualmente attraverso votazioni. Avviare un confronto con il docente del corso per affrontare le problematiche, con successivo adeguamento e redistribuzione dei compiti.],
    )
  ), caption: "RP3 - Problemi di comunicazione e collaborazione."
)
#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*RP4 - Malattia o indisponibilità.*<RP4>], 
    table(
      columns: (auto, 1fr),
      inset: (5pt),
      fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
      [*Descrizione*], [Malattia di uno o più membri del team, indisponibilità dovuta a impegni universitari o personali, o altre problematiche. Questa difficoltà potrebbe manifestarsi in modo più evidente durante il periodo invernale, quando le influenze stagionali sono più frequenti, così come in prossimità delle vacanze e delle sessioni di esami.],
      [*Grado di rischio*], [3],
      [*Pericolosità*], [Media],
      [*Precauzioni*], [Gestione delle attività il più possibile preventiva, definendo deadline "larghe" che lascino spazio a imprevisti di questo genere. Mantenere una comunicazione con tutti i membri del gruppo e questi devono impegnarsi ad avvisare tempostivamente i colleghi così da provvedere ad eventuali #glossary("context switch").],
      [*Piano di contingenza*], [Conseguente adeguamento e ridistribuzione dei compiti],
    )
  ), caption: "RP4 - Malattia o indisponibilità."
)
#pagebreak()
== Rischi organizzativi interni ed esterni 
=== Interni
#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*ROI1 - Comunicativi e organizzativi.*<ROI1>], 
    table(
      columns: (auto, 1fr),
      inset: (5pt),
      fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
      [*Descrizione*], [Difficoltà nell'organizzare le diverse sezioni del team e nel mantenere comunicazioni interne efficaci, con conseguenti disguidi e ritardi nell'avanzamento del progetto.],
      [*Grado di rischio*], [3],
      [*Pericolosità*], [Media],
      [*Precauzioni*], [Scelta di strumenti di comunicazione "affidabili" e pratici, utilizzati sia per discussioni generali tramite chat testuali o vocali, sia per gestire le attività da svolgere e monitorarne l'avanzamento nel tempo, tramite strumenti come gli ITS e i grafici di Gantt. Elevato numero di meeting interni, anche solo a scopo organizzativo.],
      [*Piano di contingenza*], [Conseguente adeguamento e ridistribuzione dei compiti.],
    )
  ), caption: "ROI1 - Comunicativi e organizzativi."
)

#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*ROI2 - Definizione insufficiente dei ruoli e delle responsabilità nel team.*<ROI2>],
    table(columns: (auto, 1fr), inset: (5pt),
    fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
    [*Descrizione*], [Metodologia inadeguata o inefficace per assegnare i ruoli e distribuire le attività.],
    [*Grado di rischio*], [3],
    [*Pericolosità*], [Alta],
    [*Precauzioni*], [Adottare in anticipo una metodologia consolidata nel settore, con evidenze di successo.],
    [*Piano di contingenza*], [Rivedere e ridistribuire i compiti in base alle necessità.],)
  ), caption: "ROI2 - Definizione insufficiente dei ruoli e delle responsabilità nel team."
)
#pagebreak()
=== Esterni
#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*ROE1 - Problemi di comunicazione.*<ROE1>],
    table(
      columns: (auto, 1fr),
      inset: (5pt),
      fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
      [*Descrizione*], [Difficoltà nella comunicazione con soggetti esterni, come il proponente e il committente.],
      [*Grado di rischio*], [3],
      [*Pericolosità*], [Media],
      [*Precauzioni*], [Scelta di mezzi di comunicazione pratici ed efficienti. Comunicazioni tempestive verso l'esterno. Invio anticipato di domande e richieste di materiale utile prima di ogni incontro con il proponente, per garantire tempo sufficiente per risposte complete e per ottimizzare l'efficacia del meeting, favorendo uno sviluppo continuo senza interruzioni dovute alla necessità di feedback.],
      [*Piano di contingenza*], [Chiarimento con il committente e il proponente, seguito da un adeguamento e dall'introduzione di nuovi strumenti di comunicazione.],
    )
  ), caption: "ROE1 - Problemi di comunicazione."
)

== Rischi tecnologici/software
#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*RT1 - Aggiornamenti o modifiche agli strumenti e tecnologie in uso.*<RT1>], 
    table(
      columns: (auto, 1fr),
      inset: (5pt),
      fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
      [*Descrizione*], [Situazione in cui alcune tecnologie selezionate risultano indisponibili o subiscono modifiche sostanziali che potrebbero compromettere l'efficacia del lavoro già svolto.],
      [*Grado di rischio*], [2],
      [*Pericolosità*], [Alta],
      [*Precauzioni*], [Effettuare una scelta oculata delle tecnologie. Progettare un ambiente di lavoro che possa adattarsi ai cambiamenti. Collaborare attivamente con il proponente, che riveste il ruolo di mentore, per chiarire eventuali dubbi e ricevere consigli da una figura esperta nel settore.],
      [*Piano di contingenza*], [Confronto diretto con il proponente per definire strategie di adattamento e valutare nuove soluzioni tecnologiche per il progetto.],
    )
  ), caption: "RT1 - Aggiornamenti o modifiche agli strumenti e tecnologie in uso."
)

#pagebreak()
= *Calendario di progetto*
== Introduzione
In questa sezione vengono presentate le tempistiche delle revisioni principali del progetto, con le relative scadenze, tenendo conto dei rischi identificati nella pianificazione.

== Prima stesura *2024/11/27* 
Partendo delle osservazioni fatte nella sezione 2 _Analisi dei rischi_, si è deciso di pianificare lo svolgimento dei lavori in modo da completare i documenti e gli artefatti necessari per le due revisioni di progetto nelle date riportate in @tab_cal_prj.

#align(center)[
  #figure(
    table(
  columns: 2,
  align: left,
    [*Revisione*], [*Data*],
    [#glossary("RTB") (Requirements and Technology Baseline)], [2025-01-13],
    [#glossary("PB") (Product Baseline)], [2025-03-28],
),caption:"Calendario di progetto") <tab_cal_prj>]

#pagebreak()
= *Stima costi realizzazione*
== Introduzione
Questa sezione presenta la stima dei costi per la realizzazione del progetto, calcolata in base al costo orario dei ruoli e alle ore previste per ciascuna attività. La stima si basa su quanto discusso nella sezione 2 _Analisi dei rischi_ e nei documenti _#glossary("Analisi dei requisiti")_ e _Dichiarazione degli impegni_.


== Prima stesura *2024/11/27* 
#align(center)[
  #figure(
    table(
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
  ), caption: "Preventivo costi")
]

Il costo totale del progetto è fissato a € 12.740, rappresentando il limite massimo del budget disponibile. Qualora si presentasse il rischio di superare tale importo, sarà avviata una rinegoziazione dei requisiti tra il gruppo fornitore e il proponente.
#pagebreak()
= *Modello di Sviluppo*

== Modello adottato

A seguito di un confronto approfondito con l'azienda proponente e dopo un'attenta valutazione delle metodologie di sviluppo software, il team ha optato per un approccio #glossary("Agile"). La scelta è stata fortemente incoraggiata dall'azienda, che ha condiviso la propria esperienza positiva maturata nell'adozione di questa metodologia in contesti di sviluppo software complessi.

A differenza dei modelli tradizionali, quello #glossary("Agile") si caratterizza per un approccio iterativo e dinamico. Il modello scelto implementato prevede cicli di sviluppo della durata di una o due settimane, durante i quali il team lavora in modo autonomo, pianificando, eseguendo e valutando le attività progettuali.

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


#pagebreak()
= *Periodi*

Per ogni periodo si riportano di seguito le seguenti informazioni:
- Data di inizio, data di fine prevista, data di fine attuale ed eventuali giorni di ritardo;
- Pianificazione delle attività da svolgere al suo interno (avanzamento atteso), con tanto di potenziali rischi;
- Tempo stimato per poter completare tutte le attività previste (preventivo);
- Confronto fra il lavoro svolto (avanzamento conseguito) e quello preventivato, con annessa analisi dei costi;
- Rischi eﬀettivamente occorsi, valutandone il loro impatto e la loro mitigazione;
- Retrospettiva di periodo per capire cosa e come migliorare in futuro e cosa invece mantenere;

I periodi del progetto sono suddivisi in due fasi, ciascuna corrispondente a una revisione di avanzamento:

- #glossary("RTB")
- #glossary("PB")

Ogni fase si concentra sulla preparazione dei documenti e artefatti richiesti dalle specifiche revisioni, come indicato in @doc_art_req.

#align(center)[ 
  #figure(
    table( columns: 3, align: (left, center, center), [Revisione], [Documenti richiesti], [Artefatti], [#glossary("RTB")], [#glossary("Piano di progetto"), #glossary("Piano di qualifica"), #glossary("Norme di progetto"), #glossary("Analisi dei requisiti"), #glossary("Glossario")], [#glossary("PoC") (Proof of Concept)], [#glossary("PB")], [#glossary("Specifica tecnica"), #glossary("Manuale utente"), #glossary("Piano di progetto"), #glossary("Piano di qualifica"), #glossary("Norme di progetto"), #glossary("Analisi dei requisiti"), #glossary("Glossario")], [#glossary("MVP") (Minimum Viable Product)]),
    caption:"Documenti e artefatti richiesti per le revisioni") <doc_art_req>
    ]

#pagebreak()
== *RTB*
*Inizio*: 2024-11-12;\
*Fine prevista*: 2025-01-13;\
*Fine attuale*: ;\
*Giorni di ritardo*: ;\

=== *Periodo 1*
*Inizio*: 2024-11-12;\
*Fine prevista*: 2024-12-03;\
*Fine attuale*: 2024-12-03;\
*Giorni di ritardo*: #pos(0);\

==== Pianificazione
Durante la settimana successiva all'aggiudicazione dell'appalto (dal 2024-11-04 al 2024-11-12), ci siamo concentrati principalmente sulla sistemazione dei documenti di candidatura e su un primo studio delle tecnologie da utilizzare, in vista del primo incontro con l’azienda #box(image(g.azzurro, width: 5em, height: auto)). Abbiamo deciso di considerare tale incontro come il vero e proprio inizio del periodo RTB, poiché tutte le attività svolte nella prima settimana possono essere classificate come attività preliminari, utili per la preparazione, ma non strettamente legate alle attività rendicontabili in termini di tempo ed economia previste dal progetto.

Successivamente all’incontro con #box(image(g.azzurro, width: 5em, height: auto)), il team si dedicherà alla pianificazione e alla redazione dei documenti essenziali per il progetto, con l’obiettivo di costruire una solida base per il lavoro futuro. In questa fase iniziale verrà avviata la stesura del Piano di Progetto, dell’Analisi dei Requisiti e del Glossario, accompagnata dalla scrittura completa delle Norme di Progetto. Inoltre, il team si impegnerà nell’avvio del #glossary("Proof of Concept") (PoC) per validare le scelte tecniche e funzionali. Durante questo periodo sarà cruciale definire modalità operative chiare e condivise, per garantire una gestione delle attività produttiva ed efficiente.

Obiettivi principali della fase iniziale:

- *Migrazione da #glossary("LaTeX") a #glossary("Typst")*: Implementazione e automatizzazione del processo di compilazione dei documenti per migliorare l’efficienza.
- *Introduzione al Piano di Progetto e all’Analisi dei Requisiti*: Inizio della stesura delle sezioni introduttive di questi documenti.
- *Completamento delle Norme di Progetto*: Redazione dettagliata delle Norme, in preparazione a future revisioni e discussioni con il team e i referenti aziendali.
- *Studio delle tecnologie e casi d’uso*: Analisi approfondita delle tecnologie individuate e dei possibili scenari applicativi, con il supporto della proponente.
- *Definizione del “#glossary("Way of Working")” del team*: Discussioni di linee guida operative per ottimizzare la collaborazione e l’organizzazione interna.
- *Automatizzazione del Glossario*: Creazione di un processo per collegare automaticamente, tramite link, termini e concetti fondamentali della documentazione con il loro significato.
- *Pianificazione delle attività*: Strutturazione delle attività operative per garantire una gestione efficace del team e del progetto.
- *Avvio del PoC*: Analisi iniziale delle tecnologie selezionate, definizione delle specifiche e primi passi verso la realizzazione del Proof of Concept.
- *Utilizzo del #glossary("LLM") tramite API (#glossary("Groq Cloud"))*: Sperimentazione e integrazione iniziale dell’#glossary("LLM").
- *Sviluppo di un database locale*: Creazione di un database locale per salvare e consultare lo storico delle domande effettuate dagli utenti.
- *Visualizzazione delle risposte precedenti*: Implementazione di un sistema per tracciare e visualizzare le risposte fornite dall'#glossary("LLM").

==== Rischi attesi
I rischi ai quali ci aspettiamo di incorrere in questo periodo sono i seguenti:

- #R.P1;
- #R.P3;
- #R.OI1;
- #R.OI2;
- #R.OE1;

Questo perché, trovandoci allinizio del progetto, siamo ancora in una fase di organizzazione e apprendimento, con diverse incertezze da affrontare. Di conseguenza, la possibilità di incontrare alcune delle problematiche tra quelle riportate è piuttosto elevata.

==== Preventivo
===== Preventivo orario
#prev-orario(((0,0,3,2,3,1),(0,4,3,0,0,2),(3,3,0,0,0,3),(2,3,0,0,2,2),(2,3,0,2,0,2),(4,0,3,0,0,2),(0,1,4,0,0,4)),"1")
===== Preventivo economico
#prev-economico((11,14,13,4,5,16),"1")

==== Consuntivo
Tutte le attività previste e pianificate sono state completate nei termini prestabiliti. 

Dal confronto tra preventivo e consuntivo emerge che: 

- Analisti e Verificatori hanno richiesto *meno* ore;

===== Consuntivo orario
#cons-orario(((0,0,3,2,3,1),(0,3,3,0,0,2),(3,3.5,0,0,0,3),(2,3.5,0,0,2,2),(2,3,0,2,0,1),(4,0,2,0,0,2),(0,1,4,0,0,4.5)),((0,0,3,2,3,1),(0,4,3,0,0,2),(3,3,0,0,0,3),(2,3,0,0,2,2),(2,3,0,2,0,2),(4,0,3,0,0,2),(0,1,4,0,0,4)),"1")

#ore-rimaste(((9,8,8,15,21,21),(9,5,8,17,24,20),(6,4.5,11,17,24,19),(7,4.5,11,17,22,20),(7,5,11,15,24,21),(5,8,9,17,24,20),(9,7,7,17,24,17.5)),"1")

===== Consuntivo economico
#cons-economico((11,14,12,4,5,15.5),(11,14,13,4,5,16),"1")

==== Rischi occorsi, impatto e loro mitigazione
Durante questo periodo sono emerse alcune delle complicazioni previste, in particolare quelle legate alla pianificazione, al coordinamento e alla comunicazione. Un esempio significativo riguarda la stesura parallela di diversi documenti senza una definizione chiara delle modalità di gestione delle #glossary("Pull Request") e delle regole stilistiche per il testo, che sarebbero dovute essere stabilite nelle Norme di Progetto. Inoltre, alcune attività, come l’identificazione e la redazione dei casi d’uso, hanno subito lievi ritardi, rendendo necessario il loro completamento nel corso dello Sprint successivo.

Queste difficoltà hanno evidenziato l’importanza di una pianificazione realistica, calibrata sulla reale mole di lavoro. Il gruppo ha quindi preso atto di questa necessità, impegnandosi a porre maggiore attenzione nella pianificazione dei futuri #glossary("Sprint"). Nonostante ciò, i rischi verificatisi non hanno avuto un impatto significativo sul progetto e sono stati gestiti efficacemente attraverso un confronto costruttivo tra i membri del team.

==== Retrospettiva
Questo primo periodo di lavoro ha sottolineato l'importanza di seguire #glossary("best practice") comuni da parte di ogni membro del gruppo per tutta la durata del progetto. Per questo motivo, è stata data priorità alla stesura completa e definitiva delle Norme di Progetto, considerandole fondamentali per garantire un’organizzazione efficace.

Lo studio condiviso delle tecnologie e dei casi d’uso tra i vari membri del team ha favorito un apprendimento rapido dei contenuti. Tuttavia, abbiamo deciso di investire più tempo e risorse in queste attività durante il prossimo periodo, assegnandogli più persone per approfondire tali aspetti.

Inoltre, ci siamo resi conto che l’approccio migliore e più efficace prevede che il Responsabile assegni le task e organizzi il lavoro in modo che le attività siano distribuite equamente tra i membri del gruppo. Questo metodo, che adotteremo a partire dal prossimo periodo, garantirà che ciascuna task venga completata con un numero di ore congruo e nel rispetto delle scadenze, favorendo una gestione più bilanciata ed efficiente.

==== Punto di avanzamento raggiunto e prospettive di completamento
Al termine del primo periodo è emerso un lieve scostamento tra i costi previsti e quelli effettivi. In particolare, il consuntivo registra una spesa totale di *`1.317,50 €`*, risultando inferiore di *`32,50 €`* rispetto ai *`1.350 €`* inizialmente stimati nel preventivo. Questo risparmio è attribuibile allo svolgimento di un minor numero di ore di Analista e Verificatore. Di conseguenza, il budget rimanente disponibile ammonta a *`11.422,50 €`*. 

#avanzamento(25, 0, "1")

#pagebreak()
=== *Periodo 2*
*Inizio*: 2024-12-03;\
*Fine prevista*: 2024-12-17;\
*Fine attuale*: 2024-12-17;\
*Giorni di ritardo*: #pos(0);\

==== Pianificazione
Durante la settimana del secondo sprint, che si è svolta dal 3 dicembre 2024 al 17 dicembre 2024, il team ha continuato a lavorare sulla redazione dei documenti essenziali per il proseguimento del progetto. In particolare, i lavori sull'analisi dei requisiti, il piano di progetto e il piano di qualifica stanno procedendo, rappresentando elementi fondamentali per garantire un avanzamento ordinato e ben strutturato delle attività.

Nel corso di questa fase, sono emerse alcune difficoltà specifiche legate all'analisi dei requisiti, che hanno richiesto un impegno maggiore per definire con precisione alcuni aspetti critici. Tuttavia, il team è riuscito a gestire queste complessità attraverso un'attenta collaborazione e un approccio mirato alla risoluzione dei problemi.

==== Rischi attesi
I rischi ai quali ci aspettiamo di incorrere in questo periodo sono i seguenti:

- #R.P2;
- #R.P4;
- #R.T1;

#pagebreak()

==== Preventivo
===== Preventivo orario
#prev-orario(((0,0,3,2,3,1),(0,4,3,0,0,2),(3,3,0,0,0,3),(2,3,0,0,2,2),(2,3,0,2,0,2),(4,0,3,0,0,2),(0,1,4,0,0,4)),"2")
===== Preventivo economico
#prev-economico((11,14,13,4,5,16),"2")

==== Consuntivo
Tutte le attività previste e pianificate sono state completate nei termini prestabiliti. 

Dal confronto tra preventivo e consuntivo emerge che: 

- Analisti, Programmatori e Verificatori hanno richiesto *meno* ore;
- Progettisti hanno richiesto *più* ore;

Poiché la differenza di ore, sia in eccesso che in difetto, non è significativa, può essere considerata trascurabile. In questa fase, un lieve surplus durante la progettazione può rientrare nella normalità.

#pagebreak()
===== Consuntivo orario
#cons-orario(((0,0,3,2,2,2),(0,4,2,0,0,1.5),(3,3,0,0,0,3),(2,3,0,1.5,2,2),(2,3,0,2,0,2),(4,0,3,0,0,1.5),(0,1,4,0,0,3)),((0,0,3,2,3,1),(0,4,3,0,0,2),(3,3,0,0,0,3),(2,3,0,0,2,2),(2,3,0,2,0,2),(4,0,3,0,0,2),(0,1,4,0,0,4)),"2")

#ore-rimaste(((9,8,5,13,19,19),(9,1,6,17,24,18.5),(3,1.5,11,17,24,16),(5,1.5,11,15.5,20,18),(5,2,11,13,24,19),(1,8,6,17,24,18.5),(9,6,3,17,24,14.5)),"2")

===== Consuntivo economico
#cons-economico((11,14,12,5.5,4,15),(11,14,13,4,5,16),"2")

==== Rischi occorsi, impatto e loro mitigazione
A differenza dello #glossary("Sprint") precedente, durante il quale il rischio emerso è stato mitigato attraverso la redazione e l'analisi delle #glossary("Norme di Progetto"), in quello attuale non si sono verificati ulteriori rischi. Questo andamento positivo è indicativo del buon progresso del progetto, che procede secondo i piani stabiliti. Inoltre, va sottolineato che i membri del gruppo stanno lavorando in modo efficace e coeso, dimostrando un'eccellente collaborazione e un impegno costante nel raggiungimento degli obiettivi prefissati.

==== Retrospettiva
Nel complesso, il lavoro è proseguito senza troppi intoppi, dimostrando una buona capacità del team di affrontare le attività previste con efficienza e coesione. Le norme di progetto adottate si sono rivelate un supporto fondamentale, fungendo da strumento efficace per garantire lo svolgimento ordinato e corretto del progetto. La loro applicazione ha contribuito a mantenere un alto livello di organizzazione, favorendo il rispetto delle tempistiche e delle modalità operative stabilite.

Un momento particolarmente significativo durante questa fase è stato rappresentato dalla presentazione di una prima demo del #glossary("Proof of Concept") a #box(image(g.azzurro, width: 5em, height: auto)). Questa anteprima ha permesso di condividere una visione concreta dell'avanzamento del progetto, offrendo un'opportunità per raccogliere feedback utili e allineare le aspettative sulle prossime fasi di sviluppo.

==== Punto di avanzamento raggiunto e prospettive di completamento
Al termine del primo periodo è emerso un lieve scostamento tra i costi previsti e quelli effettivi. In particolare, il consuntivo registra una spesa totale di *`1.332,50 €`*, risultando inferiore di *`17,50 €`* rispetto ai *`1.350 €`* inizialmente stimati nel preventivo. Questo risparmio è attribuibile allo svolgimento di un minor numero di ore di Analista, Programmatore e Verificatore. Di conseguenza, il budget rimanente disponibile ammonta a *`10.090 €`*. 

#avanzamento(50, 0, "1")