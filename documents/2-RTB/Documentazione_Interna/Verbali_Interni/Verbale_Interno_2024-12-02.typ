#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-12-02",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2024-12-03",
    (p.mahdi),
    (p.fracaro),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 15:00;
- *Ora di fine*: 16:30;
- *Partecipanti*: #p.ferazzani, #p.belenkov, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.benedetti.

== Ordine Del giorno

- Presentazione AzzurroDigitale;
- Struttura repo;
- Sprint Review;
- Discussione sul versionamento dei file;
- Nomenclatura file;
- Struttura verbali;
- Uso dei feature branch.

= Presentazione AzzurroDigitale

Il responsabile ha discusso con il team la presentazione fatta in vista dell'incontro del giorno dopo, 03/12/2024, con l'azienda #box(image(g.azzurro, width: 5em, height: auto)) per avere una conferma dal gruppo dei lavori segnati come completati e per segnare le domande da fare all'azienda per lo #glossary("sprint") successivo.

= Struttura repo

Il team ha discusso sulla divisione di #glossary("PoC") ed #glossary("MVP") in due repository diverse o sull'includere il primo dentro al secondo.

= Sprint Review

Il team ha revisionato i compiti completati per il primo sprint e confermato il loro completamento, sia per la parte di #glossary("PoC") da consegnare all'azienda che per la documentazione per l'#glossary("RTB").

= Discussione sul versionamento dei file

Dopo un'attenta analisi e discussione, il team ha deciso di adottare un sistema di versionamento a 3 cifre, aumentando rispetto alle 2 cifre precedenti. Tuttavia, per i documenti che subiscono meno modifiche frequenti, come i verbali e il glossario, si è scelto di mantenere il versionamento a 2 cifre, ritenendolo più adeguato.

= Nomenclatura file

Il team ha discusso e poi stabilito una nomenclatura standard per i diversi file, branch, issue e pull request, aggiornando di conseguenza la sezione nel file Norme di Progetto.

= Struttura verbali

Il team dopo avere notato che i verbali non seguivano esattamente lo stesso layout ha deciso di mettere ai voti la scelta e inserire le regole da seguire nelle Norme di Progetto.

= Uso dei feature branch

Il team, dopo la segnalazione da parte di un suo membro di una difficoltà nel lavorare in più persone sullo stesso documento, ha fatto un breve brainstorming e deciso di usare la tecnica dei #glossary("feature-branch") per lavorare in parallelo sui documenti principali. Si è concluso anche che per il glossario non servirà questa tecnica in quanto verrà modificato a fine #glossary("sprint") da una persona sola nel suo branch.

= Decisioni prese

- Passaggio al versionamento a 3 cifre tranne che per verbali e glossario che sarà a 2 cifre;
- Alla fine ci saranno due repository, una per i documenti e una per l'#glossary("MVP") con dentro la cartella #glossary("PoC") ;
- Per ogni nuova aggiunta ai documenti principali si dovrà creare un branch nuovo che parte dal branch del documento, tranne per il glossario che verrà aggiornato ad ogni #glossary("sprint") e partirà da develop direttamente;
- Decisione dei nuovi ruoli e compiti per creare le #glossary("issue") per il secondo #glossary("sprint");
- #p.belenkov è il nuovo responsabile del team.

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
    columns: (1cm, 7cm, 7cm),
    [ID], [Descrizione], [Assegnatari],

    [#78], [Continuazione del #glossary("PoC") con gli obiettivi per il secondo #glossary("sprint")], [#p.belenkov e #p.fracaro],
    [#77], [Inizio Requisiti(punto 4) nel documento Analisi dei Requisiti], [#p.mahdi, #p.fracaro, #p.santi, #p.ferazzani], 
    [#76], [Aggiunta nuovi casi d'uso], [#p.mahdi, #p.fracaro, #p.santi, #p.ferazzani],
    [#72], [Aggiunta sezione #glossary("sprint") 1 al documento Piano di Progetto], [#p.campagnaro],
    [#70], [Introduzione e struttura del documento Piano di Qualifica], [#p.benedetti],
    [#71], [Sistemazione del file per la rendicontazione delle ore], [#p.campagnaro],
  ),
  caption: "Tabella delle prossime attività"
)
