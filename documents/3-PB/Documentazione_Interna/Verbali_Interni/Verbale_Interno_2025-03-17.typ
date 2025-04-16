#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2025-03-17",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0",
    "2025-04-16",
    (p.fracaro),
    (p.santi),
    "Revisione verbale per PB",
    "0.1",
    "2025-03-17",
    (p.benedetti),
    (p.belenkov),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 13:30;
- *Ora di fine*: 15:30;
- *Partecipanti*: #p.belenkov, #p.benedetti, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi, #p.santi.

== Ordine del giorno
- Analisi di avanzamento singoli microservizi;
- Controllo progettazione microservizio relativo al ChatBot;
- Discussione data fine #glossary("PB")

= Analisi di avanzamento singoli microservizi
Durante questa riunione interna, ogni componente del team ha avuto modo di esporre agli altri i risultati ottenuti fino a quel momento, illustrando il lavoro svolto e confrontandosi sui vari aspetti del progetto. L'obiettivo principale era quello di verificare che il progetto stesse procedendo correttamente e nella direzione auspicata.

= Controllo progettazione microservizio relativo al ChatBot
L'intero gruppo ha approvato e confermato il microservizio del ChatBot, che potrà ora entrare nella fase di implementazione, subordinatamente alla conferma da parte dell'azienda, che ci sarà fornita entro la giornata di domani.

= Discussione data fine PB
Il team ha preso in considerazione le opinioni di tutti i membri, ritenendo opportuno posticipare la data di conclusione del PB. Tale decisione è stata presa a seguito di alcuni rallentamenti, sebbene non significativi, che si sono verificati nel corso del progetto. Questi ritardi, sebbene contenuti, hanno progressivamente contribuito a posticipare la data di fine prevista.

= Decisioni prese
- Il team ha deciso di spostare la data per la fine del #glossary("PB"), inizialmente preventivata per il 28-03-2025, al 11-04-2025

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

    [#issue_to_link("Docs",217)], [Inizio stesura specifica tecnica], [#p.belenkov, #p.benedetti, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi, #p.santi],

    [#issue_to_link("Docs",218)], [Inizio stesura specifica tecnica], [#p.belenkov, #p.benedetti, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi, #p.santi],

    [#issue_to_link("Docs",219)], [Redigere il primo sprint del #glossary("Piano di Progetto")], [#p.mahdi],

    [#issue_to_link("Docs",220)], [Redigere il secondo sprint del #glossary("Piano di Progetto")], [#p.benedetti],

    [#issue_to_link("Docs",221)], [Redigere il terzo sprint del #glossary("Piano di Progetto")], [#p.campagnaro],

    [#issue_to_link("Docs",222)], [Modifica #glossary("Analisi dei Requisiti")], [#p.ferazzani, #p.campagnaro],
  ),
  caption: "Tabella delle issue del prossimo sprint"
)
