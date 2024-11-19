#import "/template/document.typ": *

#show: project.with(
  title: "Verbale Interno 2024-11-18",
  recipients: (p.vardanega, p.cardin),
  changelog: ("0.1", "2024-11-18", (p.ferazzani), (p.fracaro), "Stesura del verbale",),
)

= Contenuti del verbale

== Informazioni sulla riunuione

- *Luogo*: Discord
- *Ora di inizio*: 15:30
- *Ora di fine*: 17:00
- *Partecipanti*: #p.ferazzani, #p.belenkov, #p.santi, #p.mahdi, #p.fracaro.

== Ordine Del giorno

- Organizzazione milestone
- Organizzazione primi 6 sprint
- Specifiche #glossary("Proof of Concept")
- Tecnologie PoC
- Presentazione per AzzurroDigitale
- Suddivisione dei documenti per la stesura

= Organizzazione delle Milestones

Il team ha discusso sulla possibile organizzazione delle milestone per il tracciamento delle #glossary("GitHub") #glossary("issues").
Le due possibli soluzioni a cui il gruppo è giunto sono le seguenti:
- Creazione di una milestone per #glossary.with()("sprint") (bisettimanali). Ad ogni milestone sono collegate più issue
  riguardanti diversi argomenti. Questo è utile per tracciare l'andamento di uno specifico periodo.
- Creazione di una milestone per #glossary("feature") ad esempio una milestone per ogni tipo di documento (eccetto i
  verbali). Questo permette di tener traccia l'avanzamento di un particolare file/feature.

= Organizzazione primi 6 sprint

In vista del primo incontro con il #glossary("proponente") per la Raccolta delle Specifiche, che si terrà il giorno
2024-11-19 su Google Meet, il team ha stabilito i vari obiettivi per ogni sprint relativi all'azienda proponente.

= Specifiche PoC (Proof of Concept)

Per la prima raccolta specifiche il team si è impegnato ad iniziare lo studio delle tecnologie necessarie allo sviluppo
del PoC e a stilare le specifiche ritenute più adatte ad un PoC. In particolare:
+ Utilizzo #glossary("LLM") #glossary("Api") tramite #glossary("Groq Cloud")
+ Implementazione #glossary("database vettoriale") in locale tramite #glossary("Docker")
+ Implementazine di un database in locale per il salvataggio delle risposte precedenti
+ Visualizzazione di 1 risposta precedente
+ Recupero statico di 1 file specifico all'interno di una repository di GitHub e salvataggio all'interno del DB vettoriale
+ Recupero statico di 1 pagina specifica all'interno da #glossary("Confluence") e salvataggio all'interno del DB
  vettoriale
+ Recupero statico di 1 issue specifica da #glossary("Jira") e salvataggio all'interno del DB vettoriale
+ Funzionamento ed interazione da terminale
#pagebreak()

= Tecnologie PoC

Il team, durante un'attività asincrona di studio, ha ritenuto opportune per lo svolgimento del progetto le seguenti
tecnologie:
- #glossary("Langchain")
- Groq Cloud API
- Node.js
- #glossary("Qdrant")
- #glossary("Postgres")
- Github JS library (Octokit)
- Jira JS library (jira-client)
- Confluence JS library (confluence-api)

Queste tecnologie sono quelle individuate attualmente, ma le tecnologie utilizzabili non sono limitate a queste e
potrebbero variare nel tempo.

= Presentazione AzzurroDigitale

Il team ha poi preparato una breve presentazione per racchiudere quanto riportato sopra ed esporlo più facilmente ad #box(image(g.azzurro, width: 5em, height: auto)).

= Suddivisione dei Documenti

Il team ha deciso, dopo la discussione sulla possibile organizzazione delle milestone, di suddividere i documenti più
grandi in sotto-problemi, di modo che la loro stesura sia più semplice e tracciabile.

= Decisioni prese

- Suddivisione delle prossime 10 settimane in sprint
- Organizzazione delle milestone
- Lista di tecnologie e specifiche per il PoC
- Suddivisione dei documenti in sotto-problemi

