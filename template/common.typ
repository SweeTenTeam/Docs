#import "@preview/tablex:0.0.8": tablex, gridx, hlinex, vlinex, colspanx, rowspanx
#import "@preview/codelst:2.0.1": sourcecode
#import "@preview/cetz:0.2.0": *
//variables for cover
#let g = (
  name: "SweeTenTeam",
  mail: "sweetenteam@gmail.com",
  website: "https://sweetenteam.github.io",
  org: "https://github.com/SweeTenTeam",
  docs: "docs",
  logo: "/images/logos/sweetenteam.png",
  azzurro: "/images/logos/AzzurroDigitale-logo.png",
  unipd: "/images/logos/Universita_Padova_transparent.png",
)

//Diagrammi UML per doc AdR
#let ar = (
  diagUC2: "/images/analisi-dei-requisiti/UC2_InfoJira.png",
  diagUC3: "/images/analisi-dei-requisiti/UCConfluence.png",
  diagUC_storico_chat: "/images/analisi-dei-requisiti/UCStoricoChat.png",
  diagUC_single_messaggio: "/images/analisi-dei-requisiti/UC_view_single_mess.png",
  diagUC_ask_user-ui: "/images/analisi-dei-requisiti/UC0_ask_User-UI.png",
  diagUC_elab_domanda: "/images/analisi-dei-requisiti/UC_elab_domanda.png",
  diacUC_inserimento_domanda: "/images/analisi-dei-requisiti/UC_inserimento_domanda.png",
  diagUC_modifica_domanda:"/images/analisi-dei-requisiti/UC_modifica_domanda.png",
  diagUC_seleziona_mod: "/images/analisi-dei-requisiti/UC_seleziona_mod.png",
)

// tecnologie per AdR

#let tc = (
  docker: "/images/analisi-dei-requisiti/docker.png",
  groq: "/images/analisi-dei-requisiti/groq.png",
  lc: "/images/analisi-dei-requisiti/langchain.png",
  node: "/images/analisi-dei-requisiti/node.png",
  react: "/images/analisi-dei-requisiti/react.png",
  nest: "/images/analisi-dei-requisiti/nest.png",
  nomic: "/images/analisi-dei-requisiti/nomic.png",
  postgres: "/images/analisi-dei-requisiti/postgres.png",
  qdrant: "/images/analisi-dei-requisiti/qdrant.png",
  ts: "/images/analisi-dei-requisiti/ts.png",
  jira: "/images/analisi-dei-requisiti/jira.png",
  confluence: "/images/analisi-dei-requisiti/confl.png",
  ok: "/images/analisi-dei-requisiti/ok.png",
  css: "/images/analisi-dei-requisiti/css.png",
  next: "/images/analisi-dei-requisiti/next.png",
  tlw: "/images/analisi-dei-requisiti/tailwind.png",
)

//Norme di progetto Immagini
#let gn = (
  attore: "/images/norme/attore.png",
  caso_uso: "/images/norme/caso_uso.png",
  sottocasi: "/images/norme/sottocasi.png",
  sistema: "/images/norme/sistema.png",
  attore_caso: "/images/norme/attore_caso.png",
  generalizzazione_attori: "/images/norme/generalizzazione_attori.png",
  inclusione: "/images/norme/inclusione.png",
  estensione: "/images/norme/estensione.png",
  generalizzazione_caso_uso: "/images/norme/generalizzazione_caso_uso.png",
  dipendenza: "/images/norme/dipendenza.png",
  associazione: "/images/norme/associazione.png",
  aggregazione: "/images/norme/aggregazione.png",
  composizione: "/images/norme/composizione.png",
  generalizzazione_classe: "/images/norme/generalizzazione_classe.png",
  interfaccia: "/images/norme/interfaccia.png",
  board: "/images/norme/board.png",
  road: "/images/norme/roadmap.png",
)

//Piano di qualifica
#let gq = (
  AC: "/images/PdQ/AC.svg",
  CO: "/images/PdQ/CO.svg",
  NCR: "/images/PdQ/NCR.svg",
  EAC: "/images/PdQ/EAC.svg",
  QMS: "/images/PdQ/QMS.svg",
  TE: "/images/PdQ/TE.svg",
  RSI: "/images/PdQ/RSI.svg",
  GLP: "/images/PdQ/GLP.svg",
  CV: "/images/PdQ/CV.svg",
  PV: "/images/PdQ/PV.svg",
)

// Immagini per i verbali
#let vb = (
  MI: "/images/verbali/Message.png",
)


//team members
#let p = (
  azzurro: "AzzurroDigitale",
  belenkov: "Valeri Mihail Belenkov",
  benedetti: "Davide Benedetti",
  campagnaro: "Matteo Campagnaro",
  ferazzani: "Orlando Ferazzani",
  fracaro: "Nicolas Fracaro",
  mahdi: "Mouad Mahdi",
  santi: "Andrea Santi",
  vardanega: "Prof. Tullio Vardanega",
  cardin: "Prof. Riccardo Cardin",
  blank: "",
)

//docs
#let d = (
  vGlossario: "v1.0",
  PdQ: "https://sweetenteam.github.io/pdf/documentazione_esterna/rtb/Piano_di_Qualifica_v1.0.0.pdf",
  NdP: "https://sweetenteam.github.io/pdf/documentazione_interna/rtb/Norme_di_Progetto_v1.0.0.pdf",
  Glossario: "https://sweetenteam.github.io/docs/RTB/Glossario",
)
