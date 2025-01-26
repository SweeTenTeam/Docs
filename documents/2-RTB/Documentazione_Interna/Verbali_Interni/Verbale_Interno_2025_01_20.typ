#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2025-01-20",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-01-23",
    (p.mahdi),
    (p.santi),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 16:30;
- *Ora di fine*: 19:00;
- *Partecipanti*: #p.ferazzani, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.benedetti, #p.belenkov.

== Ordine Del giorno
 
- Resoconto quarto sprint;
- Assegnazione nuove issue;
- Discussione su data fine RTB.


= Resoconto quarto sprint
Discussione sul lavoro fatto durante l'ultimo sprint e sulle modifiche fatte dopo l'incontro con il professore #p.cardin, soprattutto per quanto rigurarda i casi d'uso e i vari requisiti nel file #glossary("Analisi dei requisiti") e organizzazione delle ultime cose che mancano, con l'assegnazione delle nuove issue, da aggiungere per la revisione #glossary("RTB").

= Discussione su data fine RTB
Breve dibattito per decidere la data più conveniente per la revisione del #glossary("RTB"), tenendo conto anche della possibilità di dover apportare modifiche o correzioni.

= Decisioni prese
- È stato deciso di spostare la data di fine #glossary("RTB") al 04/02/2025;
- Sono state assegnate le nuove #glossary("issue") per il quinto #glossary("sprint");
- È stato nominato #p.santi come nuovo responsabile per il prossimo sprint.

#linebreak()

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

    [#issue_to_link("Docs",131)], [Stesura dei Requisiti di vincolo dell' #glossary("Analisi dei requisiti")], [#p.belenkov],

    [#issue_to_link("Docs",130)], [Stesura dei Requisiti di qualità dell' #glossary("Analisi dei requisiti")], [#p.belenkov], 

    [#issue_to_link("Docs",129)], [Stesura requisiti funzionali per UC3], [#p.benedetti],

    [#issue_to_link("Docs",128)], [Stesura requisiti funzionali per UC2], [#p.santi],
    
    [#issue_to_link("Docs",127)], [Stesura requisiti funzionali per UC1], [#p.ferazzani],

    [#issue_to_link("Docs",126)], [Specifica dati da prendere da Github], [#p.mahdi],

    [#issue_to_link("Docs",125)], [Aggiunta casi d'uso per gli errori], [#p.fracaro],
    
    [#issue_to_link("Docs",134)], [Stesura dei test nella sezione "Strategie di Testing"], [#p.santi],

    [#issue_to_link("Docs",135)], [Stesura dei requisiti per i nuovi casi d'uso], [#p.fracaro],
    
    [#issue_to_link("Docs",136)], [Ordinare i requisiti nell'#glossary("Analisi dei Requisiti")], [#p.fracaro],

    [#issue_to_link("Docs",137)], [Retrospettiva quarto sprint], [#p.benedetti],

    [#issue_to_link("Docs",138)], [Modificare la sezione "informazioni confluence"], [#p.ferazzani],
  ),
  caption: "Tabella delle prossime attività"
)
