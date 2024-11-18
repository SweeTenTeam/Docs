#import "/template/document.typ": *
//verbale esterno del 2024-12-11 0.2
//p
#show: project.with(title: "Verbale Esterno del 2024-11-12", recipients: (p.vardanega, p.cardin,), changelog: (
  "1.0",
  "2024-11-14",
  (p.ferazzani),
  (p.santi),
  "Approvazione Documento.",
  "0.2",
  "2024-11-14",
  (p.ferazzani),
  (p.santi),
  "Verificato Verbale, modifica paragrafo 4",
  "0.1",
  "2024-11-12",
  (p.ferazzani),
  (p.santi),
  "Stesura iniziale del verbale",
))

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Uffici AzzurroDigitale;
- *Ora di inizio*: 16:00;
- *Ora di fine*: 18:00;
- *Partecipanti*: #p.ferazzani, #p.belenkov, #p.santi, #p.mahdi, #p.fracaro.
- *Partecipanti Esterni*: Team AzzurroDigitale e Team SwegLabs.

== Ordine del giorno
- Kick-off del progetto;
- Presentazione di AzzurroDigitale;
- Discussione sul progetto e way of working aziendale;
- Prossimi step

#pagebreak()

= Kick-off del progetto
Lo scopo del meeting è stato quello di fare il kick-off del progetto e di presentare il team di #glossary("AzzurroDigitale"),
la loro #glossary("Way of Working") e le tecnologie che utilizzeremo durante lo svolgimento di questo progetto.

= Presentazione di AzzurroDigitale

Il team di #box(image(g.azzurro, width: 5em, height: auto)), dopo una breve presentazione su chi è e cosa fa l'azienda,
ci ha accompagnato in un tour dei loro uffici. Abbiamo avuto modo di vedere come lavorano e di conoscere i loro
dipendenti.

= Discussione sul progetto e way of working aziendale

Dopo le varie presentazioni ci è stata esposta la metodologia #glossary("Agile") che viene utilizzata da loro e che
utilizzeremo come gruppo per lo sviluppo di questo capitolato. In particolare svolgeremo #glossary("sprint") bisettimanali
con incrontri pre-programmati per le prossime 10 settimane. La struttura di un singolo sprint si divide come segue:
+ Raccolta specifiche \u{FE61}
+ Creazione #glossary("ticket") e assegnazione ticket
+ Planning Poker
+ Sviluppo e Avanzamento ticket
+ Review \u{FE61}

#text(
  0.6em,
  "\u{FE61}: I punti contrassegnati da questo simbolo sono svolti in sincrono con il team AzzurroDigitale.",
)

== Tecnologie Consigliate
Il team di #box(image(g.azzurro, width: 5em, height: auto)) consiglia di utilizzare #glossary("Confluence") e #glossary("Jira") rispettivamente
per la documentazione e la gestione dei ticket. Il team si prepone di studiare questi due strumenti e di utilizzarli in
parallelo a quelli già in uso, come #glossary("GitHub") e Trello. #linebreak()
Come strumenti di contatto invece sono stati stabiliti Discord per le comunicazioni non formali e urgenti, mail per le
comunicazioni formali e Google Meet per gli incontri sincroni.

La prima Raccolta Specifiche è stata fissata per il 2024-11-19 alle ore 17:00.

== In depth del progetto
E' stata discussa anche la struttura base del progetto, come la #glossary("GUI"), la logica e a cosa effettivamente
BuddyBot dovrà saper rispondere. In particolare, si è discusso di come il bot dovrà avere accesso a Jira, Confluence e
GitHub per poter reperire informazioni relative ai progetti in fase di sviluppo da parte di AzzurroDigitale. Al momento,
non è richiesto un sistema di utenza o cono di visibilità.

= Prossimi step
- Incontro per la raccolta delle specifiche fissato per il 2024-11-19 alle ore 17:00;
- Sviluppo piano di lavoro
- Comunicazione all'azienda di un eventuale budget per l'acquisto di Key OpenAI.
- Redazione Obiettivi primi 3-4 sprint.

#pagebreak()

= Decisioni prese

- Il team si impegna a studiare le varie tecnologie necessarie, come ad esempio LangChain Typescript e React, facendo dei
  test e leggendo documentazione;
- Il team si impegna a studiare Confluence e Jira per la documentazione e la gestione dei ticket;
- Il team si impegna a utilizzare Confluence per la documentazione più tecnica così che sia accessibile anche al team
  AzzurroDigitale