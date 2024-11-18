#import "/template/common.typ": *
//template for document
#let getSurname(a) = {
  return a.split().at(-1)
}

#let sortBySurname(a) = {
  let a = (a,).flatten().dedup()
  if a.last() == false {
    a.pop()
    return a
  }
  return a.sorted(key: getSurname)
}

#let project(
  title: none,
  managers: none,
  recipients: none,
  group_is_recipient: false,
  changelog: none,
  show_outline: true,
  outline_depth: none,
  show_images_list: false,
  show_tables_list: false,
  heading_numbers: "1.1)",
  body,
) = {
  set page(fill: rgb(209, 197, 174))

  set text(font: "Linux Libertine", lang: "it")
  set heading(numbering: heading_numbers)
  set page(numbering: "1 / 1")
  show link: underline
  show figure: set block(breakable: true)

  let date = changelog.at(1, default: none);
  let version = changelog.at(0, default: none);
  let document_title = title
  if version != none {
    document_title += " - v" + version
  }
  set document(author: g.name, title: document_title, date: none)

  let keep(r) = {
    changelog.enumerate().filter(i => r.contains(i.first())).map(i => i.last())
  }
  let changelog_header = ([*Versione*], [*Data*], [*Autori*], [*Verificatori*], [*Dettaglio*])
  let r_editors = array.range(2, changelog.len(), step: changelog_header.len())
  let r_verifiers = r_editors.map(i => i + 1)
  let editors = keep(r_editors)
  let verifiers = keep(r_verifiers)

  set align(top + center)
  image(g.logo, width: 60%)

  set align(center + horizon)
  gridx(
    text(2.3em, weight: 700, title) + [\ #v(1.5em)],
    align: center,
    text(1.5em, weight: 600, date),
    if version != none {
      text(1.5em, weight: 600, [V#version])
    },
    text(1.1em, link("mailto:" + g.mail)),
    link(g.website),
  )

  set align(bottom)
  image(g.unipd, width: 20%)

  gridx(
    // columns: (1fr, 1fr),
    columns: 2,
    align: (right, left),
    row-gutter: 0.8em,
    [Destinatari],
    vlinex(),
    recipients.join([\ ]),
    [Redattori],
    sortBySurname(editors).join([\ ]),
    [Verificatori],
    sortBySurname(verifiers).join([\ ]),
  )

  set page(fill: rgb(255, 255, 255))

  pagebreak()

  set page(header-ascent: 15%, header: gridx(
    columns: (1fr, 1fr),
    align: (left, horizon + right),
    image(g.logo, width: 3.5em),
    title,
    hlinex(stroke: 0.07em),
  ))

  set align(start + top)

  if version != none and changelog.len() > 2 {
    changelog = changelog_header + changelog;
    heading(outlined: false, numbering: none, [Registro delle modifiche])
    table(
      fill: (_, row) => if calc.odd(row) { luma(84.31%) } else { white },
      inset: 0.5em,
      columns: (auto,) * 4 + (1fr,),
      ..changelog.map(el => text(size: 0.8em)[
        #par(justify: false, if type(el) == array {
          sortBySurname(el).join([,\ ])
        } else {
          el
        })
      ]),
    )
    pagebreak()
  }

  if show_outline == true {
    outline(depth: outline_depth, indent: 1em)
    pagebreak()
  }

  if show_images_list == true {
    outline(title: "Lista della immagini", target: figure.where(kind: image))
  }
  if show_tables_list == true {
    outline(title: "Lista delle tabelle", target: figure.where(kind: table))
  }
  if show_images_list == true or show_tables_list == true {
    pagebreak()
  }

  show heading: it => {
    if heading_numbers != none {
      counter(heading).display() + " "
    }
    it.body
    v(0.3em)
  }
  set align(start + top)
  set par(justify: true)
  set text(hyphenate: true)
  body
}

#let issue_to_link(repo, id) = {
  return link(g.org + "/" + repo + "/issues/" + str(id))[#repo \##id]
}

#let tasks(t) = {
  let tasks_header = ([*ID*], [*Dettaglio*], [*Assegnatari*])
  let map_issue(r, t) = {
    t.enumerate().map(
      a => if r.contains(a.first()) and type(a.last()) == array { return issue_to_link(a.last().first(), a.last().last()) } else { a.last() },
    )
  }
  let r = array.range(0, t.len(), step: tasks_header.len())
  t = tasks_header + map_issue(r, t)

  align(center, block(width: 95%, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto, 1fr, auto),
    align: left,
    ..t.map(el => text(size: 0.9em)[
      #par(justify: false, if type(el) == array {
        sortBySurname(el).join([,\ ])
      } else {
        el
      })
    ]),
  )))
}

