#import "/template/document.typ": *


#show: project.with(
  title: "Norme Di Progetto",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.0.1",
    "2024-11-20",
    (p.ferazzani),
    (p.campagnaro),
    "Stesura del capitolo: Processi di Supporto - Gestione della qualità",
  ),

  show_images_list: true,
  show_tables_list: true,
)


// PARTE DI MATTEO



= Processi di Supporto
// PARTE DI MATTEO




== Gestione della qualità
=== Scopo
Il processo di Gestione Della Qualità ha come obiettivo principale quello di garantire che i processi, i prodotti e gli artefatti tutti nel ciclo di vita del progetto, siano conformi ai piani specificati, allineati con i requisiti stabiliti e che, in generale, rispettino i canoni di qualità in precedenza decisi.

=== Descrizione
Per garantire e mantenere un certo standard di qualità, il team si impegna ad utilizzare altri processi di supporto, come ad esempio la #glossary("Verifica"), #glossary("Validazione") e revisioni aggiuntive con il #glossary("Proponente").
Una volta stabiliti e definiti gli standard da rispettare nel #glossary("Piano Di Qualifica"), rimane solamente da assicurarsi che questi vengano applicati e rispettati in ogni fase del progetto.
Sono state quindi definite le `best practices` di modo che ogni componente del gruppo lavori seguendo le stesse direttive e linee guida. In questo modo, applicare e rispettare questi standard diventa più semplice e veloce. Per controllare che questi standard siano applicati durante tutta la durata del progetto, ogni prodotto o artefatto è controllato da un #glossary("Verificatore").

=== Piano Di Qualifica
Il documento *Piano di Qualifica* è fondamentale per garantire il rispetto gli standard di qualità richiesti, per il completamento degli obiettivi di questo #glossary("processo") e per soddisfare le richieste e le aspettative degli #glossary("Stakeholders").

Il documento si estende, e non si limita, a:
- Definire gli obiettivi di qualità del progetto;
- Definire le metriche di visione quantitativa;
- Definire test di qualità e di accettazione;
- Fornire una retrospettiva sul progetto;

=== Testing
Il suddetto documento *Piano di Qualifica* definisce obiettivi di qualità sia dei processi che dei prodotti. Le metriche relative forniscono una verifica sugli aspetti di accessibilità, mentre i test garantiscono la qualità generale del software e dei processi.
Le categorie di test sono:
+ #glossary("Test di unità"): verifica il corretto sviluppo e funzionamento di un'unica unità del sistema. Un'unità è definita come un elemento indivisibile e unico del sistema stesso.
+ #glossary("Test di integrazione"): verifica il corretto funzionamento di più unità del sistema, integrate tra loro, ma che cooperano per svolgere un'unica funzione all'interno del sistema.
+ #glossary("Test di sistema"): verifica il funzionamento del sistema nel suo intero. I requisiti funzionali, di vincolo, di qualità e di prestazione precedentemente concordati con il Proponente sono testati e verificati in questa fase.
+ #glossary("Test di accettazione"): verifica il soddisfacimento del Proponente rispetto ai requisiti concordati. Questi test sono eseguiti in presenza del Proponente stesso. Il superamento di questi test garantisce il rilascio del prodotto.
#pagebreak()
=== Metriche

Le metriche di qualità sono fondamentali per garantire il rispetto degli standard di qualità richiesti. Il documento *Piano di Qualifica* fornisce varie metriche utilizzate per misurare e rispettare gli standard di qualità.
Le metriche sono divise in due categorie:
- Processo: PRC
- Prodotto: PRD

Inoltre, le suddette metriche sono identificate come segue:
*#align("M-[Categoria-Metrica]-[Sigla-Identificativa-Metrica]", center)*

Ogni metrica ha:
- un valore minimo (o accettabile): valore sotto il quale il processo o il prodotto misurato diventa inaccettabile
- un valore ammissibile (o ottimale): valore ideale che dovrebbe essere raggiunto dalla metrica
- descrizione: descrizione breve della metrica

//to do: ricontrollare questo paragrafo

=== Aspettative

Il team si aspetta di rispettare in ogni momento gli standard di qualità definiti. Inoltre, il team si aspetta:
- Ottima qualità del prodotto
- Ottima qualità dei processi
- Miglioramento costante
- Test frequenti e predicibili
- Soddisfazione delle richieste e aspettative del Proponente
