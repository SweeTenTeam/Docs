#import "/template/document.typ": *

#show: project.with(
  title: "Verbale Esterno del 2025-01-14",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-01-15",
    (p.mahdi),
    (p.benedetti),
    [
      Stesura verbale
    ],
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione
- *Luogo*: Riunione su Google Meet;
- *Ora di inizio*: 17:00;
- *Ora di fine*: 17:35;
- *Partecipanti*: #p.belenkov, #p.santi, #p.mahdi, #p.fracaro, #p.benedetti, #p.campagnaro, #p.ferazzani.
- *Partecipanti Esterni*: Martina Daniele, Nicola Boscaro. 

== Ordine del giorno
Abbiamo presentato ad #p.azzurro :
- Il resoconto del lavoro svolto durante il quarto sprint;
- Una dimostrazione live del #glossary("PoC") finale; 
- Domande e organizzazione del prossimo #glossary("Sprint").


= Sintesi dell'incontro
- L'incontro è stato di durata contenuta con una dimostrazione live del #glossary("PoC") finale con l'estrazione di informazioni da documenti diversi e spiegazioni delle migliorie fatte per avere risposte più accurate. Inoltre il team ha chiarito dei dubbi riguardanti il retrieval dei dati e su come il sistema gestisce le domande fuori contesto o poco specifiche.


= Domande effettuate e relative risposte
== Dati richiesti
- Il team ha chiesto se ci fossero dati specifici di cui avevano bisogno dalle diverse applicazioni, soprattutto per github che ne ha molti, e gli abbiamo consegnato una lista con i diversi dati che è possibile prendere con le API, suddivisi per casi d'uso. Ci è stato risposto che ci daranno un feedback il prima possibile togliendo o aggiungendo alla lista i dati necessari.


= Prossimi step
- Prossimo incontro con l'azienda per iniziare l'#glossary("MVP"), fissato per le ore 17:00 del 2025-02-04.


= Decisioni prese
- Poiché non è possibile procedere con il progetto prima della revisione del #glossary("RTB"), prevista per l'ultima settimana di gennaio, i prossimi due incontri settimanali sono stati annullati;
- Abbiamo deciso di mantenere una cadenza bisettimanale per gli incontri anche durante lo sviluppo dell'#glossary("MVP"), anziché settimanale.