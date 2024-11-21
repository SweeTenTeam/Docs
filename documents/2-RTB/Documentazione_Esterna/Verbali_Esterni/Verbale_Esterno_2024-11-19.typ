#import "/template/document.typ": *
//verbale esterno del 2024-11-19 0.1
//p
#show: project.with(
  title: "Verbale Esterno del 2024-11-19",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1", "2024-11-19", (p.benedetti), (p.mahdi), "Stesura iniziale del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Riunione su Google Meet;
- *Ora di inizio*: 17:00;
- *Ora di fine*: 17:25;
- *Partecipanti*: #p.belenkov, #p.santi, #p.mahdi, #p.fracaro, #p.benedetti, #p.campagnaro.
- *Partecipanti Esterni*: Martina Daniele, Nicola Boscaro. 

== Ordine del giorno
Sono state presentate a #p.azzurro le nostre idee per quanto riguarda:
- Specifiche di progetto
- Tecnologie che implementeremo
- Suddivisione temporale delle sprint
- Obiettivi di ogni sprint


= Sintesi dell'incontro
- Il meeting è stato breve e lineare, l'azienda ha approvato le nostre scelte sopra riportate, quindi sia quelle dal punto di vista progettuale, che temporale.
- Il team ha sollevato delle domande molto concise e dirette per limare gli ultimi dubbi che erano presenti fino a quel momento, per cominciare al meglio il primo sprint.


= Domande effettuate e relative risposte
== Test per il #glossary("PoC"), oltre che per il #glossary("MVP")
- Il team ha domandato se la suite di test automatizzati è richiesta non solo per il MVP, ma anche per il Poc. La risposta è stata che non sono un requisito per il Poc, ma che consigliano comunque di svolgere, anche perchè andranno implementati successivamente per il MVP
== Interfaccia grafica
- Il team ha proposto due alternative: la prima, più semplice da realizzare, senza interfaccia grafica, utilizzando il terminale; la seconda invece sviluppando un frontend. La risposta da parte dell'azienda è stata che entrambe le soluzioni sono adeguate, e che la scelta finale possiamo prenderla noi

= Prossimi step
- Incontro per la retrospettiva dello sprint attuale, e per eventuali modifice e/o analisi dello sprint successivo fissato per il 2024-12-03 alle ore 17:00
- Proseguimento stesura documentazione 


= Decisioni prese
- Non sono state prese nuove decisioni, dato che le proposte da noi presentate sono state ben accolte