#let risks(r) = {
  let risks_header = (([*Descrizione*], [*Probabilità*], [*Pericolosità*], [*Rilevamento*], [*Piano di contingenza*]))
  r = risks_header.zip(r).flatten()

  align(center, block(width: 95%, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto, 1fr),
    align: left,
    ..r.map(el => text(size: 0.9em)[
      #par(justify: false, el)
    ]),
  )))
}

#let requirements(color, r) = {
  let requirements_header = (([*ID Requisito*], [*Descrizione*], [*Fonti*]))
  r = requirements_header + r

  align(center, block(width: 95%, table(
    fill: (_, row) => if row == 0 { rgb(color) } else { white },
    inset: 0.8em,
    columns: (auto, 1fr, auto),
    align: (x, _) => (horizon, left, horizon).at(x),
    ..r.map(el => text(size: 0.9em)[
      #par(justify: false, el)
    ]),
  )))
}

#let tracking1(t) = {
  let tracking_header = (([*ID Requisito*], [*Fonte*]))
  t = tracking_header + t

  align(center, block(width: 60%, table(
    fill: (_, row) => if row == 0 { luma(215) } else { white },
    inset: 0.8em,
    columns: (1fr, 1fr),
    align: horizon,
    ..t.map(el => text(size: 0.9em)[
      #par(justify: false, el)
    ]),
  )))
}

#let tracking2(t) = {
  let tracking_header = (([*Fonte*], [*ID Requisiti*]))
  t = tracking_header + t

  align(center, block(width: 60%, table(
    fill: (_, row) => if row == 0 { luma(215) } else { white },
    inset: 0.8em,
    columns: (1fr, 1fr),
    align: horizon,
    ..t.map(el => text(size: 0.9em)[
      #par(justify: false, el)
    ]),
  )))
}

#let improvement(color, r) = {
  let requirements_header = (([*Fase*], [*Problema Rilevato*], [*Contromisura*]))
  r = requirements_header + r

  align(center, block(width: 95%, table(
    fill: (_, row) => if row == 0 { rgb(color) } else { white },
    inset: 0.8em,
    columns: (auto, auto, auto),
    align: (x, _) => (horizon, left, left).at(x),
    ..r.map(el => text(size: 0.9em)[
      #par(justify: false, el)
    ]),
  )))
}

#let improvementrole(color, r) = {
  let requirements_header = (([*Fase*], [*Ruolo*], [*Problema Rilevato*], [*Contromisura*]))
  r = requirements_header + r

  align(center, block(width: 95%, table(
    fill: (_, row) => if row == 0 { rgb(color) } else { white },
    inset: 0.8em,
    columns: (20%, 20%, auto, auto),
    align: (x, _) => (horizon, horizon, left, left).at(x),
    ..r.map(el => text(size: 0.9em)[
      #par(justify: false, el)
    ]),
  )))
}

#let improvementtool(color, r) = {
  let requirements_header = (([*Fase*], [*Strumento*], [*Problema Rilevato*], [*Contromisura*]))
  r = requirements_header + r

  align(center, block(width: 95%, table(
    fill: (_, row) => if row == 0 { rgb(color) } else { white },
    inset: 0.8em,
    columns: (20%, 18%, auto, auto),
    align: (x, _) => (horizon, horizon, left, left).at(x),
    ..r.map(el => text(size: 0.9em)[
      #par(justify: false, el)
    ]),
  )))
}

