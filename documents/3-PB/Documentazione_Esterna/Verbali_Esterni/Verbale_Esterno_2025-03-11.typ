#import "/template/document.typ": *

#show: project.with(
  title: "Verbale Esterno del 2025-03-11",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-03-12",
    (p.campagnaro),
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
- *Ora di fine*: 17:40;
- *Partecipanti*: #p.belenkov, #p.benedetti, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi, #p.santi.
- *Partecipanti Esterni*: Nicola Boscaro, Martina Daniele.

== Ordine del giorno

Il team ha presentato a #p.azzurro:

- La scelta dell'#glossary("Architettura") generale del #glossary("MVP");
- Una prima implementazione e struttura del #glossary("frontend");
- Progettazione nel dettaglio del microservizio *`Storico Chat`*;
- Progettazione nel dettaglio del microservizio *`API Gateway`*;
- Progettazione nel dettaglio del microservizio *`DB Vettoriale`*;
- Progettazione nel dettaglio del microservizio *`Fetch Informazioni`*;
- Domande e consigli sulle scelte progettuali fatte dal team;
- Presentazione della pianificazione per il prossimo periodo.

= Sintesi dell'incontro
Durante l'incontro, il team ha affrontato diversi aspetti fondamentali del progetto. È stata presentata l'architettura aggiornata dell'#glossary("MVP"), integrando le scelte effettuate nel periodo precedente, insieme alla prima implementazione e alla struttura del #glossary("frontend"). Inoltre, sono stati illustrati nel dettaglio i microservizi progettati: *`Storico Chat`*, *`API Gateway`*, *`DB Vettoriale`* e *`Fetch Informazioni`*.

Durante la discussione, sono stati posti alcuni quesiti relativi alle scelte progettuali, ai quali sono seguiti chiarimenti e riscontri che hanno confermato la solidità delle decisioni adottate. Il confronto ha permesso di approfondire diversi aspetti del lavoro svolto, offrendo spunti utili per eventuali miglioramenti. Infine, è stata presentata la pianificazione per il prossimo periodo, con una chiara definizione delle attività future e degli obiettivi da raggiungere.

= Prossimi step

- Progettazione in dettaglio del microservizio *`Chatbot`*;
- Fine implementazione #glossary("frontend");
- Implementazione del microservizio *`Storico Chat`*;
- Implementazione del microservizi *`API Gateway`*;
- Implementazione del microservizio *`DB Vettoriale`*;
- Implementazione del microservizio *`Fetch Informazioni`*;
\ \ \

= Decisione prese
A seguito dei feedback ricevuti, è stata presa la decisione di avviare lo sviluppo dei microservizi individuati, distribuendo le attività tra i membri del team. L'implementazione procederà in modo indipendente, senza la necessità di un coordinamento continuo.
