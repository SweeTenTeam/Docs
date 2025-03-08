#import "/template/document.typ": *

#show: project.with(
  title: "Verbale Esterno del 2025-03-04",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.1",
    "2025-03-08",
    (p.belenkov),
    (p.blank),
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
- *Partecipanti Esterni*: Nicola Boscaro, Martina Daniele.

== Ordine del giorno

Il team ha presentato a #p.azzurro:

- Progettazione dell'#glossary("Architettura") del #glossary("MVP")
- Domande e consigli sulle scelte progettuali fatte dal team.
- Presentazione della timeline a #p.azzurro per la revisione del #glossary("PB")

= Sintesi dell'incontro

L'incontro ha trattato principalmente l'architettura del #glossary("MVP") e della timeline in vista della revisione del #glossary("PB"). Sono stati risolti alcuni dubbi sorti in fase progettuale e #p.azzurro ha consigliato una delle due versioni dello schema generale, rassicurando però della correttezza di entrambe.
È stata presentata la timeline e la suddivisione in sprint che è stata in seguito approvata da #p.azzurro.

= Prossimi step

- Progettazione in dettaglio dei microservizi individuati nel #glossary("MVP");

= Decisione prese

Il team, dopo i feedback di #p.azzurro, ha deciso di iniziare la progettazione di dettaglio dei singoli microservizi individuati precedentemente, suddividendosi a coppie e lavorando in maniera asincrona rispetto alle altre coppie. 
