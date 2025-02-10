#import "/template/document.typ": *

#show: project.with(
  title: "Piano di Qualifica",
  recipients: (p.vardanega, p.cardin, p.azzurro,),
  changelog: (
    "1.0.0",
    "2025-02-10",
    (p.santi), 
    (p.campagnaro), 
    [Approvazione per RTB],
    "0.1.0",
    "2025-02-08",
    (p.campagnaro), 
    (p.benedetti), 
    [Stesura sezioni "Cruscotto di valutazione della qualità" e "Valutazione per il miglioramento"],
    "0.0.3",
    "2025-02-01",
    (p.santi), 
    (p.benedetti), 
    [Aggiunti test di sistema e accettazione],
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
#link("https://en.wikipedia.org/wiki/ISO/IEC_9126", "Standard ISO/IEC 9126")

#linebreak()
- T7 - Qualità del software
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T07.pdf", "T07.pdf")

#linebreak()
- T8 - Qualità di processo
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T08.pdf", "T08.pdf")

#linebreak()
- T9 - Verifica e validazione: introduzione
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T09.pdf", "T09.pdf")

#linebreak()
- T10 - Verifica e validazione: analisi statica
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T10.pdf", "T10.pdf")

#linebreak()
- T11 - Verifica e validazione: analisi dinamica aka testing
#link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T11.pdf", "T11.pdf")

= *Obiettivi di qualità*
Ogni #glossary("processo") viene valutato mediante l'applicazione di metriche specifiche, la cui definizione è dettagliata nelle sezioni Metriche di qualità del processo e Metriche di qualità del prodotto del documento Norme di Progetto v1.0.0. Queste sezioni delineano i criteri necessari affinchè le metriche siano considerate accettabili o eccellenti.

== Qualità di #glossary("processo")
La qualità di processo rappresenta un'esigenza primaria nello sviluppo software, poiché per ottenere un prodotto finale di alta qualità è indispensabile partire da un'applicazione rigorosa di #glossary("best practice") ben definite. Queste devono guidare tutte le attività, pratiche e metodologie adottate lungo l'intero ciclo di vita del software. La qualità di processo si fonda sull'idea che il raggiungimento di standard elevati nel prodotto dipenda da controlli regolari e dall'ottimizzazione continua dei processi che lo supportano, garantendo risultati che rispondano pienamente alle aspettative.
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

= *Strategie di testing *
Questa sezione riassume ed elenca i test eseguiti sul prodotto, garantendo completezza, correttezza e coerenza. In questo modo si dimostra il soddisfacimento dei requisiti utente, specificati nel capitolato d'appalto, e dei requisiti definiti nel documento #glossary("Analisi dei Requisiti").
Verranno effettuate le seguenti tipologie di test:
- Test di *unità*: sono il punto di partenza della strategia di testing. Vengono verificate singole unità di codice con l'obiettivo di verificare che ciascun modulo funzioni correttamente, in maniera tale che ogni unità produca risultati corretti in base ai dati di input inviati. 
- Test di *integrazione*: vengono eseguiti dopo il completamento/superamento dei test di unità. Verificano l'interazione tra componenti software integrate, rilevando difetti nelle interfacce e nei flussi di controllo. L'obiettivo principale di questi test è assicurare che i dati scambiati tra le componenti siano conformi alle specifiche e che i flussi di controllo funzionino regolarmente.
- Test di *sistema*: vengono eseguiti dopo il completamento dei Test di integrazione e precedono il collaudo. Si occupano di verificare l'intero sistema come unità, valutando la conformità rispetto ai requisiti presenti nel documento "Analisi dei Requisiti". L'obiettivo è quello di identificare eventuali errori (che compromettono il corretto funzionamento del sistema) e garantire che il SW soddisfi le aspettative dell'utente.
- Test di *accettazione*: corrispondono con l'ultima fase della strategia di testing, verificano e accertano il soddisfacimento dei requisiti utente (requisiti del capitolato d'appalto). Questa fase di collaudo viene effettuata in presenza del committente.

