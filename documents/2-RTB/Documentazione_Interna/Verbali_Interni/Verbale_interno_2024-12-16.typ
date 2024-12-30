#import "/template/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-12-16",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2024-12-26",
    (p.fracaro),
    (p.campagnaro),
    "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Discord;
- *Ora di inizio*: 15:00;
- *Ora di fine*: 16:30;
- *Partecipanti*: #p.ferazzani, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.benedetti.

== Ordine Del giorno
 
- Retrospettiva #glossary("sprint") 2;
- Piano di progetto: inserimento automatico dei grafici;
- Analisi dei requisiti: casi d'uso;
- Verbali interni: miglioramento tabella delle decisioni;
- Nuovo sprint: assegnazione nuove issue;


= Retrospettiva #glossary("sprint") 2
Durante la retrospettiva, il team ha analizzato le issue assegnate a ciascun membro, discutendo i problemi riscontrati nel loro completamento. Sono emerse difficoltà legate ai task sull'analisi dei requisiti, che hanno impedito il completamento di queste attività. Inoltre, una revisione della repository ha evidenziato che il verbale interno del 3 dicembre 2024 non era stato redatto; questo compito verrà quindi assegnato come task nel prossimo #glossary("sprint"). Le altre issue sono state completate regolarmente nei tempi previsti, senza ulteriori problematiche.

= Piano di progetto: inserimento automatico dei grafici
#p.campagnaro ha presentato l'implementazione scelta per la visualizzazione dei grafici nel documento del #glossary("Piano di progetto"). Durante la spiegazione, ha illustrato agli altri membri del team il procedimento per inserire automaticamente i grafici nel documento, garantendo un processo efficiente e uniforme.

= Analisi dei requisiti: casi d'uso
Dopo aver discusso delle difficoltà riscontrate nell'individuazione e nella rappresentazione dei casi d'uso, il team ha deciso di proseguire il lavoro su queste issue anche durante lo #glossary("sprint") 3. L'obiettivo è completarle il prima possibile, dopo un incontro con il professor Cardin per chiarire i dubbi emersi. Una volta risolte queste issue, i nuovi membri assegnati ai task relativi all'analisi dei requisiti potranno avviare il lavoro previsto per lo sprint 3.


= Verbali interni: miglioramento della tabella delle prossime attività
Il team ha discusso il miglioramento della tabella delle prossime attività all'interno dei verbali interni. In particolare, è stato deciso di aggiungere un link alle issue di #glossary("github") per ogni attività, al fine di facilitare la consultazione e il tracciamento.

= Decisioni prese

- Aggiungere i link alle issue di #glossary("github") nella tabella delle prossime attività per facilitarne la consultazione;
- Definire il metodo per l'inserimento automatico dei grafici nel #glossary("Piano di progetto");
- Continuare a lavorare sulle issue relative all'analisi dei requisiti dello sprint 2 nel prossimo sprint;
- Assegnare nuovi ruoli e definire i compiti per la creazione delle #glossary("issue") per il terzo #glossary("sprint");
- Nomina di #p.fracaro come nuovo responsabile del team;

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

    [#issue_to_link("Docs",93)], [Stesura della sezione relativa allo #glossary("sprint") 2 del #glossary("piano di progetto")], [#p.benedetti],

    [#issue_to_link("Docs",94)], [Completare la stesura del #glossary("Piano di qualifica")], [#p.santi, #p.campagnaro], 

    [#issue_to_link("Docs",95)], [Completare la stesura di tutti i casi d'uso], [#p.belenkov, #p.ferazzani, #p.fracaro],

    [#issue_to_link("Docs",96)], [Stesura verbale interno del 3 Dicembre 2024], [#p.mahdi],
    
    [#link("https://github.com/SweeTenTeam/BuddyBot---POC/issues/6")[POC6]], [Integrazione recupero informazioni da #glossary("Jira") e #glossary("Confluence")], [#p.mahdi],
  ),
  caption: "Tabella delle prossime attività"
)
