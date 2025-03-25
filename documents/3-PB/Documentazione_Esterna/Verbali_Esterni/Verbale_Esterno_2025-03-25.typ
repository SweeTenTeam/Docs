#import "/template/document.typ": *

#show: project.with(
  title: "Verbale Esterno del 2025-03-25",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-03-25",
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
- *Ora di fine*: 17:10;
- *Partecipanti*: #p.belenkov, #p.benedetti, #p.ferazzani, #p.fracaro, #p.mahdi.
- *Partecipanti Esterni*: Nicola Boscaro, Martina Daniele.

== Ordine del giorno

Il team ha presentato a #p.azzurro:

- Elenco delle attività svolte in questo periodo,
- Presentazione della pianificazione delle attività per il prossimo periodo.

= Sintesi dell'incontro
L'incontro è stato breve, il team ha presentato le attività svolte e quelle da svolgere nel prossimo periodo.
È stato fatto notare dai membri dell'azienda che gli incontri settimanali pianificati sono finiti e se c'era bisogno di organizzarne altri.
Il team ha domandato se c'era bisogno di includere una sezione per i #glossary("webhook") nella documentazione tecnica.

= Prossimi step

- Unione dei microservizi,
- Fare i test di sistema,
- Continuare la documentazione mancante.


= Decisioni prese
- Aggiunta di altri due incontri settimanali,
- Aggiunta del paragrafo che parla dei #glossary("webhook") nel documento #glossary("Specifica tecnia").