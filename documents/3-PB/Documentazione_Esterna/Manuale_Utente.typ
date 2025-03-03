#import "/template/document.typ": *

#show: project.with(
  title: "Manuale Utente",
  managers: p.campagnaro,
  recipients: (
    p.vardanega,
    p.cardin,
    p.azzurro,
  ),
  changelog: (
    "0.0.1",
    "2025-03-01",
    p.campagnaro,
    p.santi,
    [
      Stesura del capitolo: Introduzione
    ],
  ),
  show_images_list: false,
  show_tables_list: false,
  figure_breakable: false,
)

= *Introduzione*
== Scopo del documento
Il presente manuale è concepito per fornire un supporto agli utenti nell'utilizzo efficace del software, consentendo loro di sfruttare appieno tutte le sue #glossary("funzionalità"), al fine di garantire un'esperienza ottimale. In tal modo, si vuole informare l'amministratore pubblico dei requisiti minimi da soddisfare per poter usufruire del prodotto, degli step necessari per la sua installazione e di tutte le funzionalità a sua disposizione. Poichè l'installazione del software è gestita da personale tecnico specializzato, questo manuale si focalizza principalmente sui passaggi necessari per utilizzare il software e non esclusivamente sulle istruzioni dettagliate per l'installazione.

== Scopo del prodotto
Lo scopo del progetto è la realizzazione di un assistente virtuale sotto forma di #glossary("chatbot") in grado di assistere gli utenti, rispondendo alle loro domande in linguaggio naturale. Il #glossary("chatbot") garantisce un accesso rapido alle informazioni interne dell'azienda, aggregando i dati provenienti dalle piattaforme #glossary("Jira"), #glossary("Github") e #glossary("Confluence") ed elaborando questi ultimi con l'uso dell'intelligenza artificiale per dare risposte chiare. Questo strumento sarà utile non solo ai membri già attivi dell'azienda per tagliare i tempi lunghi di ricerca manuale di una determinata informazione, ma anche per il processo di #glossary("onboarding") dei nuovi arrivati rispondendo alle domande più frequenti e guidandoli nel processo di apprendimento delle risorse aziendali senza il bisogno di una figura di supporto.


== Glossario
Per garantire chiarezza e coerenza nella terminologia utilizzata nei documenti, è stato deciso di creare un glossario contenente le definizioni dei termini. Questo strumento raccoglierà tutti i termini specifici del dominio d'uso, accompagnati dai rispettivi significati. L'inclusione di un termine nel glossario sarà segnalata attraverso *#glossary("questo stile")* dedicato.

== Riferimenti
=== Riferimenti normativi
- Norme di Progetto v2.0.0;
- Presentazione e documentazione del capitolato d'appalto C9 - BuddyBot: \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9.pdf") (Ultimo accesso: 2025-03-01); \
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Progetto/C9p.pdf") (Ultimo accesso: 2025-03-01);

- Regolamento di progetto didattico:\
  #link("https://www.math.unipd.it/~tullio/IS-1/2024/Dispense/PD1.pdf") (Ultimo accesso: 2025-03-01);

=== Riferimenti informativi
- Glossario v2.0.0;
- Analisi dei Requisiti v2.0.0;
- Specifica Tecnica v1.0.0.
