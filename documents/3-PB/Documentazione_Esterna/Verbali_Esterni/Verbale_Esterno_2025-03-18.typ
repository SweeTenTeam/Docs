#import "/template/document.typ": *

#show: project.with(
  title: "Verbale Esterno del 2025-03-18",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-03-19",
    (p.benedetti),
    (p.belenkov),
    [
      Stesura verbale
    ],
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Riunione su Google Meet;
- *Ora di inizio*: 17:00;
- *Ora di fine*: 17:55;
- *Partecipanti*: #p.belenkov, #p.benedetti, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi, #p.santi.
- *Partecipanti Esterni*: Nicola Boscaro, Martina Daniele.

== Ordine del giorno

Il team ha presentato a #p.azzurro:

- Progettazione nel dettaglio del microservizio *`Chatbot`*;
- Una demo dell'implementazione del microservizio riguardante il #glossary("frontend");
- Una demo dell'implementazione del microservizio riguardante lo *`storico della chat`*;
- Una demo dell'implementazione del microservizio riguardante il *`fetch delle informazioni`*;
- Una demo dell'implementazione del microservizio riguardante il *`DB Vettoriale`*;
- Presentazione della pianificazione delle attività per il prossimo periodo.

= Sintesi dell'incontro
Durante l'incontro, il team ha presentato i primi risultati tangibili derivanti dall'implementazione dei diversi microservizi che costituiscono la nostra architettura. La presentazione ha offerto una panoramica dettagliata sullo stato di avanzamento del progetto, evidenziando le funzionalità sviluppate.

Nel corso della discussione, sono stati sollevati alcuni quesiti relativi a difficoltà tecniche e dubbi emersi durante l'integrazione dei microservizi. Abbiamo ricevuto risposte e chiarimenti, permettendoci di risolvere le incertezze e di allinearci più efficacemente sulle prossime fasi di sviluppo.
L'incontro si è concluso con la presentazione della pianificazione per il periodo successivo, delineando gli obiettivi da raggiungere e le attività previste per il proseguimento del lavoro.

= Prossimi step

- Terminare tutte le implementazioni dei microservizi
- Trovarsi nelle fasi avanzate della redazione del #glossary("Manuale Utente").


= Decisione prese
Abbiamo comunicato all'azienda lo spostamento della data di fine #glossary("MVP") al 11-04-2025, inizialmente prevista per il 28-03-2025, 