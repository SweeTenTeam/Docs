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

== Informazioni sulla riunuione

- *Luogo*: Discord;
- *Ora di inizio*: 15:00;
- *Ora di fine*: 16:30;
- *Partecipanti*: #p.ferazzani, #p.belenkov, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.benedetti.

== Ordine Del giorno

- Presentazione Azzurro;
- Struttura repo;
- Sprint Review;
- Discussione sul versionamento dei file;
- Nomencaltura file;
- Struttura verbali;
- Uso dei feature branch.

= Presentazione Azzurro

Il responsabile ha discusso con il team la presentazione fatta in vista dell'incontro del giorno dopo, 03/12/2024, con l'azienda #box(image(g.azzurro, width: 5em, height: auto)) per avere una conferma dal gruppo dei lavori segnati come completati e per segnare le domande da fare all'azienda per lo #glossary("sprint") successivo.

= Struttura repo

Il team ha discusso sulla divisione di #glossary("PoC") ed #glossary("MVP") in due repository diverse o sull'includere il primo dentro al secondo.

= Sprint Review

Il team ha revisionato i compiti completati per il primo sprint e confermato il loro completamento, sia per la parte di #glossary("PoC") da consegnare all'azienda che per la documentazione per l'#glossary("RTB").

= Discussione sul versionamento dei file

Il team dopo una attenta anlisi e discussione ha deciso di cambiare il numero di cifre di versionamento, da 2 a 3, dei verbali e del glossario ritenendo non necessario un versionamento a 3 cifre per documenti che non venngono modificati frequentemente.

= Nomencaltura file

Il team ha discusso e poi stabilito una nomencaltura standard per i diversi file, branch, issue e pull request, aggiornando di conseguenza la sua sezione nel file Norme di Progetto.

= Struttura verbali

Il team dopo avere notato che i verbali non seguivano esattamente lo stesso layout ha deciso di mettere ai voti la scelta e inserire le regole da seguire nelle Norme di Progetto.

= Uso dei feature branch

Il team, dopo la segnalazione da parte di un suo mebro di una difficoltà nel lavorare in più persone sullo stesso documento, ha fatto un breve brainstorming e deciso di usare la tecnica dei #glossary("feature-branch") per lavorare in parallelo sui documenti principali.

= Decisioni prese

- Passaggio al versionamento a due cifre per verbali e glossario;
- Alla fine ci saranno due repository, una per i documenti e una per l'#glossary("MVP") con dentro la cartella #glossary("PoC") ;
- Per ogni nuova aggiunta ai documenti principali si dovrà creare un branch nuovo che parte dal branch del documento, tranne per il glossario che verrà aggiornato ad ogni #glossary("sprint") e partirà da develop direttamente;
- Decisione dei nuovi ruoli e compiti per creare le #glossary("issue") per il secondo #glossary("sprint");
- #p.belenkov è il nuovo responsabile.