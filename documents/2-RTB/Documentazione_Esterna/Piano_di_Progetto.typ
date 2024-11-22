#import "/template/document.typ": *

#show: project.with(
  title: "Piano di Progetto",
  managers: p.fracaro, //a che serve managers?
  recipients: (p.vardanega, p.cardin, p.azzurro,),
  changelog: ("0.0.1", "2024-11-21", p.fracaro, p.benedetti, [
    Struttura iniziale del documento
  ]),
  show_images_list: false,
  show_tables_list: false,
  outline_depth: 3,
)

= *Introduzione*
== Scopo del documento
== Scopo del prodotto
== Glossario
== Riferimenti
=== Riferimenti normativi
=== Riferimenti informativi
== Scadenze
= *Analisi dei rischi*
== Rischi personali
== Rischi organizzativi interni ed esterni 
=== Interni
=== Esterni
== Rischi tecnologici/software