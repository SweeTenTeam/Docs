#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2025-04-08",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-04-08",
    (p.ferazzani),
    (p.santi),
    "Stesura del verbale",
  ),
  show_outline: true,
)


= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 10:30;
- *Ora di fine*: 12:50;
- *Partecipanti*: #p.belenkov, #p.benedetti, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi, #p.santi.

== Ordine del giorno

- Analisi stato avanzamento MVP, Scheduler;
- Discussione aggiornamenti Documentazione;
- Aggiornamento Sito Vetrina e Glossario.

= Analisi di avanzamento MVP, Scheduler

La riunione è iniziata con una breve presentazione dello stato attuale del ChatBot, che si presenta ad uno stato pressoché finale, se non per qualche miglioria da attuare. In particolare, la prima parte della riunione si è focalizzata sull'analisi dello Scheduler, che si occupa di effettuare il #glossary("Retrieval periodico") delle informazioni. Il gruppo ha discusso su come implementare al meglio questa funzionalità, analizzando le possibili soluzioni e i relativi vantaggi e svantaggi. Sono emersi diversi spunti di riflessione e confronto, in particolare riguardo a:

- Ogni quanto fare il retrieval delle informazioni;
- La possibilità di inserire una data di default in modo che il sistema faccia un retrieval anche al primo avvio e non solo periodicamente;

Per quanto riguarda il primo punto, si è discusso di come un retrieval ogni 10 o 20 minuti, permetta di avere sempre informazioni aggiornate, ma risulti anche problematico in qualche caso specifico. In particolare, questa scelta è problematica nel momento in cui un fetch impieghi più minuti di quelli che ci sono tra un fetch e un altro causa mole dei dati. In questo caso, il primo fetch non completato verrebbe interrotto dal secondo in fase di inizio.

Per il secondo punto invece, si è discusso di come sia necessario implementare un retrieval al primo avvio del sistema, in modo da poter usufruire del sistema fin da subito.

= Discussione sugli aggiornamenti della Documentazione
Il gruppo ha successivamente proseguito il confronto, facendo il punto della situazione riguardo la documentazione in generale e gli aggiornamenti da apportare. Particolare attenzione è stata rivolta all manuale utente, discutendo su come dovrebbe essere strutturato e redatto, includendo possibili sezioni e sottosezioni. Inoltre, il team ha discusso sull'importanza di finire in tempi ridotti il resto della documentazione, in modo da non dover ritardare ulteriormente la data di consegna del progetto.

In particolare, i documenti da scrivere sono:

- Manuale utente;
- Lettera di Presentazione.

Mentre i documenti da aggiornare sono:

- Norme di Progetto;
- Piano di Progetto;
- Piano di Qualifica;
- Analisi dei Requisiti;

= Aggiornamento Sito Vetrina e Glossario

Il gruppo ha discusso sull'importanza di aggiornare il sito vetrina, in modo da avere una presentazione del progetto coerente e professionale. Sono stati analizzati i contenuti attuali e sono stati individuati i punti critici evidenziati anche dalle precedenti valutazioni e i documenti mancanti. Inoltre, si è discusso sull'importanza di mantenere il glossario aggiornato con i termini tecnici utilizzati nel progetto.


= Decisioni prese

- Per ovviare al problema dei "fetch concorrenti", anche dopo vari confronti con l'azienda, si è deciso di implementare un sistema che preveda il retrieval ogni 24h, in un momento della giornata in cui è sicuro che non vengano aggiunte nuove informazioni, in modo che al prossimo retrieval si abbiano le informazioni aggiornate al giorno precedente.

- Si è deciso di implementare un retrieval al primo avvio del sistema, in modo da poter usufruire del sistema fin da subito.

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
    columns: (auto, auto, auto),
    [ID], [Descrizione], [Assegnatari],
    [#issue_to_link("Docs", 240)], [Specifica Tecnica - Architettura di Sistema], [#p.fracaro],
    [#issue_to_link("Docs", 242)], [Specifica Tecnica - Tracking requisiti], [#p.benedetti],
    [#issue_to_link("Docs", 243)], [Manuale Utente], [#p.ferazzani],
    [#issue_to_link("Docs", 244)], [Piano di Qualifica - Cruscotto], [#p.campagnaro],
    [#issue_to_link("Docs", 245)], [Analisi dei Requisiti . Aggiornamento], [#p.santi, #p.fracaro],
    [#issue_to_link("Docs", 246)], [Verbale Interno 2025-04-08], [#p.ferazzani],
    [#issue_to_link("Docs", 247)], [Verbale Esterno 2025-04-08], [#p.ferazzani],
    [#issue_to_link("Docs", 248)], [Sito Vetrina - aggiornamento], [#p.ferazzani],
    [#issue_to_link("Docs", 249)], [Glossario - aggiornamento], [#p.ferazzani],
  ),
  caption: "Tabella prossime attività (repo Docs)",
)

Per quanto riguarda il prodotto invece

#figure(
  table(
    columns: (auto, auto, auto),
    [ID], [Descrizione], [Assegnatari],
    [#issue_to_link("BuddyBot", 7)], [Chat History Service- Implementazione `Scheduler`], [#p.santi],
    [#issue_to_link("BuddyBot", 8)], [API Gateway - Implementazione `Shceduler`], [#p.mahdi],
  ),
  caption: "Tabella prossime attività (repo BuddyBot)",
)
