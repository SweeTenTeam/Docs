#import "/template/document.typ": *

#show: project.with(
  title: "Piano di Qualifica",
  recipients: (p.vardanega, p.cardin, p.azzurro,),
  changelog: (
    "0.0.1",
    "2024-12-07",
    (p.benedetti), 
    (p.ferazzani), 
    "Stesura introduzione e obiettivi di qualità."
  ),
  show_images_list: true,
  show_tables_list: true,
)

= *Introduzione*
== Scopo del documento

Questo documento presenta una panoramica dettagliata delle strategie di verifica e validazione adottate per garantire la qualità del prodotto e dei processi coinvolti nel progetto. Data la natura dinamica e incrementale del documento, i contenuti saranno ampliati e modificati nel tempo per riflettere l'evoluzione del progetto e adattarsi alle esigenze mutevoli.

Il Piano di Qualifica illustra le pratiche di controllo della qualità degli artefatti e dei processi, con particolare attenzione alle metriche di valutazione del prodotto. Saranno inoltre riportati i risultati delle verifiche effettuate, con l'obiettivo di individuare e correggere tempestivamente eventuali problematiche riscontrate.

L'approccio adottato mira a promuovere il miglioramento continuo attraverso misure quantitative che permettano di monitorare e valutare il progresso del progetto. Questo impegno costante per la qualità si traduce in aggiornamenti regolari del documento, garantendo così la crescita e l'evoluzione sia del prodotto che dei processi nel tempo.

== Scopo del prodotto
Lo scopo del prodotto è quello di sviluppare un assistente virtuale intelligente in grado di centralizzare e ottimizzare l'accesso alle informazioni aziendali. Grazie all'integrazione con piattaforme come GitHub, Confluence e Jira, BuddyBot fornisce risposte precise e personalizzate alle richieste degli utenti attraverso una chat in linguaggio naturale. Questo strumento mira a ridurre le inefficienze operative, migliorare la produttività e supportare il processo di onboarding, facilitando la condivisione e il trasferimento delle conoscenze all'interno dei team.

== Glossario
Per evitare ambiguità o incomprensioni riguardanti la terminologia utilizzata nei documenti, è stato redatto un Glossario che raccoglie le definizioni dei termini specifici del dominio d'uso. Ogni termine incluso nel Glossario è accompagnato dal relativo significato, al fine di garantire chiarezza e uniformità nella comprensione del testo.

La presenza di un termine nel Glossario viene segnalata direttamente nel documento adottando uno #glossary("stile specifico"). L'inserimento di un termine nel Glossario è considerato completo solo dopo averne fornito una definizione chiara e accurata, contribuendo così alla coerenza del linguaggio e alla comprensione condivisa tra tutti i lettori del documento.

#pagebreak()

== Riferimenti
=== Normativi
- Norme di progetto v1.0.0
- Presentazione capitolato d'appalto: https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9.pdf

=== Informativi

- ISO/EIC 9126
https://en.wikipedia.org/wiki/ISO/IEC_9126

#linebreak()
- T7 - Qualità del software
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf

#linebreak()
- T8 - Qualità di processo
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf

#linebreak()
- T9 - Verifica e validazione: introduzione
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf

#linebreak()
- T10 - Verifica e validazione: analisi statica
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf

#linebreak()
- T11 - Verifica e validazione: analisi dinamica aka testing
https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T11.pdf

= *Obiettivi di qualità*
Ogni #glossary("processo") viene valutato mediante l'applicazione di metriche specifiche, la cui definizione è dettagliata nelle sezioni Metriche di qualità del processo e Metriche di qualità del prodotto del documento Norme di Progetto v1.0.0. Queste sezioni delineano i criteri necessari affinchè le metriche siano considerate accettabili o eccellenti.

