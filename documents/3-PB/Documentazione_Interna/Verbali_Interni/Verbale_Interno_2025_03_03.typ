#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2025-03-03",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-03-08",
    (p.belenkov),
    (p.mahdi),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 10:00;
- *Ora di fine*: 12:30;
- *Partecipanti*: #p.ferazzani, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.benedetti, #p.belenkov.

== Ordine del giorno
- Scelte architetturali
- Inizio progettazione #glossary("MVP")

= Scelte architetturali
Durante questa riunione interna si è discusso della direzione da prendere per lo sviluppo del #glossary("MVP"), in particolare è stata discussa la scelta dell'utilizzo di un architettura a monolite o a microservizi. Successivamente si è discusso dell'architettura da usare all'interno dei singoli microservizi, e il gruppo ha scelto di usare un'architettura esagonale.

= Inizio progettazione MVP
In seguito il gruppo ha creato uno schema generale per individuare i vari microservizi del #glossary("MVP"), ci sono state alcune discrepanze e dubbi tra versioni diverse di questo schema.

= Decisioni prese
- Il gruppo ha scelto di usare un'architettura a microservizi, organizzando i singoli microservizi in un'architettura esagonale.
- Il gruppo si è suddiviso in coppie al fine di progettare in dettaglio i singoli microservizi.

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
    
    [#issue_to_link("Docs",196)], [Specifica Tecnica - Stesura introduzione e sezione tecnologie], [#p.ferazzani],
    
    [#issue_to_link("Docs",197)], [Manuale Utente - Stesura introduzione Manuale Utente], [#p.campagnaro],

    [#issue_to_link("Docs",200)], [Creazione nuova repo per MVP Buddybot], [#p.ferazzani],

    [#issue_to_link("Docs",205)], [Specifica Tecnica - Progettazione di dettaglio API Gateway], [#p.benedetti,#p.mahdi,#p.santi],

    [#issue_to_link("Docs",206)], [Specifica Tecnica - Progettazione di dettaglio microservizio storico chat], [#p.benedetti,#p.mahdi,#p.santi],

    [#issue_to_link("Docs",207)], [Specifica Tecnica - Progettazione dettaglio frontend], [#p.campagnaro,#p.ferazzani],

    [#issue_to_link("Docs",208)], [Specifica Tecnica - Progettazione dettaglio microservizio database vettoriale], [#p.belenkov,#p.fracaro],

    [#issue_to_link("Docs",209)], [Specifica Tecnica - Progettazione dettaglio microservizio informazioni], [#p.belenkov,#p.fracaro],

  ),
  caption: "Tabella delle issue del prossimo sprint"
)
