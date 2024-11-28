#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-11-28",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2024-11-28",
    (p.ferazzani),
    (p.campagnaro),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord
- *Ora di inizio*: 15:00
- *Ora di fine*: 16:30
- *Partecipanti*: #p.ferazzani, #p.belenkov, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.benedetti.

= Ordine Del giorno
- Chiarimenti sugli attori del sistema
- Discussione delle decisioni redatte nel documento Norme di progetto
- Sezione Prossime attività da aggiungere nei prossimi verbali interni
- Modifica procedura creazione delle #glossary("issue")
- Modifica procedura di approvazione dei documenti
- Modifica #glossary("Pull Request")
// - Backlog ?
- Creazione documento glossario e pianificazione incontri
- Utilizzo di Jira
- Nuovo Responsabile

== Chiarimenti sugli attori del sistema

L'incontro si è aperto con una discussione se l'#glossary("LLM" ) fosse o meno un attore del sistema. Dopo un'attenta analisi, basata anche sulle slide del corso e in particolare l'esempio del LogIn con servizi terzi come Facebook, si è deciso che l'#glossary("LLM") è un attore esterno in quanto risiede su un sistema separato con cui il team non può interagire se non attraverso delle richieste.

== Discussione delle decisioni redatte nel documento Norme di progetto

//Matte my glorious king.
l team ha deciso di adottare un approccio collaborativo e iterativo per la creazione e la gestione del documento Norme di Progetto. Inizialmente, il documento sarà redatto in modo completo, includendo tutte le linee guida, i processi e le norme necessari per una gestione efficiente e allineata agli obiettivi del progetto. Tuttavia, il team ha concordato che questo documento non sarà definitivo, ma sarà sottoposto a revisioni continue. Le modifiche verranno discusse e valutate durante gli incontri periodici, garantendo che il documento rimanga sempre aggiornato e adatto alle esigenze del progetto.

== Sezione Prossime attività da aggiungere nei prossimi verbali interni

A partire dal prossimo sprint, il responsabile si impegna a creare tutte le issue previste per il prossimo periodo e a riportarle nella sezione Prossime attività, del verbale interno dell'incontro, in una tabella strutturata come segue:
#table(
  columns: (1fr, 1fr, 1fr),
  align: horizon + center,
  table.header(
    [*Issue #sym.hash*],
    [*Descrizione*],
    [*Assegnatari*],
  ),

  issue_to_link("Docs", 29), "Norme di Progetto - Processi di Supporto (Documentazione)", p.campagnaro,
)

== Modifica procedura creazione delle #glossary("issue")

Per rendere la divisione dei compiti più semplice e diretta, il team ha deciso di cambiare la procedura di creazione delle issue. Ora, il responsabile si occuperà di creare tutte le issue specifiche necessarie per lo sprint in corso e di assegnarle ai membri del team. Starà poi all'assegnatario se suddividere ulteriormente la issue in 'sotto-issue'. Fino ad adesso invece, il responsabile creava una issue generica e la assegnava ad un membro del team che poi la suddivideva in issue più specifiche.

Ad esempio:

- Responsabile crea issue `Norme di Progetto`
- La assegna ad X
- X crea issue `Processi di Supporto`

Con la nuova procedura invece:

- Responsabile crea issue `Norme di Progetto - Processi di Supporto`
- La assegna ad X
- X, se lo ritiene opportuno, crea sotto-issue `Documentazione`

== Modifica procedura di approvazione dei documenti

Il team ha deciso di modificare la procedura di approvazione dei documenti. Ora, il responsabile si occuperà di approvare i documenti, mentre il verificatore si occuperà di verificare che il documento sia conforme alle norme di progetto. L'approvazione da parte del responsabile avviene solo dopo che il documento è stato verificato e in vista di una consegna.

== Modifica #glossary("Pull Request")

Il team ha deciso di modificare la procedura di creazione delle #glossary("Pull Request"). Ora, le #glossary("Pull Request") non verranno più aggiunte alla Project Board, ma verranno solo collegate alla issue interessata, in modo da evitare confusione, sovraccarico di informazioni e duplicati nella board.

== Creazione documento glossario e pianificazione incontri

Per semplificare la sua modifica, il team ha creato un documento condiviso sul drive dove man mano vengono aggiunte tutte le parole e le loro definizioni che verranno poi inserite nel glossario. Questo perché la modifica del glossario è un'attività che richiede tempo e attenzione e viene effettuata solamente alla fine di ogni sprint. Inoltre, viene modificato anche il glossario presente sul sito web del progetto.
È stato anche creato un documento condiviso sul drive per la pianificazione degli incontri, in modo che tutti i membri del team possano visualizzare gli incontri programmati, e il relativo ordine del giornio e prepararsi di conseguenza.

== Utilizzo di Jira

Di comune accordo, il team ha deciso di non utilizzare Jira per la gestione delle issue e delle attività del progetto. Questo perché Jira è un software non adatto alle esigenze del team. Inoltre, il team ha già una buona organizzazione e gestione delle issue tramite GitHub. Jira verrà utilizzato puramente per il fine del progetto di recuperare informazioni attraverso le #glossary("API").

== Nuovo Responsabile

A fine meeting, il team ha nominato il nuovo responsabile, #p.mahdi, che ha accettato l'incarico facente funzione dal prossimo diario di bordo, prendendo il posto di #p.ferazzani.

Il Responsabile dovrà:
- Creare le issue per lo sprint in corso
- Approvare i documenti
- Coordinare il team
- Organizzare le riunioni
- Redigere i verbali interni ed esterni

= Decisioni prese

//Fammi sapere come vuoi scritte le decisioni in modo che siano conformi alle norme di progetto.

- Il #glossary("LLM") è un attore esterno del sistema.
- Gestione dinamica e aggiornamento delle Norme di Progetto dopo la stesura iniziale
- Sezione Prossime attività da aggiungere nei prossimi verbali interni
- La creazione delle issue specifiche sarà compito del responsabile.
- Il responsabile approverà ogni documento.
- Le Pull Request non verranno più aggiunte alla Project Board.
- Creazione di un documento condiviso per il glossario e la pianificazione degli incontri.
- Il team non utilizzerà Jira per la gestione delle issue.
- #p.mahdi è il nuovo responsabile del progetto.
