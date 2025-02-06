#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2025-01-20",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-02-05",
    (p.santi),
    (p.campagnaro),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: toadd;
- *Ora di fine*: toadd;
- *Partecipanti*: #p.ferazzani, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.benedetti, #p.belenkov.

== Ordine del giorno
- Resoconto quinto sprint
- Controllo repository pre-candidatura RTB

= Resoconto quinto sprint
Durante questa riunione interna, ogni membro del gruppo ha presentato il lavoro svolto durante lo #glossary("sprint"), condividendo eventuali dubbi o difficoltà. Non sono emerse criticità significative. Le attività recenti si sono concentrate principalmente sul perfezionamento della documentazione del gruppo, con particolare attenzione ai documenti che, nei periodi precedenti, sono stati oggetto di revisioni (tra tutti, #glossary("Analisi dei Requisiti") e #glossary("Piano di Qualifica")). 

= Controllo repository pre-candidatura RTB
Prima di inviare la candidatura, il gruppo ha ritenuto necessaria una revisione completa della #glossary("repository") per individuare eventuali criticità. Si è deciso di effettuare questo controllo in modo asincrono, ad eccezione dell'#glossary("Analisi dei Requisiti"), considerata la sua importanza e il coinvolgimento di tutti i membri nella sua redazione. E' stato ritenuto necessario anche un controllo e aggiornamento del Glossario e del sito web del gruppo.

Sono state create delle #glossary("issue") in merito a questa revisione.

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

    [#issue_to_link("Docs",148)], [Glossario - Revisione (ed aggiornamenti)], [#p.ferazzani],

    [#issue_to_link("Docs",149)], [Glossario - Revisione (ed aggiornamenti)], [#p.ferazzani],

    [#issue_to_link("Docs",150)], [Norme di Progetto - Rilettura e controllo documento], [#p.campagnaro, #p.ferazzani],

    [#issue_to_link("Docs",151)], [Piano di Qualifica - Rilettura e controllo documento], [#p.santi],

    [#issue_to_link("Docs",152)], [Verbali - Rilettura e controllo], [#p.benedetti],

    [#issue_to_link("Docs",153)], [Piano di Progetto - Rilettura e controllo documento], [#p.campagnaro],

    [#issue_to_link("Docs",154)], [Analisi dei Requisiti - Rilettura e controllo documento], [#p.ferazzani, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.benedetti, #p.belenkov],

  ),
  caption: "Tabella delle issue di revisione"
)

= Decisioni prese
- Il gruppo invia la candidatura in data x y z.
- Non verrà redatta la tabella delle prossime attività, dato che non ne sono previste in attesa dell'esito della candidatura RTB. 
