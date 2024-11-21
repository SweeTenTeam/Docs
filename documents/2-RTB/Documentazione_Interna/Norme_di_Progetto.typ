#import "/template/document.typ": *


#show: project.with(
  title: "Norme Di Progetto",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    "0.0.2",
    "2024-11-21",
    (p.campagnaro),
    (p.ferazzani),
    "Stesura del capitolo: Introduzione",
    "0.0.1",
    "2024-11-20",
    (p.ferazzani),
    (p.campagnaro),
    "Stesura del capitolo: Processi di Supporto - Gestione della qualità",
  ),

  show_images_list: true,
  show_tables_list: true,
)

= Introduzione
== Scopo del documento
Il presente documento ha lo scopo di definire le linee guida operative che il gruppo adotterà per la realizzazione del progetto didattico. In questo documento sono raccolte le procedure da seguire per ogni #glossary("processo") e attività.
Per la realizzazione di questo documento è prevista la modifica e l'aggiunta di nuove indicazioni in base alle decisioni che verranno prese dal gruppo durante lo svolgimento del progetto.
Tutti i membri del gruppo si impegnano a consultare regolarmente questo documento e ad attenersi scrupolosamente alle procedure in esso descritte, al fine di garantire un approccio professionale, coerente e uniforme nello svolgimento delle attività.

== Scopo del progetto
Il team #p.azzurro utilizza quotidianamente diverse piattaforme per redigere documentazione e consultare informazioni essenziali per i progetti, questo può spesso comportare inefficienze.
L'obiettivo del progetto Buddybot è lo sviluppo di una piccola piattaforma web con un’interfaccia #glossary("chat") per interagire con l’#glossary("IA") che funga da assistente virtuale.
Questo deve essere in grado di ottenere in modo facile e veloce informazioni dalle fonti specificate e di fornirle in base alle domande poste tramite #glossary("chat") in linguaggio naturale. Tali informazioni devono essere aggregate e centralizzate da diverse fonti tra cui #glossary("GitHub"), #glossary("Confluence") e #glossary("Jira") permettendo un accesso facile
e immediato con il fine di migliorare la produttività e dare supporto all’#glossary("OnBoarding").

== Glossario
Per garantire chiarezza e coerenza nella terminologia utilizzata nei documenti, è stato deciso di creare un glossario contenente le definizioni dei termini. Questo strumento raccoglierà tutti i termini specifici del dominio d’uso, accompagnati dai rispettivi significati. L’inclusione di un termine nel glossario sarà segnalata attraverso #glossary("questo stile") dedicato.

== Riferimenti
=== Riferimenti normativi
- `Norme di Progetto v1.0.0`
-  Documentazione e presentazione del capitolato d'appalto C9: BuddyBot \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9.pdf") (Ultimo accesso: 2024-11-21) \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9p.pdf") (Ultimo accesso: 2024-11-21)
- Regolamento del progetto didattico: \ #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf") (Ultimo accesso: 2024-11-21)

=== Riferimenti informativi
- I processi di ciclo di vita del software \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/T02.pdf") (Ultimo accesso: 2024-11-21)
- `Glossario v1.0.0`: \ #link("https://sweetenteam.github.io/docs/RTB/Glossario")
- Documentazione #glossary("git"): \
  #link("https://git-scm.com/docs") (Ultimo accesso: 2024-11-21)
- Documentazione #glossary("GitHub"): \ 
  #link("https://docs.github.com/en") (Ultimo accesso: 2024-11-21)
- Documentazione #glossary("Typst") \ 
  #link("https://typst.app/docs/") (Ultimo accesso: 2024-11-21)

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