#let summary(t) = {
  let tracking_header = (([*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*]))
  t = tracking_header + t

  align(center, block(width: 80%, table(
    fill: (_, row) => if row == 0 { luma(215) } else { white },
    inset: 0.8em,
    columns: (1fr, auto, auto, auto),
    align: horizon,
    ..t.map(el => text(size: 0.9em)[
      #par(justify: false, el)
    ]),
  )))
}

#let glossary(word) = {
  let t = underline(word)
  if word != "questo stile" {
    t = link(g.website + "/docs/RTB/Glossario" + "#" + lower(word.slice(0).replace(" ", "-")))[*#word*]
  }

  text(fill: rgb("#a99c84"), style: "italic")[#t*#sub("G")*]
}

#let neg(word)= {
  text(fill: rgb("#D2042D"))[(*#word*)]
}

#let pos(word)= {
  text(fill: rgb("#437c17"))[(*#word*)]
}

#let consuntivo(r) = {
  let period_header = ("", "Res.", "Amm.", "Ver.", "Ana.", "Proget.", "Program.", "Totali per persona").map(r => [*#r*])
  let people = (
    (p.amadori, p.bettin, p.bonavigo, p.bulychov, p.fabbian, p.furno, p.vedovato).map(n => n.split().last()) + ("Ore totali per ruolo",)
  ).map(el => [*#el*])
  r = period_header + people.zip(r).flatten()

  align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto,) * 8,
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  ))
}

#let costi(r) = {
  let costs_header = ([*Ruolo*], [*Ore*], [*Costo*], [*Differenza*])
  let people = (
    "Responsabile",
    "Amministratore",
    "Verificatore",
    "Analista",
    "Progettista",
    "Programmatore",
    "Totale preventivo",
    "Totale consuntivo",
  ).map(el => [#el])
  r = costs_header + people.zip(r).flatten()

  align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto,) * 4,
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  ))
}

#let period(data, dirs, period_number) = {
  let roles = ("Responsabile", "Amministratore", "Verificatore", "Analista", "Progettista", "Programmatore")
  let period_header = ([],) + roles.map(r => [*#r*])
  let people = (p.amadori, p.bettin, p.bonavigo, p.bulychov, p.fabbian, p.furno, p.vedovato).map(n => n.split().last())
  let r = period_header + (people + ("Ore totali",)).map(el => [*#el*]).zip(data.map(x => x.map(y => str(y)))).flatten()

  figure(align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto,) * 7,
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  )), caption: [Preventivo dell'impegno orario per ruolo di ciascun membro durante il periodo #period_number.])

  v(1em)

  data = people.zip(data).map(x => x.flatten())
  let pal_colors = (
    rgb("#e60049"),
    rgb("#0bb4ff"),
    rgb("#50e991"),
    rgb("#e6d800"),
    rgb("#9b19f5"),
    rgb("#ffa300"),
    rgb("#dc0ab4"),
    rgb("#b3d4ff"),
    rgb("#00bfa0"),
  )
  let pal = palette.new(colors: pal_colors)

  figure(
    [
      #rect(
        stroke: (thickness: 0.7pt, dash: "dashed"),
      )[
        Legenda:
        #let t = roles.zip(pal_colors).enumerate().filter(x => data.map(y => y.at(x.first() + 1)).sum() > 0).map(x => x.last())
        #stack(
          dir: ltr,
          spacing: 0.3em,
          ..t.map(x => stack(dir: ltr, spacing: 0.1em, circle(fill: x.at(1), width: .8em, height: 0.8em), " " + x.at(0))),
        )
      ]
      #align(
        center,
        canvas(
          {
            draw.scale(1.8)
            chart.columnchart(data, size: (auto, 4), mode: "clustered", value-key: (1, 2, 3, 4, 5, 6), y-tick-step: 1, bar-style: pal)
          },
        ),
      )
    ],
    caption: [Visualizzazione dell'impegno temporale di ciascun membro nei rispettivi ruoli assegnati nel periodo #period_number.],
  )

  v(1em)

  let sums = ()
  for j in range(data.first().len() - 1) {
    let t = ()
    for i in range(data.len()) {
      t += (data.at(i).at(j + 1),)
    }
    sums += ((value: t.sum(), label: roles.at(j)),)
  }

  figure(
    align(
      center,
      canvas(
        {
          import draw: *
          scale(1.8)
          chart.piechart(sums, slice-style: pal_colors, value-key: "value", label-key: "label", outer-label: (content: ""), name: "pie")
          let positions = ((2, 0),) * dirs.at(0) + ((-2, 0),) * dirs.at(1) + ((2, 0),) * dirs.at(2)
          let anchors = ("west",) * dirs.at(0) + ("east",) * dirs.at(1) + ("west",) * dirs.at(2)
          set-style(mark: (fill: white, start: "o", stroke: black), content: (padding: .1))
          for i in range(roles.len()) {
            if sums.at(i).at("value") > 0 {
              line("pie.item-" + str(i), ((), "-|", positions.at(i))) // should start at the center though
              let t = calc.round(sums.at(i).at("value") * 100 / sums.map(x => x.at("value")).sum())
              content((), [#roles.at(i) - #t%], anchor: anchors.at(i))
            }
          }
        },
      ),
    ),
    caption: [Ripartizione in percentuale dei ruoli nel periodo #period_number.],
  )
}

#let metrics(r) = {
  let metrics_header = ([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*])
  r = metrics_header + r

  align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto,) * 4,
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  ))
}

