#import "/template/document.typ": *

#show: project.with(
  title: "Piano di Qualifica",
  recipients: (p.vardanega, p.cardin, p.azzurro,),
  changelog: (
    "0.0.3",
    "2024-01-24",
    (p.santi), 
    (p.campagnaro), 
    [Stesura sezione "Strategia di testing"],
    "0.0.2",
    "2024-12-28",
    (p.santi), 
    (p.campagnaro), 
    [Stesura sezione "Strategia di testing"],
    "0.0.1",
    "2024-12-07",
    (p.benedetti), 
    (p.ferazzani), 
    [Stesura introduzione e obiettivi di qualità.]
  ),
  show_images_list: true,
  show_tables_list: true,
)

= *Introduzione*
== Scopo del documento

Questo documento presenta una panoramica dettagliata delle strategie di verifica e validazione adottate per garantire la qualità del prodotto e dei processi coinvolti nel progetto. Data la natura dinamica e incrementale del documento, i contenuti saranno ampliati e modificati nel tempo per riflettere l'evoluzione del progetto e adattarsi alle esigenze mutevoli.

Il Piano di Qualifica illustra le pratiche di controllo della qualità degli artefatti e dei processi, con particolare attenzione alle metriche di valutazione del prodotto. Saranno inoltre riportati i risultati delle verifiche effettuate, con l'obiettivo di individuare e correggere tempestivamente eventuali problematiche riscontrate.

L'approccio adottato mira a promuovere il miglioramento continuo attraverso misure quantitative che permettano di monitorare e valutare il progresso del progetto. Questo impegno costante per la qualità si traduce in aggiornamenti regolari del documento, garantendo così la crescita e l'evoluzione sia del prodotto che dei processi nel tempo.

== Scopo del progetto
Lo scopo del progetto è quello di sviluppare un assistente virtuale intelligente in grado di centralizzare e ottimizzare l'accesso alle informazioni aziendali. Grazie all'integrazione con piattaforme come GitHub, Confluence e Jira, BuddyBot fornisce risposte precise e personalizzate alle richieste degli utenti attraverso una chat in linguaggio naturale. Questo strumento mira a ridurre le inefficienze operative, migliorare la produttività e supportare il processo di #glossary("onboarding"), facilitando la condivisione e il trasferimento delle conoscenze all'interno dei team.

== Glossario
Per evitare ambiguità o incomprensioni riguardanti la terminologia utilizzata nei documenti, è stato redatto un Glossario che raccoglie le definizioni dei termini specifici del dominio d'uso. Ogni termine incluso nel Glossario è accompagnato dal relativo significato, al fine di garantire chiarezza e uniformità nella comprensione del testo.

La presenza di un termine nel Glossario viene segnalata direttamente nel documento adottando uno #glossary("questo stile"). L'inserimento di un termine nel Glossario è considerato completo solo dopo averne fornito una definizione chiara e accurata, contribuendo così alla coerenza del linguaggio e alla comprensione condivisa tra tutti i lettori del documento.

#pagebreak()

== Riferimenti
=== Normativi
- Norme di progetto v1.0.0
- Presentazione capitolato d'appalto: #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9.pdf")

=== Informativi

- ISO/EIC 9126
#link("https://en.wikipedia.org/wiki/ISO/IEC_9126")

#linebreak()
- T7 - Qualità del software
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf")

#linebreak()
- T8 - Qualità di processo
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf")

#linebreak()
- T9 - Verifica e validazione: introduzione
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf")

#linebreak()
- T10 - Verifica e validazione: analisi statica
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf")

#linebreak()
- T11 - Verifica e validazione: analisi dinamica aka testing
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T11.pdf")

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

= Strategie di testing
Questa sezione riassume ed elenca i test eseguiti sul prodotto, garantendo completezza, correttezza e coerenza. In questo modo si dimostra il soddisfacimento dei requisiti utente, specificati nel capitolato d'appalto, e dei requisiti definiti nel documento "Analisi dei Requisiti v. .....".
Verranno effettuate le seguenti tipologie di test:
- Test di *unità*: verifica il corretto funzionamento delle singole unità del sistema, considerandole indipendenti. Risultano essere test molto potenti poichè la maggior parte dei difetti vengono rilevati in questa fase.
- Test di *integrazione*: valuta la cooperazione tra più unità per soddisfare una specifica richiesta. Viene eseguito successivamente ai test di unità.
- Test di *sistema*: controlla il funzionamento dell'intero sistema, verificando che tutte le componenti operino correttamente insieme.
- Test di *accettazione*: la fase finale del processo di testing. Viene accertato il raggiungimento dei requisiti utente.

== Struttura tabelle
A partire dalla sezione successiva verranno inseriti i test svolti riepilogati in una tabella. Quest'ultima sarà composta da:
- *Codice*: un breve identificativo del test eseguito. Avranno tutti questo scheletro: #align(center)[[TIPOLOGIA]-[NUMERO]]
  - "Tipologia" è rappresentato dalla lettera iniziale del tipo di test eseguito
    - TU: Test di unità.
    - TI: Test di integrazione.
    - TS: Test di sistema.
    - TA: Test di accettazione.
  - "Numero": rappresenta l'identificativo numerico assegnato a ciascun test eseguito, indicandone la sequenza.
- *Descrizione*: breve spiegazione del test effettuato
- *Esito*: risultato del test, possono essere 3:
  - V (VERIFICATO): test completato e andato a buon fine.
  - NV (NON VERIFICATO): test completato ma non andato a buon fine.
  - NE (NON ESEGUITO): non è stato predisposto alcun test per la verifica della funzionalità specifica.

