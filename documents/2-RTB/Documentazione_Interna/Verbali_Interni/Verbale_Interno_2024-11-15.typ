#import "//templates/document.typ": *

#show: project.with(
  title: "Verbale interno del 2024-11-15",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1", "2024-11-15", (p.mahdi), (p.ferazzani), "Stesura del verbale",
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Discord;
- *Ora di inizio*: 15:00;
- *Ora di fine*: 17:30;
- *Partecipanti*: #p.ferazzani, #p.belenkov, #p.santi, #p.mahdi, #p.fracaro, #p.benedetti, #p.campagnaro.

== Ordine del giorno
- Riorganizzazione della documentazione;
- Discussione sui file da iniziare;
- Supporto al gruppo.

= Riorganizzazione della documentazione

Il team ha deciso di riorganizzare la repository per avviare la documentazione relativa all'RTB. Inoltre, abbiamo iniziato a testare un nuovo workflow per la compilazione dei documenti utilizzando Typst, in modo da rendere il processo più fluido e efficiente.

= Discussione sui file da inizire

Abbiamo avuto una conversazione approfondita per stabilire quali documenti iniziare a redigere per l'RTB e abbiamo discusso dell'incontro programmato per la prossima settimana con l'azienda, decidendo insieme le prime milestone da raggiungere. Per facilitare il lavoro, abbiamo anche pensato di suddividere queste milestone in issue su GitHub, in modo da tenere tutto organizzato e sotto controllo.

= Supporto al gruppo

Due membri del gruppo hanno simulato dal vivo la creazione e la verifica di un documento. Durante la sessione è stato mostrato come creare una pull request per la verifica del documento e come procedere con la sua approvazione, in modo da poterlo successivamente spostare nel branch master. È stata un'ottima opportunità per chiarire i passaggi e rispondere a eventuali domande.

= Decisioni prese

- Decisione dei ruoli per il primo sprint e cosa presentare per il fururo incontro con l'azienda;
- Passaggio da Trello a github e jira per l'assegnazione dei compiti su consiglio dell'azienda;
- Divisione del lavoro da fare tra i diversi mebri del gruppo con l'uso delle issue di github. 
