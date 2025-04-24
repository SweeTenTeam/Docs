#import "/template/document.typ": *

#set text(
  size: 10.2pt
)

#show: project.with(
  title: "Lettera di Presentazione",
  recipients: (
    p.vardanega,
    p.cardin,
  ),
  changelog: (
    none,
    "2025-04-15",
    p.mahdi,
    p.santi,
    [
      Prima stesura del documento
    ],
  ),
  show_outline: false,
)

Egregio Prof. Tullio Vardanega,
Egregio Prof. Riccardo Cardin,

con la presente il gruppo #g.name intende comunicarVi ufficialmente l'intenzione di sostenere la revisione *PB* del progetto da Voi commissionato, denominato
#align(center)[*BuddyBot - Assistente virtuale*]

proposto dall'azienda #box(image(g.azzurro, width: 5em, height: auto)).

La documentazione fornita è consultabile presso la sezione *3-PB* della repo al seguente link:

#align(center, link("https://github.com/SweeTenTeam/Docs/tree/master/documents"))

Al suo interno si possono trovare i documenti:
- #underline[*`Documentazione_Esterna`*]:
  - _*`Verbali_Esterni`*_;
    - Verbale_Esterno_2025-03-04_v1.0.pdf
    - Verbale_Esterno_2025-03-11_v1.0.pdf
    - Verbale_Esterno_2025-03-18_v1.0.pdf
    - Verbale_Esterno_2025-03-25_v1.0.pdf
    - Verbale_Esterno_2025-04-01_v1.0.pdf
    - Verbale_Esterno_2025-04-08_v1.0.pdf
    - Verbale_Esterno_2025-04-15_v1.0.pdf
  - _*`Analisi_dei_Requisiti_v2.0.0.pdf`*_;
  - _*`Piano_di_Progetto_v2.0.0.pdf`*_;
  - _*`Piano_di_Qualifica_v2.0.0.pdf`*_.
  - _*`Specifica_Tecnica_v1.0.0.pdf`*_.
  - _*`Manuale_Utente_v1.0.0.pdf`*_.
 

- #underline[*`Documentazione_Interna`*]:
  - _*`Verbali_Interni`*_;
    - Verbale_Interno_2025-02-24_v1.0.pdf
    - Verbale_Interno_2025-03-03_v1.0.pdf
    - Verbale_Interno_2025-03-10_v1.0.pdf
    - Verbale_Interno_2025-03-17_v1.0.pdf
    - Verbale_Interno_2025-03-26_v1.0.pdf
    - Verbale_Interno_2025-04-01_v1.0.pdf
    - Verbale_Interno_2025-04-08_v1.0.pdf
  - _*`Glossario_v2.0.pdf`*_;
  - _*`Norme_di_Progetto_v2.0.0.pdf`*_.

Per agevolare la consultazione dei documenti, il gruppo si è munito di un sito web:

#align(center, link("https://sweetenteam.github.io"))

Viene inoltre fornito il *MVP*, approvato dal proponente in data 15/04/2025, disponibile al seguente link:

#align(center, link("https://github.com/SweeTenTeam/BuddyBot"))


Il gruppo #g.name è riuscito a rispettare i costi preventivati di *€12.740,00* consumando l'intero budget. Tuttavia è stato registrato un ritardo di 5 giorni rispetto a quanto preventivato, la data di consegna era infatti prevista per la data 11/04/2024.
Le tabelle orarie sono riportate nel documento *`Piano_di_Progetto_v2.0.0.pdf`*

#linebreak()
Per qualsiasi chiarificazione rimaniamo a Vostra completa disposizione.

#linebreak()
Cordiali saluti,

*SweeTen Team*