== Test di unità
I test di unità sono il punto di partenza della strategia di testing. Vengono verificate singole unità di codice con l'obiettivo di verificare che ciascun modulo funzioni correttamente, in maniera tale che ogni unità produca risultati corretti in base ai dati di input inviati. 
//DISCUTERE INTERNAMENTE COME ESEGUIRLI

#figure(
  table(
    columns: (2cm, 12cm, 2cm),
    [Codice], [Descrizione], [Stato],

    [], [], [],
    [], [], [],
    [], [], [],
  ),
  caption: "Riepilogo TU"
)

== Test di integrazione
I test di integrazione vengono eseguiti dopo il completamento/superamento dei test di unità. Verificano l'interazione tra componenti software integrate, rilevando difetti nelle interfacce e nei flussi di controllo.
L'obiettivo principale di questi test è assicurare che i dati scambiati tra le componenti siano conformi alle specifiche e che i flussi di controllo funzionino regolarmente.

#figure(
  table(
    columns: (2cm, 12cm, 2cm),
    [Codice], [Descrizione], [Stato],

    [], [], [],
    [], [], [],
    [], [], [],
  ),
  caption: "Riepilogo TI"
)

== Test di sistema
I test di sistema vengono eseguiti dopo il completamento dei Test di integrazione e precedono il collaudo.
Si occupano di verificare l'intero sistema come unità, valutando la conformità rispetto ai requisiti presenti nel documento "Analisi dei Requisiti". L'obiettivo è quello di identificare eventuali errori (che compromettono il corretto funzionamento del sistema) e garantire che il SW soddisfi le aspettative dell'utente.

#figure(
  table(
    columns: (2cm, 10cm, 2cm, 3cm),
    [Codice], [Descrizione], [Stato], [Requisito],

    [TS-01], [Verificare che l'utenta riesca ad accedere all'applicazione senza autenticazione], [NE], [RF-001],

    [TS-02], [Verificare che il sistema riesca a reperire correttamente le informazioni da GitHub], [NE], [RF-002],

    [TS-03], [Verificare che il sistema riesca a reperire correttamente le informazioni da Confluence], [NE], [RF-003],

    [TS-04], [Verificare che il sistema riesca a reperire correttamente le informazioni da Jira], [NE], [RF-004],

    [TS-05], [Verificare che l'utente possa visualizzare correttamente lo storico della chat], [NE], [RF-005],

    [TS-06], [Verificare che l'utente visualizzi un messaggio nel caso in cui non ci siano messaggi nello storico], [NE], [RF-006],

    [TS-07], [Verificare che l'utente visualizzi un messaggio di errore nel caso in cui il sistema non sia riuscito a recuperare correttamente lo storico], [NE], [RF-007],

    [TS-08], [Verificare che l'utente visualizzi un messaggio di errore nel caso in cui il sistema non riesca a connettersi], [NE], [RF-008],

    [TS-09], [Verificare che l'utente visualizzi un messaggio di errore nel caso in cui il backend non risulti disponibile], [NE], [RF-009],

    [TS-10], [Verificare che l'utente visualizzi almeno un messaggio. Di tale messaggio deve poter visualizzare contenuto, data, orario di invio e mittente], [NE], [RF-010],

    [TS-11], [Verificare che, attraverso l'interfaccia utente, l'utente sia in grado di porre una domanda in linguaggio naturale], [NE], [RF-011],

    [TS-12], [Verificare che l'utente riesca ad inviare la domanda scritta attraverso la UI al sistema], [NE], [RF-012],
    
    [TS-13], [Verificare che, nel caso in cui ci sia stato un errore durante la generazione della risposta, l'utente visualizzi un messaggio di errore], [NE], [RF-013],

    [TS-14], [Verificare che il sistema notifichi all'utente un messaggio di errore nel caso in cui la risposta non venga generata perché supera la lunghezza massima consentita], [NE], [RF-014],

    [TS-15], [Verificare che il sistema elabori correttamente la domanda dell'utente, generando una risposta attinente e appropriata], [NE], [RF-015],

    [TS-16], [Verificare che il sistema riesca a reperire tutte le informazioni necessarie da GitHub (nome della repository, la sua descrizione, informazioni sui ticket, commit...)], [NE], [RF-016],

    [TS-17], [Verificare che il sistema riesca a reperire tutte le informazioni necessarie da Confluence (id della pagina, il titolo, lo status...)], [NE], [RF-017],

    [TS-18], [Verificare che il sistema riesca a reperire tutte le informazioni necessarie da Jira (nome di un ticket, il suo assegnatario, stato, ticket collegati...)], [NE], [RF-018],

    [TS-19], [Verificare che il sistema riesca gestire correttamente domande fuori contesto, generando una risposta attinente e appropriata], [NE], [RF-019],

    [TS-20], [Verificare che, nel caso in cui ci sia stato un errore durante la generazione della risposta, l'utente visualizzi un messaggio di errore], [NE], [RF-020],

    [TS-21], [Verificare che il sistema informi l'utente se la risposta supera la lunghezza massima consentita], [NE], [RF-021],

    [TS-22], [Verificare che il sistema fornisca correttamente la data e l'orario dell'ultimo aggiornamento dei dati utilizzati], [NE], [RF-022],

    [], [], [], [],

    [], [], [], [],

  ),
  caption: "Riepilogo TS"
)

== Test di accettazione (Collaudo)
I test di accettazione corrispondono con l'ultima fase della strategia di testing, verificano e accertano il soddisfacimento dei requisiti utente (requisiti del capitolato d'appalto). Questa fase di collaudo viene effettuata alla presenza del committente. 

#figure(
  table(
    columns: (2cm, 12cm, 2cm),
    [Codice], [Descrizione], [Stato],

    [], [], [],
    [], [], [],
    [], [], [],
  ),
  caption: "Riepilogo TA"
)