#import "/template/document.typ": *

#show: project.with(
  title: "Verbale Esterno del 2024-01-02",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "1.0",
    "2025-01-06",
    (p.benedetti),
    (p.belenkov),
    [
      Approvazione Documento
    ],
    "0.2",
    "2024-01-06",
    (p.benedetti),
    (p.belenkov),
    [
      Verificato, lievi correzioni
    ],
    "0.1",
    "2024-01-04",
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
- *Ora di inizio*: 16:00;
- *Ora di fine*: 16:20;
- *Partecipanti*: #p.belenkov, #p.santi, #p.mahdi, #p.fracaro, #p.benedetti, #p.campagnaro, #p.ferazzani.
- *Partecipanti Esterni*: Martina Daniele, Nicola Boscaro.

== Ordine del giorno
Abbiamo presentato ad #p.azzurro :
- Il resoconto del lavoro svolto durante il terzo sprint;
- Una demo live del #glossary("PoC"), mostrando l'integrazione delle #glossary("API") di #glossary("Jira") e #glossary("Confluence");
- Le attività e gli obiettivi del prossimo sprint;
- Dubbio riguardante i casi d'uso.


= Sintesi dell'incontro
- L'incontro è stato breve, è stato fatto un resoconto del lavoro svolto e l'elenco degli obiettivi per il prossimo #glossary("Sprint").


= Domande effettuate e relative risposte
== Casi d'uso
- Il team ha domandato quanto bisognasse essere specifici, entrando nei dettagli, per quanto riguarda le eccezioni nei casi d'uso, per eventuali errori che si possono verificare all'interno del database vettoriale ad esempio. La risposta è stata di fornire all'utente una risposta di errore, ma di rimanere generici senza andare nello specifico.



= Prossimi step
- Prossimo incontro con l'azienda fissato per le ore 17:00 del 2025-01-14;
- Ultimare e perfezionare il #glossary("PoC") facendo in modo di ottenere buone risposte dal bot, da domande che comportino retrieval di più dati da documenti differenti.


= Decisioni prese
- Date le vacanze, e i conseguenti adattamenti sulla data d'incontro, ci è stato confermato che non sarà necessario l'incontro programmato per il 2025-01-07
