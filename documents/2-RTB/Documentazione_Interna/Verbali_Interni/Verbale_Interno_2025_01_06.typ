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
- *Partecipanti*: #p.ferazzani, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.benedetti.

== Ordine Del giorno
 
- Retrospettiva #glossary("sprint") 3;
- Analisi e conseguente decisione nuova data #glossary("RTB")
- Nuovo sprint: assegnazione nuove issue;

= Retrospettiva #glossary("sprint") 3
Durante la retrospettiva, il team ha analizzato le issue assegnate a ciascun membro, discutendo i problemi riscontrati nel loro completamento. Non sono emerse difficoltà particolari, se non ancora qualche dubbio legato ai casi d'uso.legate ai task sull'analisi dei requisiti, che hanno impedito il completamento di queste attività. Inoltre, una revisione della repository ha evidenziato che il verbale interno del 3 dicembre 2024 non era stato redatto; questo compito verrà quindi assegnato come task nel prossimo #glossary("sprint"). Le altre issue sono state completate regolarmente nei tempi previsti, senza ulteriori problematiche.

= Analisi e nuova data #glossary("RTB")
A seguito di un'attenta e approfondita analisi condotta dal team sullo stato dei lavori relativi ai documenti da completare, è stata definita una nuova stima per la data di completamento del #glossary("RTB")



= Decisioni prese
- Assegnati i nuovi ruoli e definiti i compiti per la creazione delle #glossary("issue") per il quarto #glossary("sprint");
- Nomina di #p.mahdi come nuovo responsabile del team;
- Riunione per eseguire test sul #glossary("Poc")
- Decisione di spostare la data della fine del #glossary("RTB") al 22/01/2025

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

    [#issue_to_link("Docs",93)], [Stesura della sezione relativa allo #glossary("sprint") 2 del #glossary("piano di progetto")], [#p.benedetti],

    [#issue_to_link("Docs",94)], [Completare la stesura del #glossary("Piano di qualifica")], [#p.santi, #p.campagnaro], 

    [#issue_to_link("Docs",95)], [Completare la stesura di tutti i casi d'uso], [#p.belenkov, #p.ferazzani, #p.fracaro],

    [#issue_to_link("Docs",96)], [Stesura verbale interno del 3 Dicembre 2024], [#p.mahdi],
    
    [#link("https://github.com/SweeTenTeam/BuddyBot---POC/issues/6")[POC6]], [Integrazione recupero informazioni da #glossary("Jira") e #glossary("Confluence")], [#p.mahdi],
  ),
  caption: "Tabella delle prossime attività"
)
