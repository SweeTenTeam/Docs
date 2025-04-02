#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2025-03-17",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-04-01",
    (p.santi),
    (p.belenkov),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 14:30;
- *Ora di fine*: 16:50;
- *Partecipanti*: #p.belenkov, #p.benedetti, #p.campagnaro, #p.ferazzani, #p.fracaro, #p.mahdi, #p.santi.

== Ordine del giorno
- Analisi stato avanzamento MVP, unione dei microservizi;
- Discussione aggiornamenti Documentazione - Specifica Tecnica;

= Analisi di avanzamento MVP, unione Microservizi
La riunione si è aperta con la presentazione del ChatBot: per la prima volta, l'intero gruppo ha potuto osservare sincronamente un prodotto in gran parte funzionante, avviando così una discussione sui possibili interventi migliorativi. Sono emersi diversi spunti di riflessione e confronto, in particolare riguardo a:
- una gestione degli errori corretta e soddisfacente (#glossary("Error Handling"))
- l'implementazione di uno scheduler per il #glossary("Retrival periodico")
  - conseguente display nella #glossary("UI") dell'ultimo aggiornamento delle informazioni
Questa analisi si è conclusa con la risoluzione di alcuni piccoli errori, sfruttando le competenze di ogni membro del team e il momento sincrono per collaborare in modo efficace.

= Discussione sugli aggiornamenti della Specifica Tecnica
Il gruppo ha successivamente proseguito il confronto, facendo il punto della situazione riguardo la documentazione in generale e gli aggiornamenti da apportare.
Particolare attenzione è stata rivolta alla Specifica Tecnica, discutendo su come dovrebbe essere strutturata e redatta, includendo possibili sezioni e sottosezioni, oltre all'utilizzo di rappresentazioni tramite codice o diagrammi UML.
Questa discussione si è rivelata necessaria e molto utile, con l’obiettivo di produrre, al termine, un documento coerente, uniforme e sufficientemente dettagliato.

= Decisioni prese
- Il team ha concordato sull'aggiunta di nuove migliorie da apportare (citate in precedenza) nell'implementazione di alcuni microservizi 
- Il team ha concordato sulla struttura da adottare per redigere la Specifica Tecnica
#pagebreak()
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

    [#issue_to_link("Docs",233)], [Specifica Tecnica - Frontend], [#p.ferazzani, #p.campagnaro],

    [#issue_to_link("Docs",234)], [Specifica Tecnica - Api Gateway Service], [#p.mahdi],

    [#issue_to_link("Docs",235)], [Specifica Tecnica - Chat History Service], [#p.santi],

    [#issue_to_link("Docs",236)], [Specifica Tecnica - Chatbot Service], [#p.benedetti],

    [#issue_to_link(" Docs",237)], [Specifica Tecnica - Information & Vector DB Service], [#p.belenkov, #p.fracaro],
  ),
  caption: "Tabella delle issues del prossimo sprint (repo Docs)"
)

Date le modifiche da apportare ai diversi microservizi, verranno continuate le issues legate all'implementazione.

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

    [#issue_to_link("BuddyBot",34)], [Aggiunta Scheduler - `Api Gayeway Service`], [#p.mahdi],
    
    [#issue_to_link("BuddyBot",35)], [Aggiungere data ultimo aggiornamento (fetch info) - `Chat History Service`], [#p.santi],
  ),
  caption: "Tabella delle issues del prossimo sprint (repo BuddyBot)"
)