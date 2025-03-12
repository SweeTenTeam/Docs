#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2025-03-10",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-03-12",
    (p.campagnaro),
    (p.fracaro),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 2:00;
- *Ora di fine*: 4:00;
- *Partecipanti*: #p.belenkov, #p.benedetti, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi, #p.santi.

== Ordine del giorno
- Scelte progettuali dei singoli microservizi;
- Discussione sulla progettazione e sull'implementazione del #glossary("frontend") e del microservizio *`Fetch informazioni`*;

= Scelte progettuali
Durante questa riunione interna, ciascun gruppo, composto da due o tre persone, ha presentato e aggiornato gli altri sulle scelte progettuali relative ai microservizi assegnati. La discussione ha permesso di correggere eventuali criticità, approvare le decisioni prese e garantire un allineamento generale, verificando che il progetto procedesse nella direzione corretta.

= Discussione implementazione frontend e microservizio *`Fetch informazioni`*
Successivamente, i membri del team incaricati dello sviluppo del frontend e del microservizio *`Fetch informazioni`* hanno condiviso i progressi iniziali delle rispettive implementazioni. Durante la presentazione, hanno richiesto suggerimenti e accolto feedback da parte di tutto il gruppo, al fine di valutare la coerenza delle scelte fatte e verificare se la direzione intrapresa fosse quella giusta per il successo del progetto.

= Decisioni prese
- Il team ha organizzato il lavoro assegnando a ciascun membro la responsabilità dell'implementazione di un singolo microservizio, in modo da garantire una distribuzione efficiente delle attività

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

    [#issue_to_link("BuddyBot",1)], [Implementazione frontend], [#p.ferazzani, #p.campagnaro],

    [#issue_to_link("BuddyBot",2)], [Implementazione microservizio `API Gateway`], [#p.mahdi],

    [#issue_to_link("BuddyBot",3)], [Implementazione microservizio `Storico chat`], [#p.santi],

    [#issue_to_link("BuddyBot",4)], [Implementazione microservizio `Chatbot`], [#p.benedetti],

    [#issue_to_link("BuddyBot",5)], [Implementazione microservizio `Database vettoriale`], [#p.fracaro],

    [#issue_to_link("BuddyBot",6)], [Implementazione microservizio `Fetch informazioni`], [#p.belenkov],

    [#issue_to_link("Docs",212)], [Verbale Esterno 2025-03-11], [#p.campagnaro],

  ),
  caption: "Tabella delle issue del prossimo sprint"
)
