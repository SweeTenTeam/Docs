#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2025-02-24",
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
    "2025-02-25",
    (p.fracaro),
    (p.ferazzani),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 15:30;
- *Ora di fine*: 17:30;
- *Partecipanti*: #p.ferazzani, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro.

== Ordine del giorno
- Resoconto incontri di revisione RTB
- Pianificazione milestones PB

= Resoconto incontri di revisione RTB
Durante la prima parte di questo incontro sono stati analizzati gli esiti e i feedback relativi alla revisione RTB, valutando sia gli aspetti positivi sia i miglioramenti da implementare in futuro nella documentazione. Inoltre, sono stati discussi i cambiamenti in fase di implementazione all'#glossary("Analisi dei requisiti") richiesti dal professor Cardin durante il colloquio avvenuto in occasione della revisione RTB. Si è concordato che i lavori stavano procedendo secondo la pianificazione ed è stato stabilito di inviare l'email di notifica dell'avvenuta rettifica del documento il 26 Febbraio, come richiesto dal professor Cardin.

= Pianificazione milestones PB
Nella seconda parte della riunione, il team ha pianificato le milestone e definito le attività da svolgere nei prossimi sprint per completare la documentazione e l'MVP in vista della revisione PB di fine progetto. Dopo un'attenta analisi, il gruppo ha delineato a livello macro le attività necessarie per valutare se la data di consegna inizialmente prevista (28 marzo 2025) fosse ancora realistica.

Si è concordato che, mantenendo un ritmo di lavoro costante, l'obiettivo rimane raggiungibile. Tuttavia, è stata fissata una riunione di verifica il 17 marzo 2025 per monitorare l'andamento dei lavori ed eventualmente rivedere la scadenza.

Inoltre, l'incontro di lunedì 3 marzo 2025 sarà dedicato alla progettazione ad alto livello, con la selezione dell'architettura e dei principali componenti dell'MVP di #glossary("Buddybot"). Questo consentirà una pianificazione più dettagliata delle attività di progettazione, assegnando compiti specifici ai membri del team per lo sprint successivo.





= Decisioni prese
- 26 febbraio 2025: data di notifica della rettifica dell'Analisi dei Requisiti;
- Migliorare la sezione dei riferimenti nella prossima versione dei documenti;
- Rimuovere il link del glossario nell'indice dei documenti dalla prossima versione;
- Milestone per la revisione #glossary("PB"):
  - 28 marzo 2025: consegna della documentazione e dell'#glossary("MVP") ;
  - 26 marzo 2025: completamento della redazione del documento #glossary("Piano di Progetto") ;
  - 24 marzo 2025: fine della programmazione dell'MVP;
  - 24 marzo 2025: completamento della redazione del documento #glossary("Manuale Utente") ;
  - 24 marzo 2025: completamento della redazione del documento #glossary("Specifica Tecnica") ;
  - 17 marzo 2025: termine della progettazione di dettaglio di tutte le componenti dell'MVP.
- 17 marzo 2025: incontro di verifica sull'andamento dei lavori per valutare un'eventuale revisione della data di consegna;
- 3 marzo 2025: riunione dedicata alla progettazione ad alto livello;
- Stesura introduzione e sezione tecnologie del documento #glossary("Specifica Tecnica") come attività del prossimo sprint;
- Stesura introduzione del documento #glossary("Manuale Utente") come attività del prossimo sprint;
- #p.fracaro nominato nuovo responsabile per il prossimo sprint.

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

    [#issue_to_link("Docs",196)], [Stesura introduzione e sezione tecnologie (#glossary("Specifica Tecnica"))], [#p.ferazzani],

    [#issue_to_link("Docs",197)], [Stesura introduzione #glossary("Manuale utente")], [#p.campagnaro], 

    [#issue_to_link("Docs",198)], [Stesura verbale interno del 24 Febbraio 2025], [#p.fracaro],

    [#issue_to_link("Docs",199)], [Creazione nuove milestones PB], [#p.campagnaro],
    
    [#issue_to_link("Docs",200)], [Creazione nuova repo per MVP Buddybot], [#p.ferazzani],
  ),
  caption: "Tabella delle prossime attività"
)