#import "/template/document.typ": *

#show: project.with(
  title: "Verbale Esterno del 2024-12-03",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (

    "0.1",
    "2024-12-03",
    (p.mahdi),
    (p.fracaro),
    [
      Stesura verbale
    ],
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Riunione su Google Meet;
- *Ora di inizio*: 17:00;
- *Ora di fine*: 17:30;
- *Partecipanti*: #p.belenkov, #p.santi, #p.mahdi, #p.fracaro, #p.benedetti, #p.campagnaro, #p.ferazzani.
- *Partecipanti Esterni*: Martina Daniele, Nicola Boscaro. 

== Ordine del giorno
Abbiamo presentato ad #p.azzurro :
- Il resoconto del lavoro svolto durante il primo sprint;
- Una demo live del #glossary("PoC");
- Le attività e gli obiettivi del prossimo sprint; 
- Dubbi su alcune parti del progetto.


= Sintesi dell'incontro
- L'incontro è stato breve, è stato fatto un resoconto del lavoro svolto e l'elenco degli obiettivi per il prossimo #glossary("Sprint").
- Non ci sono state domande da parte dell'azienda ma abbiamo avuto una discussione riguardante l'aggiornamento dei dati nel database e sui casi d'uso da sviluppare.


= Domande effettuate e relative risposte
== Casi d'uso
- Il team ha domandato se l'azienda aveva dei casi d'uso specifici oltre a quelli messi come esempio nella presentazione del capitolato. Ci è stato risposto che quelli sono solo di esempio ma gli altri saranno basati sulle funzionalità richieste e quelle che decideremo di implementare.
== Aggiornamento database
- Il team ha chiesto se il database vettoriale andasse aggiornato con una frequanza precisa o ad ogni nuova interazione. Ci è sato risposto che possiamo aggiornarlo manualmente per il #glossary("PoC") e poi per il #glossary("MVP") decidere una frequenza di aggiornamento il più frequente possibile ma che non sovraccarichi il sistema.


= Prossimi step
- Prossimo incontro con l'azienda fissato per le ore 17:00 del 2024-12-17;
- Proseguimento della seconda parte del #glossary("PoC") e stesura dei casi d'uso.


= Decisioni prese
- Ci siamo accordati con il proponente per fare una review dei casi d'uso una volta ultimati. 