== Struttura tabelle
A partire dalla sezione successiva verranno inseriti i test svolti riepilogati in una tabella. Quest'ultima sarà composta da:
- *Codice*: un breve identificativo del test eseguito. Avranno tutti questo scheletro: #align(center)[[TIPOLOGIA]-[NUMERO]]
  - "Tipologia" è rappresentato dalla lettera iniziale del tipo di test eseguito
    - *TU*: Test di unità.
    - *TI*: Test di integrazione.
    - *TS*: Test di sistema.
    - *TA*: Test di accettazione.
  - "Numero": rappresenta l'identificativo numerico assegnato a ciascun test eseguito, indicandone la sequenza.
- *Descrizione*: breve spiegazione del test effettuato
- *Esito*: risultato del test, possono essere 3:
  - V (VERIFICATO): test completato e andato a buon fine.
  - NV (NON VERIFICATO): test completato ma non andato a buon fine.
  - NI (NON IMPLEMENTATO): non è stato predisposto alcun test per la verifica della funzionalità specifica.

== Test di sistema
#figure(
  table(
    columns: (2cm, 10cm, 2cm, 3cm),
    [Codice], [Descrizione], [Stato], [Requisito],

    [TS-01], [Verificare che l'utenta riesca ad accedere all'applicazione senza autenticazione], [NI], [RF-001],

    [TS-02], [Verificare che l'utente possa visualizzare correttamente lo storico della chat], [NI], [RF-002],

    [TS-03], [Verificare che l'utente visualizzi un messaggio nel caso in cui non ci siano messaggi nello storico], [NI], [RF-003],

    [TS-04], [Verificare che l'utente visualizzi un messaggio di errore nel caso in cui il sistema non sia riuscito a recuperare correttamente lo storico], [NI], [RF-004],

    [TS-05], [Verificare che l'utente visualizzi un messaggio di errore nel caso in cui il sistema non riesca a connettersi], [NI], [RF-005],

    [TS-06], [Verificare che l'utente visualizzi un messaggio di errore nel caso in cui il backend non risulti disponibile], [NI], [RF-006],

    [TS-07], [Verificare che l'utente possa visualizzare per ogni messaggio il suo contenuto, data, orario di invio e mittente], [NI], [RF-007],

    [TS-08], [Verificare che, attraverso l'interfaccia utente, l'utente sia in grado di porre una domanda in linguaggio naturale], [NI], [RF-008],

    [TS-09], [Verificare che l'utente riesca ad inviare la domanda scritta attraverso la #glossary("User Interface") al sistema], [NI], [RF-009],
    
    [TS-10], [Verificare che, nel caso in cui ci sia stato un errore durante la generazione della risposta, l'utente visualizzi un messaggio di errore], [NI], [RF-010],

    [TS-11], [Verificare che il sistema notifichi all'utente un messaggio di errore nel caso in cui la risposta non venga generata perché supera la lunghezza massima consentita], [NI], [RF-011],

    [TS-12], [Verificare che il sistema notifichi all'utente un messaggio di errore nel caso in cui la domanda superi la lunghezza massima consentita], [NI], [RF-012],

    [TS-13], [Verificare che il sistema elabori correttamente la domanda dell'utente, generando una risposta attinente e appropriata], [NI], [RF-013],

    [TS-14], [Verificare che il sistema riesca a reperire tutte le informazioni necessarie da #glossary("GitHub") (nome della repository, la sua descrizione, informazioni sui ticket, commit...)], [NI], [RF-014],

    [TS-15], [Verificare che il sistema riesca a reperire tutte le informazioni necessarie da #glossary("Confluence") (id della pagina, il titolo, lo status...)], [NI], [RF-015],

    [TS-16], [Verificare che il sistema riesca a reperire tutte le informazioni necessarie da #glossary("Jira") (nome di un #glossary("ticket"), il suo assegnatario, stato, ticket collegati...)], [NI], [RF-016],

    [TS-17], [Verificare che il sistema riesca gestire correttamente domande fuori contesto, generando una risposta attinente e appropriata], [NI], [RF-017],

    [TS-18], [Verificare che, nel caso in cui ci sia stato un errore durante la generazione della risposta, l'utente visualizzi un messaggio di errore], [NI], [RF-018],

    [TS-19], [Verificare che il sistema informi l'utente se la risposta supera la lunghezza massima consentita], [NI], [RF-019],

    [TS-20], [Verificare che il sistema fornisca correttamente la data e l'orario dell'ultimo aggiornamento dei dati utilizzati], [NI], [RF-020],

    [TS-21], [Verificare che ogni 24 ore il sistema aggiorni i dati contenuti nei documenti provenienti da GitHub, Confluence e Jira], [NI], [RF-021],
  ),
  caption: "Riepilogo Test di Sistema"
)

== Test di accettazione

#figure(
  table(
    columns: (2cm, 10cm, 2cm, 3cm),
    [Codice], [Descrizione], [Stato], [Fonte],

    [TA-01], [Verificare che l'utente possa visualizzare lo storico della chat], [NI], [UC1],

    [TA-02], [Verificare che per ogni messaggio l'utente possa visualizzare: contenuto, data, orario, mittente], [NI], [UC1.4, UC1.4.1, UC1.4.2, UC1.4.3],

    [TA-03], [Verificare che l'utente possa inserire ed inviare attraverso l'interfaccia utente una nuova domanda], [NI], [UC2],

    [TA-04], [Verificare che la domanda scritta da un utente venga inviata correttamente al sistema attraverso la #glossary("User Interface")], [NI], [UC3],

    [TA-05], [Verificare che il sistema generi una risposta appropriata dopo aver elaborato correttamente la domanda dell'utente], [NI], [UC4],

    [TA-06], [Verificare che il sistema recuperi tutte le informazioni necessarie da #glossary("GitHub")], [NI], [UC4],

    [TA-07], [Verificare che il sistema recuperi tutte le informazioni necessarie da #glossary("Confluence")], [NI], [UC4],

    [TA-08], [Verificare che il sistema recuperi tutte le informazioni necessarie da #glossary("Jira")], [NI], [UC4],

    [TA-09], [Verificare che il sistema fornisca data e orario dell'ultimo aggiornamento dei dati utilizzati], [NI], [UC4.4],

  ),
  caption: "Riepilogo Test di Accettazione"
)
#pagebreak()
= *Cruscotto di valutazione della qualità*

== *`M-PRC-EAC`* - Estimated at Completion
#figure(image(gq.EAC, width: 100%), caption: [Proiezione della stima del costo totale nei vari periodi di progetto.])\

*`RTB`*: Il grafico illustra come varia l'`EAC` (*Estimate at Completion*) in relazione ai limiti accettabili (superiore e inferiore) e al valore ottimale, rappresentato dal `BAC` (*Budget at Completion*), durante i cinque sprint del progetto. L'`EAC` rappresenta una previsione aggiornata dei costi complessivi per portare a termine il progetto, stimata sulla base dei dati raccolti durante l'esecuzione. Viene utilizzato per identificare eventuali scostamenti rispetto al `BAC`, che corrisponde al budget inizialmente pianificato per il progetto. \ 
Osservando il grafico ne emerge che in seguito al secondo periodo del progetto l'`EAC` è sceso sotto il valore ottimale `BAC`, questo indica un'efficienza migliorata nell'uso delle risorse grazie a una riduzione dei costi ed a un'accelerazione nei tempi di completamento. Durante il terzo e quarto sprint invece si può notare un aumento dell'`EAC` a causa di difficoltà operative e tecniche che hanno richiesto al team di concentrarsi più attivamente ad attività di formazione e supporto piuttosto che all'avanzamento vero e proprio del progetto. Infine nel quinto ed ultimo periodo la stima è rimasta pressochè costante avvicinandosi al limite accettabile inferiore denotando una risoluzione efficace alle lacune riscontrate durante i periodi precedenti portando ad una gestione più rigorosa delle risorse.

#pagebreak()

== *`M-PRC-EV`* - Earned Value & *`M-PRC-PV`* - Planned Value
#figure(image(gq.PV, width: 100%), caption: [Proiezione dell'EV e del PV nei vari periodi di progetto.])\

*`RTB`*: Il grafico evidenzia la relazione tra il piano originale (`PV`), i progressi effettivi (`EV`) e le previsioni di costo complessive aggiornate (`EAC`), permettendo di valutare l'efficacia e l'efficienza della gestione del progetto durante i vari sprint. Osservando il grafico ne emerge una chiara corrispondenza tra la curva del Valore Guadagnato (*Earned Value*) e quella del Valore Pianificato (*Planned Value*). Questo allineamento indica che il lavoro completato è conforme alla pianificazione, suggerendo un progresso coerente e in linea con gli obiettivi del progetto.

#pagebreak()

== *`M-PRC-AC`* - Actual Cost & *`M-PRC-ETC`* - Estimate to Complete
#figure(image(gq.AC, width: 100%), caption: [Proiezione dell'AC e dell'ETC nei vari periodi di progetto.])\

*`RTB`*: Il grafico rappresenta l'*Estimate to Complete* (`ETC`), ovvero la stima dei costi rimanenti necessari per completare il progetto, e l'*Actual Cost* (`AC`), che indica i costi reali sostenuti per il lavoro svolto fino a quel momento. Si nota che l'`ETC` diminuisce progressivamente nel tempo, mentre l'`AC` cresce in modo proporzionale al ritmo con cui si riduce l'`ETC`.

#pagebreak()

== *`M-PRC-CV`* - Cost Variance & *`M-PRC-SV`* - Schedule Variance
#figure(image(gq.CV, width: 100%), caption: [Proiezione della CV e della SV nei vari periodi di progetto.])\

*`RTB`*: Il grafico evidenzia la *Cost Variance* (`CV`), rappresentante la differenza tra il valore guadagnato (`EV`) e i costi sostenuti (`AC`) in percentuale, e la *Schedule Variance* (`SV`), indicando la differenza tra il valore guadagnato (`EV`) e il valore pianificato (`PV`) in percentuale.\ Durante il primo sprint entrambi gli indicatori risultano negativi: i costi superano il valore realizzato e il progetto accumula ritardi rispetto alla pianificazione. Nel secondo sprint il Controllo dei Costi (`CV`) si attesta in positivo, segnalando una gestione più efficiente, mentre lo Scarto dei Tempi (`SV`) recupera leggermente pur rimanendo in negativo. Durante il terzo sprint lo `SV` peggiora ulteriormente, evidenziando un ritardo crescente, e sebbene il `CV` rimanga positivo, si registra una sua flessione, a indicare un incremento delle spese rispetto ai precedenti sprint. La svolta avviene nel quarto sprint, in cui entrambe le misure si avvicinano ai parametri ideali, a testimonianza di un miglioramento nella gestione sia del budget che delle tempistiche. Infine, nel quinto sprint il trend positivo si consolida: il controllo dei costi continua a rafforzarsi e, per la prima volta, il ritardo accumulato si trasforma in un avanzo temporale, indicando non solo il recupero delle criticità iniziali, ma anche un progresso oltre il piano stabilito.

#pagebreak()

== *`M-PRC-RSI`* - Requirements stability index
#figure(image(gq.RSI, width: 100%), caption: [Proiezione del RSI nei vari periodi di progetto.])\

*`RTB`*: Il grafico illustra la dinamica della metrica *Requirements stability index* (`RSI`), volta a valutare la stabilità dei requisiti del progetto nel corso del tempo. Emerge chiaramente una rapida crescita alla fine del secondo periodo, coincidente con l'avvio dell'analisi dei requisiti da parte del gruppo. Inoltre, si nota un ulteriore aumento alla fine del terzo periodo, indicativo di modifiche e/o aggiornamenti nell'analisi dei requisiti che sono progressivamente diminuiti. Il parametro poi è diminuito alla fine del quarto periodo per via di modifiche importanti, necessarie a raggiungere un livello di dettaglio dei requisiti ancora maggiore. Infine si nota che nel quinto ed ultimo periodo i requisiti sono migliorati fino ad arrivare ad un valore `RSI` pari al `100%`.

#pagebreak()


== *`M-PRC-GLP`* - Indice Gulpease
#figure(image(gq.GLP, width: 100%), caption: [Proiezione dell'indice Gulpease per ogni documento (RTB) nei vari periodi di progetto.])\

*`RTB`*: Dall'osservazione del grafico si evidenzia come, per la maggior parte dei documenti, l'indice tenda ad aumentare o a rimanere stabile nel tempo. L'unica eccezione è il `Piano di Progetto`, che si discosta da questa tendenza a causa delle significative modifiche apportate al suo contenuto nel corso dei periodi considerati. Va inoltre notato che l'`Analisi dei Requisiti` è l'unico documento che inizia al di sotto del limite inferiore accettabile, un fenomeno riconducibile alla natura specifica degli argomenti trattati e al linguaggio utilizzato. Nonostante ciò, tutti i documenti risultano comprensibili anche per chi possiede un livello di istruzione pari alla licenza media.

#pagebreak()

== *`M-PRC-CO`* - Correttezza Ortografica
#figure(image(gq.CO, width: 100%), caption: [Proiezione della correttezza ortografica nei vari periodi di progetto.])\

*`RTB`*: Dal grafico si nota un impegno costante da parte del gruppo nel mantenere i documenti privi di errori ortografici. Sebbene alcuni errori siano inevitabilmente sfuggiti, la maggior parte dei documenti è rimasta senza errori per la maggior parte del tempo, raggiungendo un livello ottimale di accuratezza nell'ultimo periodo.

#pagebreak()

== *`M-PRC-QMS`* - Quality Metrics Satisfied
#figure(image(gq.QMS, width: 100%), caption: [Proiezione della percentuale di metriche di qualità soddisfatte nei vari periodi di progetto.])\

*`RTB`*: Il grafico evidenzia che, nei primi periodi, alcune metriche di qualità definite dal gruppo non hanno raggiunto i valori desiderati, principalmente a causa dell'inesperienza iniziale dei membri. Tuttavia, grazie all'apprendimento dagli errori commessi, si è osservato un costante miglioramento, che ha portato a raggiungere valori accettabili e infine il livello ottimale (100%) al termine del quinto periodo. Questo risultato riflette un progresso significativo nel nostro approccio lavorativo e nei risultati qualitativi ottenuti.

#pagebreak()

== *`M-PRC-NCR`* - Non-Calculated Risk
#figure(image(gq.NCR, width: 100%), caption: [Proiezione rischi non identificati nei vari periodi di progetto.])\

*`RTB`*: Il grafico evidenzia come il gruppo abbia mantenuto un'ottima capacità di previsione dei rischi per l'intera durata del periodo considerato, senza che emergessero situazioni inattese. Sebbene la metrica non garantisca una futura assenza assoluta di rischi non previsti, indica che nessun rischio non anticipato si è verificato, sottolineando la precisione e l'efficacia nella gestione dei rischi da parte del gruppo.

#pagebreak()

== *`M-PRC-TE`* - Efficienza Temporale
#figure(image(gq.TE, width: 100%), caption: [Proiezione dell'efficienza temporale nei vari periodi di progetto.])\

*`RTB`*: Il grafico mostra l'andamento della metrica sull'efficienza temporale nel corso dei vari periodi. Nei primi due periodi, la metrica si posiziona oltre il limite superiore accettabile, per poi stabilizzarsi entro valori adeguati a partire dal terzo periodo. Questo comportamento riflette il processo di adattamento del gruppo alle nuove tecnologie, ambienti e linguaggi richiesti, oltre che alle pratiche di gestione del progetto. Nel tempo, si osserva un netto miglioramento, con una riduzione del tempo necessario per raggiungere i risultati desiderati, segno di una maggiore esperienza acquisita dai membri del gruppo.

#pagebreak()
= *Valutazione per il miglioramento*

== Introduzione
Un gruppo di progetto è in grado di completare le attività in modo efficace, garantendo standard qualitativi elevati, contenendo le spese e incrementando i profitti, purché la produttività venga posta al vertice delle priorità. In questo contesto, ci focalizziamo sul miglioramento dell'efficienza dei processi impiegati per realizzare il prodotto richiesto dal #glossary("Capitolato") C9. Considerando che questo rappresenta il primo progetto concreto affrontato dai membri del team, è plausibile che possano insorgere difficoltà legate all'organizzazione interna, al corretto adempimento dei ruoli assegnati e all'uso ottimale degli strumenti selezionati. In questa sezione, pertanto, illustreremo le principali criticità riscontrate e le contromisure adottate per mitigare o eliminare i rallentamenti derivanti.

== Valutazione sui ruoli
#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center+horizon,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*Valutazione sui ruoli*],
    table(
      columns: (auto, 1.5fr, 2fr, 3fr),
      align: (center+horizon,)+(center+horizon,)+(left+horizon,)+(left+horizon,),
      inset: (5pt),
      fill: (_, row) => if row == 0 {rgb(209, 197, 174)} else if calc.even(row) { luma(230) } else{ white },
      [*Fase*],[*Ruolo*], [*Problema Rilevato*],[*Contromisura*],
      [Iniziale], [Responsabile], [Difficoltà nell'assegnare compiti e monitorare l'avanzamento], [Introduzione di meeting settimanali per la definizione degli obiettivi e dei compiti assegnati],

      [Iniziale], [Responsabile], [Difficoltà nell'assegnare compiti in modo equo, causando sovraccarico per alcuni e inattività per altri], [Introduzione di una valutazione preliminare del costo in termini di tempo per ogni attività, garantendo una distribuzione più bilanciata dei compiti tra i membri del gruppo],

      [Iniziale], [Amministratore], [Difficoltà nell'organizzazione e nella gestione della documentazione], [Abbiamo migliorato il nostro sistema, integrando un processo strutturato per l'utilizzo delle pull request nei repository. In questo modo, la raccolta e la condivisione dei documenti sono diventate più collaborative e trasparenti, garantendo che ogni modifica venga revisionata secondo elevati standard di qualità e contribuendo a ridurre errori e incongruenze],

      [Iniziale], [Analista], [Difficoltà nella definizione e tracciabilità dei requisiti], [Introduzione di un template standard per la stesura dei requisiti e di un sistema di tracciamento dei cambiamenti. Suddivisione dei casi d'uso tra i membri del gruppo per studio e discussione congiunta],

      [Iniziale], [Analista,\ Programmatore], [Difficoltà nel procedere con le attività a causa di dubbi specifici e dettagliati], [Creazione di un server Discord per chiarimenti informali e immediati, riservando i problemi più importanti ai meeting ufficiali con verbale],

      [Iniziale], [Programmatore], [Difficoltà nella scelta delle tecnologie e nella definizione delle interfacce], [Introduzione di una fase di formazione e di condivisione delle best practices tra i componenti del gruppo],
    )
  ), caption: "Valutazione sui ruoli"
)

== Valutazioni sugli strumenti utilizzati
#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center+horizon,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*Valutazioni sugli strumenti utilizzati*],
    table(
      columns: (auto, 1.5fr, 2fr, 3fr),
      align: (center+horizon,)+(center+horizon,)+(left+horizon,)+(left+horizon,),
      inset: (5pt),
      fill: (_, row) => if row == 0 {rgb(209, 197, 174)} else if calc.even(row) { luma(230) } else{ white },
      [*Fase*],[*Strumento*], [*Problema Rilevato*],[*Contromisura*],
      [Iniziale], [GitHub,\ Typst,\ Fogli Google,\ Discord,...], [Nelle fasi iniziali del progetto, l'introduzione di nuove tecnologie da parte di alcuni membri del gruppo (come la scelta di Git e GitHub) ha creato disallineamenti, poiché non tutti avevano familiarità con tali strumenti], [Il gruppo ha deciso di fare una pausa per garantire che tutti i membri acquisissero una conoscenza adeguata delle tecnologie. Il Responsabile ha organizzato sessioni di formazione interna, dove i membri più esperti hanno condiviso le loro conoscenze con gli altri.],
      [Iniziale],[GitHub], [Difficoltà nell'organizzazione e nella gestione della documentazione], [Abbiamo migliorato il nostro sistema, integrando un processo strutturato per l'utilizzo delle pull request nei repository. In questo modo, la raccolta e la condivisione dei documenti sono diventate più collaborative e trasparenti, garantendo che ogni modifica venga revisionata secondo elevati standard di qualità e contribuendo a ridurre errori e incongruenze],
      [Iniziale], [Typst], [Necessità di un metodo per redigere documenti indipendentemente dal dispositivo, sistema operativo e conoscenze di base (LaTeX non era conosciuto da tutti)], [Abbiamo deciso di passare da LaTeX a Typst, poiché Typst offre funzionalità simili a LaTeX ma con maggiore facilità d'uso, documentazione più accessibile, compilazione più veloce e una sintassi più intuitiva],
    )
  ), caption: "Valutazioni sugli strumenti utilizzati"
)

#pagebreak()
== Valutazione sull'organizzazione
#figure(
  table(
    columns: (1fr),
    inset: 10pt,
    align: center+horizon,
    fill: (_, row) => if calc.odd(row) { white } else {rgb(209, 197, 174)},
    [*Valutazione sull'organizzazione generale*],
    table(
      columns: (auto, 2fr, 3fr),
      align: (center+horizon,)+(center+horizon,)+(left+horizon,),
      inset: (5pt),
      fill: (_, row) => if row == 0 {rgb(209, 197, 174)} else if calc.even(row) { luma(230) } else{ white },
      [*Fase*], [*Problema Rilevato*],[*Contromisura*],
      [Iniziale], [Comunicazione insufficiente tra i membri del gruppo], [Organizzazione di incontri periodici e adozione di strumenti di comunicazione quali Telegram e Discord],
      [Iniziale], [Svolgimento asincrono delle attività], [Introduzione di un monitoraggio più frequente delle operazioni a breve termine, in collaborazione con il Responsabile],
      [Iniziale], [Mancanza di coordinamento tra i membri del gruppo], [Assegnazione di un responsabile per ogni attività e definizione precisa dei compiti e delle relative scadenze]
    )
  ), caption: "Valutazione sull'organizzazione"
)

== Considerazioni finali sul miglioramento
=== Analisi delle pratiche seguite
Il modo migliore per garantire al team un'efficacia a lungo termine nei miglioramenti è applicare il ciclo PDCA, basandolo su obiettivi specifici di avanzamento che siano quantificabili e relativi agli aspetti dei processi più rilevanti per il progetto. 
Questo approccio permette di introdurre miglioramenti specifici per anticipare e prevenire possibili criticità, situazioni o tendenze future, evitando interventi correttivi successivi e favorendo un processo di ottimizzazione costante. Nei primi mesi del progetto, tuttavia, il team non ha adottato questa metodologia a causa della poca esperienza, che ha portato a sottovalutarne l'importanza.
Spesso il gruppo adottava azioni correttive in risposta agli errori riscontrati durante l'avanzamento del progetto. Queste azioni hanno il vantaggio di comportare costi inferiori in termini di risorse rispetto alle azioni proattive, ma sono spesso tardive e meno efficaci in ottica di miglioramento continuo. Pertanto, per applicare il ciclo PDCA, gli obiettivi di miglioramento devono essere selettivi per poter capire se e quando il loro scopo viene raggiunto. Inoltre, i miglioramenti devono essere scelti valutando opportunamente il rapporto costi/benefici, in modo che il piano di miglioramento continuo sia sostenibile in base alle risorse disponibili.

=== Valutazioni generali sui miglioramenti conseguiti
Sebbene il gruppo non avesse inizialmente stabilito obiettivi specifici di miglioramento, è stato possibile osservare alcuni progressi nei processi che costituiscono il nostro modo di lavorare. All'inizio del progetto, le valutazioni sul miglioramento erano piuttosto limitate, poiché il gruppo non aveva esperienza con i progetti e non era in grado di determinare se stava operando correttamente. Con il tempo, il numero di autocorrezioni è aumentato grazie a una maggiore familiarità con la gestione dei progetti, fino a ridursi significativamente quando il nostro modo di lavorare è stato ben definito e allineato con le buone pratiche che ci sono state insegnate.


