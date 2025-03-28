#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2025-03-26",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-03-27",
    (p.mahdi),
    (p.fracaro),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 14:00;
- *Ora di fine*: 15:00;
- *Partecipanti*: #p.belenkov, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi.

== Ordine del giorno
- Analisi del lavoro fatto e dello stato di avanzamento del progetto;
- Discussione tecnica sull'uso degli UUID;
- Discussione tecnica sullo scheduler per il fetch.

= Analisi del lavoro fatto e dello stato di avanzamento del progetto
Durante questa riunione interna, ogni membro del gruppo ha condiviso il lavoro svolto e le problematiche che ha riscontrato, confrontandosi con gli altri con l'obiettivo di verificare l'andamento del progetto e individuare possibili problematiche. Inoltre è stato fatto il punto della situazione e un elenco delle attività da svolgere.

= Discussione tecnica sull'uso degli UUID
Il team ha discusso una scelta fatta durante la progettazione riguardante l'uso degli UUID per identificare le #glossary("Chat") nel database e la possibilità di modificare questa scelta usando un id incrementale per semplificare le operazioni di estrazione e salvataggio delle #glossary("Chat"). Per questioni di sicurezza esposte da un membro del gruppo è stato deciso di tenere gli UUID.

= Discussione tecnica sullo scheduler per il fetch.
Dialogo aperto tra i membri del gruppo su dove fosse più convegniente posizionare lo scheduler per il fetch delle informazioni, tenendo conto del fatto che la date dell'ultimo fetch deve essere salvata da qualche parte e aggiunta alla risposta del #glossary("Chatbot"). Nonostante ci siano state proposte convincenti è stato deciso di riparlarne all'incontro successivo e di concentrarsi su compiti più importanti, in quanto questa scelta non causa grandi modifiche alla progettazione o al codice già scritto.

= Decisioni prese
- Tenere UUID per questioni di sicurezza;
- #p.santi è il responsabile per il prossimo periodo.

#pagebreak()
= Prossime attività
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
    columns: (auto, 1fr, 1fr),
    [ID], [Descrizione], [Assegnatari],

    [#issue_to_link("Buddybot",28)], [Prima unione dei microservizi ], [#p.belenkov],

    [#issue_to_link("Buddybot",24)], [Creazione action per il test], [#p.benedetti, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi, #p.santi],

    [#issue_to_link("Buddybot",23)], [Aggiunta scheduler e data ultimo fetch di informazioni], [#p.benedetti, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi, #p.santi],

  ),
  caption: "Tabella delle issue del prossimo sprint"
)