== Qualità di #glossary("processo")
La qualità di processo rappresenta un'esigenza primaria nello sviluppo software, poiché per ottenere un prodotto finale di alta qualità è indispensabile partire da un'applicazione rigorosa di #glossary("best practice") ben definite. Queste devono guidare tutte le attività, pratiche e metodologie adottate lungo l'intero ciclo di vita del software. La qualità di processo si fonda sull’idea che il raggiungimento di standard elevati nel prodotto dipenda da controlli regolari e dall’ottimizzazione continua dei processi che lo supportano, garantendo risultati che rispondano pienamente alle aspettative.
#pagebreak()
=== Processi primari
==== Fornitura
#set table(
  stroke: 1pt,
  fill: (x, y) =>
    if y == 0 { rgb(209, 197, 174) },
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
    columns: (2.9cm, 4.9cm, 5.2cm, 4.8cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRC-EV], [Earned Value], [≥ 0], [≤ EAC],
    [M-PRC-PV], [Planned Value], [≥ 0], [≤ #glossary("Budget at completion")],
    [M-PRC-AC], [Actual Cost], [≥ 0], [≤ EAC],
    [M-PRC-CV], [Cost Variance], [≥ -7.5%], [≥ 0%],
    [M-PRC-SV], [Schedule Variance], [≥ -7.5%], [≥ 0%],
    [M-PRC-EAC], [Estimated at Completion], [Errore del ± 3% rispetto al BAC], [Esattamente pari al BAC],
    [M-PRC-ETC], [Estimate to Complete], [≥ 0], [≤ EAC
],
  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa al processo di fornitura."
)
==== Sviluppo
#figure(
  table(
    columns: (2.9cm, 5.3cm, 3.5cm, 4cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRC-RSI], [Requirements Stability Index], [≥ 75%], [100%],
    [M-PRC-SFI], [Structural Fan In], [-], [Va massimizzato],
    [M-PRC-SFO], [Structural Fan-Out], [-], [Va minimizzato],

  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa al processo di sviluppo."
)
=== Processi di supporto
==== Documentazione
#figure(
  table(
    columns: (2.9cm, 4.5cm, 3.5cm, 3.5cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRC-GLP], [Indice Gulpease], [≥ 60%], [≥ 80%],
    [M-PRC-CO], [Correttezza Ortografica], [0 errori], [0 errori],
  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa al processo di documentazione."
)
==== Verifica
#figure(
  table(
    columns: (2.9cm, 4cm, 3.5cm, 3.2cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRC-CC], [Code Coverage], [≥ 90%], [100%],
  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa al processo di verifica."
)
==== Gestione della qualità
#figure(
  table(
    columns: (2.9cm, 4.8cm, 3.5cm, 3.2cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRC-QMS], [Quality Metrics Satisfied], [≥ 85%], [100%],
  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa al processo di gestione della qualità."
)
#pagebreak()
=== Processi organizzativi
==== Gestione dei processi
#figure(
  table(
    columns: (2.9cm, 4cm, 3.5cm, 3.2cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRC-NCR], [Non-Calculated Risk], [≤ 3], [0],
    [M-PRC-TE], [Temporal Efficiency], [≤ 3], [≤ 1],
  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa al processo di gestione dei processi."
)
== Qualità di prodotto
La qualità del prodotto si riferisce all'insieme delle caratteristiche di un'entità risultante dallo sviluppo software, che ne determinano la capacità di soddisfare sia le esigenze esplicite che implicite. In altre parole, rappresenta il grado in cui un prodotto risponde alle aspettative del cliente o agli standard prestabiliti.

Essa implica una valutazione completa del software realizzato, concentrandosi su attributi fondamentali come usabilità, funzionalità, affidabilità, manutenibilità e prestazioni generali. L'obiettivo è garantire che il software non solo soddisfi le richieste del cliente e funzioni correttamente, ma lo faccia in conformità con rigorosi standard di qualità.

=== Funzionalità
#figure(
  table(
    columns: (2.9cm, 5.6cm, 3.5cm, 3.2cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRD-CRV], [Copertura Requisiti Vincolanti], [100%], [100%],
    [M-PRD-CRD], [Copertura Requisiti Desiderabili], [≥ 50%], [100%],
    [M-PRD-CRO], [Copertura Requisiti Opzionali], [≥ 0%], [≥ 50%],
  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa alle funzionalità del prodotto."
)
=== Affidabilità
#figure(
  table(
    columns: (2.9cm, 4.5cm, 3.5cm, 3.2cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRD-CC], [Code Coverage], [≥ 80%], [100%],
    [M-PRD-BC], [#glossary("Branch") Coverage], [≥ 50%], [≥ 80%],
    [M-PRD-SC], [Statement Coverage], [≥ 60%], [≥ 80%],
    [M-PRD-FD], [Failure Density], [100%], [100%],
  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa l'affidabilità del prodotto."
)
=== Usabilità
#figure(
  table(
    columns: (2.9cm, 5.1cm, 3.5cm, 3.2cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRD-FU], [Facilità di Utilizzo], [≤ 4 click], [≤ 2 click],
    [M-PRD-TA], [Tempo di Apprendimento], [≤ 10 minuti], [≤ 5 minuti],
  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa l'usabilità del prodotto."
)
#pagebreak()
=== Efficienza
#figure(
  table(
    columns: (2.9cm, 4.3cm, 3.5cm, 3.2cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRD-UR], [Utilizzo Risorse], [≥ 75%], [100%],
  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa l'efficienza del prodotto."
)
=== Manutenibilità
#figure(
  table(
    columns: (2.9cm, 4.8cm, 3.5cm, 3.2cm),
    [Metrica], [Nome], [Valore accettabile], [Valore Ottimo],

    [M-PRD-CP], [Complessità Ciclomatica], [≤ 10], [≤ 5],
    [M-PRD-CS], [Code Smell], [0], [0],
    [M-PRD-MD], [Module Dependency], [≤ 30%], [≤ 10%],
  ),
  caption: "Valori ideali e accettabili per ciascuna metrica relativa la manutenibilità del prodotto."
)
