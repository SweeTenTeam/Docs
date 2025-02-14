#import "/template/document.typ": *

#show: project.with(
  title: "Verbale Esterno del 2025-01-14",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  show_images_list: true,
  changelog: (
    "0.1",
    "2025-02-14",
    (p.ferazzani),
    (p.mahdi),
    [
      Stesura verbale
    ],
  ),
)

= Contenuti del verbale

== Informazioni sulla riunione

- *Luogo*: Riunione su Google Meet;
- *Ora di inizio*: 17:00;
- *Ora di fine*: 17:25;
- *Partecipanti*: #p.belenkov, #p.santi, #p.mahdi, #p.fracaro, #p.campagnaro, #p.ferazzani.
- *Partecipanti Esterni*: Nicola Boscaro.

== Ordine del giorno

Il team ha presentato a #p.azzurro:

- Il resoconto della prima parte della revisione #glossary("RTB");
- Una dimostrazione live della bozza di design della #glossary("GUI")
- Domande e consigli su eventuali teconlogie migliori rispetto a quelle individuate dal team.

= Sintesi dell'incontro

L'incontro è stato molto produttivo, e #p.azzurro ha apprezzato il lavoro svolto dal team. Ha suggerito alcune modifiche minori alla #glossary("GUI") e ha consigliato di rivedere la `type interface` del `message` in quanto l'utilizzo di `id` incrementali potrebbe creare problemi in caso di utilizzo concorrente della piattaforma.

#figure(
  image(vb.MI, width: 30em, fit: "contain"),
  caption: "Implementazione dell'interfaccia del Messaggio",
)

= Prossimi step

- Attesa del feedback da parte del #p.cardin riguardo l'#glossary("RTB");
- Progettazione dell'#glossary("Architettura") del #glossary("MVP");
- Suddivisione in sprint del lavoro da svolgere
- Presentazione della timeline a #p.azzurro per la revisione;
- Revisione della `type interface` del `message` e della #glossary("GUI");

= Decisione prese

Il team, dopo i feedback del #p.cardin, ha deciso di fare ulteriori ricerche per le tecnologie da utilizzare per lo sviluppo dell'#glossary("MVP"). Al momento, dato che il team è in attesa del riscontro finale riguardante la prima parte dell'#glossary("RTB"), i compiti da svolgere sono terminati e l'azienda #p.azzurro conviene con il team riguardo le decisioni prese.