#let test(r) = {
  let test_header = ([*Codice*], [*Descrizione*], [*Stato*])
  r = test_header + r

  align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto,) * 3,
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  ))
}

#let testSistema(r) = {
  let test_header = ([*Codice*], [*Descrizione*], [*Requisito*], [*Stato*])
  r = test_header + r

  align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto,) * 4,
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  ))
}

#let testRegressione(r) = {
  let test = ("Test di unità selezionati", "Test di integrazione selezionati", "Test di sistema selezionati").map(el => [*#el*])
  r = test.zip(r).flatten()
  align(center, table(
    fill: (_, row) => if calc.odd(row) { white } else { luma(215) },
    inset: 0.5em,
    columns: auto,
    align: auto,
    ..r.map(el => text(size: 0.95em, hyphenate: false)[#par(justify: false, el)]),
  ))
}

#let costiFinaliRuolo(r) = {
  let costs_header = ([*Ruolo*], [*Periodo I*], [*Periodo II*], [*Periodo III*], [*Periodo IV*], [*Periodo V*], [*Totali per ruolo*])
  let people = (
    "Responsabile",
    "Amministratore",
    "Verificatore",
    "Analista",
    "Progettista",
    "Programmatore",
    "Totale preventivo",
    "Totali per periodo",
  ).map(el => [*#el*])
  r = costs_header + people.zip(r).flatten()

  align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto,) * 7,
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  ))
}
#let costiFinaliRuoloPB(r) = {
  let costs_header = (
    [*Ruolo*],
    [*P. I*],
    [*P. II*],
    [*P. III*],
    [*P. IV*],
    [*P. V*],
    [*P. VI*],
    [*P. VII*],
    [*P. VIII*],
    [*P. IX*],
    [*Totali per ruolo*],
  )
  let people = (
    "Responsabile",
    "Amministratore",
    "Verificatore",
    "Analista",
    "Progettista",
    "Programmatore",
    "Totale preventivo",
    "Totali per periodo",
  ).map(el => [*#el*])
  r = costs_header + people.zip(r).flatten()

  align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto,) * 11,
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  ))
}

#let progress(percentage, period_number) = {
  figure([
    #align(center, canvas({
      draw.set-style(rect: (fill: rgb(69, 255, 78), stroke: none))
      draw.rect((0, 0), (percentage, 1), name: "progress")
      draw.set-style(rect: (stroke: (thickness: 0.8pt), fill: none))
      draw.rect((0, 0), (7.2, 1), name: "rtb")
      draw.rect((0, 0), (17.4, 1), name: "pb")
      draw.rect((0, 0), (18, 1), name: "paf")
      draw.content(("rtb.mid", 0, "rtb.mid"), padding: -.5, anchor: "south", [RTB])
      draw.content(("pb.mid", 0, "pb.mid"), padding: -.5, anchor: "south", [PB])
      draw.content(("paf.mid", 0, "paf.mid"), padding: -.5, anchor: "south", [PaF])
    }))
  ], caption: [Punto di avanzamento raggiunto nel periodo #period_number.])
}

