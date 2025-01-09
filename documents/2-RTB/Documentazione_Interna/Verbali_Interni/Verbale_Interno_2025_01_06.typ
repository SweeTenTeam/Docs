#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2025-01-06",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-01-06",
    (p.benedetti),
    (p.santi),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 14:30;
- *Ora di fine*: 15:30;
- *Partecipanti*: #p.ferazzani, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.benedetti, #p.belenkov.

== Ordine Del giorno
 
- Retrospettiva #glossary("sprint") 3;
- Nuovo sprint: assegnazione nuove issue;
- Analisi e possibile spostamento data #glossary("RTB");


= Retrospettiva #glossary("sprint") 3
Durante la retrospettiva, il team ha dedicato del tempo ad esaminare i progressi ottenuti finora, riflettendo sugli aspetti positivi e sulle sfide incontrate. Sebbene siano stati compiuti buoni passi in avanti e molte attività siano state portate a termine con successo, abbiamo riconosciuto che ci sono ancora delle aree cruciali su cui concentrarci per garantire il corretto andamento del progetto. In particolare, abbiamo sottolineato che il completamento dell' #glossary("Analisi dei Requisiti") è una condizione fondamentale per poter proseguire efficacemente con il #glossary("Piano di Qualifica"), in particolar modo per quel che riguarda la sezione della "strategia di testing".

= Analisi lavoro svolto
A seguito di un'attenta e approfondita analisi condotta dal team sullo stato dei lavori relativi ai documenti da completare, è stata definita una nuova data di completamento del #glossary("RTB").


= Decisioni prese
- E' stato deciso di spostare la data di fine #glossary("RTB") al 22/01/2025;
- Assegnare nuovi ruoli e definire i compiti per la creazione delle #glossary("issue") per il quarto #glossary("sprint") ;
- Nomina di #p.mahdi come nuovo responsabile del team;
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

    [#issue_to_link("Docs",104)], [Stesura della sezione relativa al testing del #glossary("Piano di qualifica")], [#p.santi, #p.mahdi],

    [#issue_to_link("Docs",105)], [Stesura del cruscotto del #glossary("Piano di qualifica")], [#p.campagnaro], 

    [#issue_to_link("Docs",106)], [Completare la stesura della sezione riguardante lo sprint 3 del #glossary("Piano di Progetto")], [#p.benedetti],

    [#issue_to_link("Docs",107)], [Migliorare #glossary("Poc") nei casi con domande particolari], [#p.belenkov],
    
    [#issue_to_link("Docs",108)], [Controllo casi d'uso - Requisiti], [#p.fracaro, #p.ferazzani],

    [#issue_to_link("Docs",109)], [Stesura verbale esterno del 2 gennaio 2025], [#p.benedetti],

    [#issue_to_link("Docs",114)], [Stesura verbale interno del 6 gennaio 2025], [#p.benedetti],
  ),
  caption: "Tabella delle prossime attività"
)