#let progress2(percentage, period_number) = {
  figure([
    #align(center, canvas({
      draw.set-style(rect: (fill: rgb(69, 255, 78), stroke: none))
      draw.rect((0, 0), (percentage, 1), name: "progress")
      draw.set-style(rect: (stroke: (thickness: 0.8pt), fill: none))
      draw.rect((0, 0), (7.2, 1), name: "rtb")
      draw.rect((0, 0), (18, 1), name: "paf")
      draw.content(("rtb.mid", 0, "rtb.mid"), padding: -.5, anchor: "south", [RTB])
      draw.content(("paf.mid", 0, "paf.mid"), padding: -.5, anchor: "south", [PB = PaF])
    }))
  ], caption: [Punto di avanzamento raggiunto nel periodo #period_number.])
}

#let tecnologieUsate(r) = {
  let header = ([*Nome*], [*Versione*], [*Descrizione*])
  r = header + r
  align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (20%, 10%, auto),
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  ))
}

#let requisitiSoddisfatti(r) = {
  let header = ([*Codice*], [*Tipo*], [*Descrizione*], [*Stato*])
  r = header + r
  align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto, auto, auto, auto),
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  ))
}

#let resumeRequisiti(percentageTotale, percentageObbligatori, percentageDesiderabili, percentageOpzionali) = {
  let dataTotale = (([Soddisfatti], percentageTotale), ([Non soddisfatti], 100 - percentageTotale))
  let dataObbligatori = (([Soddisfatti], percentageObbligatori), ([Non soddisfatti], 100 - percentageObbligatori))
  let dataDesiderabili = (([Soddisfatti], percentageDesiderabili), ([Non soddisfatti], 100 - percentageDesiderabili))
  let dataOpzionali = (([Soddisfatti], percentageOpzionali), ([Non soddisfatti], 100 - percentageOpzionali))
  figure(canvas({
    chart.piechart(
      dataTotale,
      value-key: 1,
      label-key: 0,
      radius: 3.5,
      slice-style: gradient.linear(green, red, red),
      inner-radius: 0.5,
      inner-label: (content: (value, label) => [#text(white, label)], radius: 114%),
      outer-label: (content: "%", radius: 118%),
    )
  }), caption: [Stato dei requisiti funzionali totali])
  figure(canvas({
    chart.piechart(
      dataObbligatori,
      value-key: 1,
      label-key: 0,
      radius: 3.5,
      slice-style: gradient.linear(green, red, red),
      inner-radius: 0.5,
      inner-label: (content: (value, label) => [#text(white, label)], radius: 100%),
      outer-label: (content: "%", radius: 118%),
    )
  }), caption: [Stato dei requisiti funzionali obbligatori])
  figure(canvas({
    chart.piechart(
      dataDesiderabili,
      value-key: 1,
      label-key: 0,
      radius: 3.5,
      slice-style: gradient.linear(green, red, red),
      inner-radius: 0.5,
      inner-label: (content: (value, label) => [#text(white, label)], radius: 100%),
      outer-label: (content: "%", radius: 118%),
    )
  }), caption: [Stato dei requisiti funzionali desiderabili])
  figure(canvas({
    chart.piechart(
      dataOpzionali,
      value-key: 1,
      label-key: 0,
      radius: 3.5,
      slice-style: gradient.linear(green, red, red),
      inner-radius: 0.5,
      inner-label: (content: (value, label) => [#text(white, label)], radius: 100%),
      outer-label: (content: "%", radius: 118%),
    )
  }), caption: [Stato dei requisiti funzionali opzionali])
}

#let api(r) = {
  let header = ([*Esito*], [*Codice HTTP*], [*Descrizione*])
  r = header + r
  align(center, table(
    fill: (_, row) => if calc.odd(row) { luma(215) } else { white },
    inset: 0.5em,
    columns: (auto, auto, auto),
    align: center,
    ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
  ))
}