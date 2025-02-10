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
  figure_breakable: true,
  image_width: 60%,
  body,
) = {
  set page(fill: rgb(209, 197, 174))

  set text(font: "Libertinus Serif", lang: "it")
  set heading(numbering: heading_numbers)
  set page(numbering: "1 / 1")
  show link: underline
  show figure: set block(breakable: figure_breakable)

  let date = changelog.at(1, default: none)
  let version = changelog.at(0, default: none)
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
  image(g.logo, width: image_width)

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

  set page(
    header-ascent: 15%,
    header: gridx(
      columns: (1fr, 1fr),
      align: (left, horizon + right),
      image(g.logo, width: 3.5em),
      title,
      hlinex(stroke: 0.07em),
    ),
  )

  set align(start + top)

  if version != none and changelog.len() > 2 {
    changelog = changelog_header + changelog
    heading(outlined: false, numbering: none, [Registro delle modifiche])
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(84.31%)
      } else {
        white
      },
      inset: 0.5em,
      columns: (auto,) * 4 + (1fr,),
      ..changelog.map(el => text(size: 0.8em)[
        #par(
          justify: false,
          if type(el) == array {
            sortBySurname(el).join([,\ ])
          } else {
            el
          },
        )
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
    t
      .enumerate()
      .map(a => if r.contains(a.first()) and type(a.last()) == array {
        return issue_to_link(a.last().first(), a.last().last())
      } else {
        a.last()
      })
  }
  let r = array.range(0, t.len(), step: tasks_header.len())
  t = tasks_header + map_issue(r, t)

  align(
    center,
    block(
      width: 95%,
      table(
        fill: (_, row) => if calc.odd(row) {
          luma(215)
        } else {
          white
        },
        inset: 0.5em,
        columns: (auto, 1fr, auto),
        align: left,
        ..t.map(el => text(size: 0.9em)[
          #par(
            justify: false,
            if type(el) == array {
              sortBySurname(el).join([,\ ])
            } else {
              el
            },
          )
        ]),
      ),
    ),
  )
}

#let risks(r) = {
  let risks_header = ([*Descrizione*], [*Probabilità*], [*Pericolosità*], [*Rilevamento*], [*Piano di contingenza*])
  r = risks_header.zip(r).flatten()

  align(
    center,
    block(
      width: 95%,
      table(
        fill: (_, row) => if calc.odd(row) {
          luma(215)
        } else {
          white
        },
        inset: 0.5em,
        columns: (auto, 1fr),
        align: left,
        ..r.map(el => text(size: 0.9em)[
          #par(justify: false, el)
        ]),
      ),
    ),
  )
}

#let requirements(color, r) = {
  let requirements_header = ([*ID Requisito*], [*Descrizione*], [*Fonti*])
  r = requirements_header + r

  align(
    center,
    block(
      width: 95%,
      table(
        fill: (_, row) => if row == 0 {
          rgb(color)
        } else {
          white
        },
        inset: 0.8em,
        columns: (auto, 1fr, auto),
        align: (x, _) => (horizon, left, horizon).at(x),
        ..r.map(el => text(size: 0.9em)[
          #par(justify: false, el)
        ]),
      ),
    ),
  )
}

#let tracking1(t) = {
  let tracking_header = ([*ID Requisito*], [*Fonte*])
  t = tracking_header + t

  align(
    center,
    block(
      width: 60%,
      table(
        fill: (_, row) => if row == 0 {
          luma(215)
        } else {
          white
        },
        inset: 0.8em,
        columns: (1fr, 1fr),
        align: horizon,
        ..t.map(el => text(size: 0.9em)[
          #par(justify: false, el)
        ]),
      ),
    ),
  )
}

#let tracking2(t) = {
  let tracking_header = ([*Fonte*], [*ID Requisiti*])
  t = tracking_header + t

  align(
    center,
    block(
      width: 60%,
      table(
        fill: (_, row) => if row == 0 {
          luma(215)
        } else {
          white
        },
        inset: 0.8em,
        columns: (1fr, 1fr),
        align: horizon,
        ..t.map(el => text(size: 0.9em)[
          #par(justify: false, el)
        ]),
      ),
    ),
  )
}

#let improvement(color, r) = {
  let requirements_header = ([*Fase*], [*Problema Rilevato*], [*Contromisura*])
  r = requirements_header + r

  align(
    center,
    block(
      width: 95%,
      table(
        fill: (_, row) => if row == 0 {
          rgb(color)
        } else {
          white
        },
        inset: 0.8em,
        columns: (auto, auto, auto),
        align: (x, _) => (horizon, left, left).at(x),
        ..r.map(el => text(size: 0.9em)[
          #par(justify: false, el)
        ]),
      ),
    ),
  )
}

#let improvementrole(color, r) = {
  let requirements_header = ([*Fase*], [*Ruolo*], [*Problema Rilevato*], [*Contromisura*])
  r = requirements_header + r

  align(
    center,
    block(
      width: 95%,
      table(
        fill: (_, row) => if row == 0 {
          rgb(color)
        } else {
          white
        },
        inset: 0.8em,
        columns: (20%, 20%, auto, auto),
        align: (x, _) => (horizon, horizon, left, left).at(x),
        ..r.map(el => text(size: 0.9em)[
          #par(justify: false, el)
        ]),
      ),
    ),
  )
}

#let improvementtool(color, r) = {
  let requirements_header = ([*Fase*], [*Strumento*], [*Problema Rilevato*], [*Contromisura*])
  r = requirements_header + r

  align(
    center,
    block(
      width: 95%,
      table(
        fill: (_, row) => if row == 0 {
          rgb(color)
        } else {
          white
        },
        inset: 0.8em,
        columns: (20%, 18%, auto, auto),
        align: (x, _) => (horizon, horizon, left, left).at(x),
        ..r.map(el => text(size: 0.9em)[
          #par(justify: false, el)
        ]),
      ),
    ),
  )
}

#let summary(t) = {
  let tracking_header = ([*Tipologia*], [*Obbligatori*], [*Desiderabili*], [*Opzionali*])
  t = tracking_header + t

  align(
    center,
    block(
      width: 80%,
      table(
        fill: (_, row) => if row == 0 {
          luma(215)
        } else {
          white
        },
        inset: 0.8em,
        columns: (1fr, auto, auto, auto),
        align: horizon,
        ..t.map(el => text(size: 0.9em)[
          #par(justify: false, el)
        ]),
      ),
    ),
  )
}

#let glossary(word) = {
  let t = underline(word)
  if word != "questo stile" {
    t = link(g.website + "/docs/RTB/Glossario" + "#" + lower(word.slice(0).replace(" ", "-")))[*#word*]
  }

  text(fill: rgb("#a99c84"), style: "italic")[#t*#sub("G")*]
}

#let LTG(word) = {
  let url = g.website + "/docs/RTB/Glossario#" + lower(word)
  let t = underline(word)
  let LTG = link(url)[*#t*]
  return LTG
}

#let neg(word) = {
  text(fill: rgb("#D2042D"))[(*#word*)]
}

#let pos(word) = {
  text(fill: rgb("#437c17"))[(*#word*)]
}

#let consuntivo(r) = {
  let period_header = ("", "Res.", "Amm.", "Ver.", "Ana.", "Proget.", "Program.", "Totali per persona").map(r => [*#r*])
  let people = (
    (p.amadori, p.bettin, p.bonavigo, p.bulychov, p.fabbian, p.furno, p.vedovato).map(n => n.split().last())
      + (
        "Ore totali per ruolo",
      )
  ).map(el => [*#el*])
  r = period_header + people.zip(r).flatten()

  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(215)
      } else {
        white
      },
      inset: 0.5em,
      columns: (auto,) * 8,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
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

  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(215)
      } else {
        white
      },
      inset: 0.5em,
      columns: (auto,) * 4,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
}

#let period(data, dirs, period_number) = {
  let roles = ("Responsabile", "Amministratore", "Verificatore", "Analista", "Progettista", "Programmatore")
  let period_header = ([],) + roles.map(r => [*#r*])
  let people = (p.amadori, p.bettin, p.bonavigo, p.bulychov, p.fabbian, p.furno, p.vedovato).map(n => n.split().last())
  let r = period_header + (people + ("Ore totali",)).map(el => [*#el*]).zip(data.map(x => x.map(y => str(y)))).flatten()

  figure(
    align(
      center,
      table(
        fill: (_, row) => if calc.odd(row) {
          luma(215)
        } else {
          white
        },
        inset: 0.5em,
        columns: (auto,) * 7,
        align: center,
        ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
      ),
    ),
    caption: [Preventivo dell'impegno orario per ruolo di ciascun membro durante il periodo #period_number.],
  )

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
      #rect(stroke: (thickness: 0.7pt, dash: "dashed"))[
        Legenda:
        #let t = (
          roles
            .zip(pal_colors)
            .enumerate()
            .filter(x => (
              data.map(y => y.at(x.first() + 1)).sum() > 0
            ))
            .map(x => x.last())
        )
        #stack(
          dir: ltr,
          spacing: 0.3em,
          ..t.map(x => stack(
            dir: ltr,
            spacing: 0.1em,
            circle(fill: x.at(1), width: .8em, height: 0.8em),
            " " + x.at(0),
          )),
        )
      ]
      #align(
        center,
        canvas({
          draw.scale(1.8)
          chart.columnchart(
            data,
            size: (auto, 4),
            mode: "clustered",
            value-key: (1, 2, 3, 4, 5, 6),
            y-tick-step: 1,
            bar-style: pal,
          )
        }),
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
      canvas({
        import draw: *
        scale(1.8)
        chart.piechart(
          sums,
          slice-style: pal_colors,
          value-key: "value",
          label-key: "label",
          outer-label: (content: ""),
          name: "pie",
        )
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
      }),
    ),
    caption: [Ripartizione in percentuale dei ruoli nel periodo #period_number.],
  )
}

#let metrics(r) = {
  let metrics_header = ([*Metrica*], [*Nome*], [*Valore accettabile*], [*Valore ottimo*])
  r = metrics_header + r

  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(215)
      } else {
        white
      },
      inset: 0.5em,
      columns: (auto,) * 4,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
}

#let test(r) = {
  let test_header = ([*Codice*], [*Descrizione*], [*Stato*])
  r = test_header + r

  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(215)
      } else {
        white
      },
      inset: 0.5em,
      columns: (auto,) * 3,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
}

#let testSistema(r) = {
  let test_header = ([*Codice*], [*Descrizione*], [*Requisito*], [*Stato*])
  r = test_header + r

  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(215)
      } else {
        white
      },
      inset: 0.5em,
      columns: (auto,) * 4,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
}

#let testRegressione(r) = {
  let test = (
    "Test di unità selezionati",
    "Test di integrazione selezionati",
    "Test di sistema selezionati",
  ).map(el => [*#el*])
  r = test.zip(r).flatten()
  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        white
      } else {
        luma(215)
      },
      inset: 0.5em,
      columns: auto,
      align: auto,
      ..r.map(el => text(size: 0.95em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
}

#let costiFinaliRuolo(r) = {
  let costs_header = (
    [*Ruolo*],
    [*Periodo I*],
    [*Periodo II*],
    [*Periodo III*],
    [*Periodo IV*],
    [*Periodo V*],
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

  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(215)
      } else {
        white
      },
      inset: 0.5em,
      columns: (auto,) * 7,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
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

  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(215)
      } else {
        white
      },
      inset: 0.5em,
      columns: (auto,) * 11,
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
}

#let progress(percentage, period_number) = {
  figure(
    [
      #align(
        center,
        canvas({
          draw.set-style(rect: (fill: rgb(69, 255, 78), stroke: none))
          draw.rect((0, 0), (percentage, 1), name: "progress")
          draw.set-style(rect: (stroke: (thickness: 0.8pt), fill: none))
          draw.rect((0, 0), (7.2, 1), name: "rtb")
          draw.rect((0, 0), (17.4, 1), name: "pb")
          draw.rect((0, 0), (18, 1), name: "paf")
          draw.content(("rtb.mid", 0, "rtb.mid"), padding: -.5, anchor: "south", [RTB])
          draw.content(("pb.mid", 0, "pb.mid"), padding: -.5, anchor: "south", [PB])
          draw.content(("paf.mid", 0, "paf.mid"), padding: -.5, anchor: "south", [PaF])
        }),
      )
    ],
    caption: [Punto di avanzamento raggiunto nel periodo #period_number.],
  )
}

#let progress2(percentage, period_number) = {
  figure(
    [
      #align(
        center,
        canvas({
          draw.set-style(rect: (fill: rgb(69, 255, 78), stroke: none))
          draw.rect((0, 0), (percentage, 1), name: "progress")
          draw.set-style(rect: (stroke: (thickness: 0.8pt), fill: none))
          draw.rect((0, 0), (7.2, 1), name: "rtb")
          draw.rect((0, 0), (18, 1), name: "paf")
          draw.content(("rtb.mid", 0, "rtb.mid"), padding: -.5, anchor: "south", [RTB])
          draw.content(("paf.mid", 0, "paf.mid"), padding: -.5, anchor: "south", [PB = PaF])
        }),
      )
    ],
    caption: [Punto di avanzamento raggiunto nel periodo #period_number.],
  )
}

#let tecnologieUsate(r) = {
  let header = ([*Nome*], [*Versione*], [*Descrizione*])
  r = header + r
  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(215)
      } else {
        white
      },
      inset: 0.5em,
      columns: (20%, 10%, auto),
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
}

#let requisitiSoddisfatti(r) = {
  let header = ([*Codice*], [*Tipo*], [*Descrizione*], [*Stato*])
  r = header + r
  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(215)
      } else {
        white
      },
      inset: 0.5em,
      columns: (auto, auto, auto, auto),
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
}

#let resumeRequisiti(percentageTotale, percentageObbligatori, percentageDesiderabili, percentageOpzionali) = {
  let dataTotale = (([Soddisfatti], percentageTotale), ([Non soddisfatti], 100 - percentageTotale))
  let dataObbligatori = (([Soddisfatti], percentageObbligatori), ([Non soddisfatti], 100 - percentageObbligatori))
  let dataDesiderabili = (([Soddisfatti], percentageDesiderabili), ([Non soddisfatti], 100 - percentageDesiderabili))
  let dataOpzionali = (([Soddisfatti], percentageOpzionali), ([Non soddisfatti], 100 - percentageOpzionali))
  figure(
    canvas({
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
    }),
    caption: [Stato dei requisiti funzionali totali],
  )
  figure(
    canvas({
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
    }),
    caption: [Stato dei requisiti funzionali obbligatori],
  )
  figure(
    canvas({
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
    }),
    caption: [Stato dei requisiti funzionali desiderabili],
  )
  figure(
    canvas({
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
    }),
    caption: [Stato dei requisiti funzionali opzionali],
  )
}

#let api(r) = {
  let header = ([*Esito*], [*Codice HTTP*], [*Descrizione*])
  r = header + r
  align(
    center,
    table(
      fill: (_, row) => if calc.odd(row) {
        luma(215)
      } else {
        white
      },
      inset: 0.5em,
      columns: (auto, auto, auto),
      align: center,
      ..r.map(el => text(size: 0.85em, hyphenate: false)[#par(justify: false, el)]),
    ),
  )
}

//Piano di progetto Template

#let prev-orario(dati, periodo) = {
  let dati = dati.map(row => row + (row.sum(),))
  let ruoli_tot = ("Responsabile", "Amministratore", "Analista", "Progettista", "Programmatore", "Verificatore")
  let ruoli = ("RS", "AM", "AN", "PR", "PG", "VR", "Totale")
  let persone = (p.belenkov, p.benedetti, p.campagnaro, p.ferazzani, p.fracaro, p.mahdi, p.santi).map(n => n
    .split()
    .last())

  let header = ([],) + ruoli.map(r => [*#r*])

  let r = (
    header
      + (persone).map(el => [*#el*]).zip(dati.map(x => x.map(y => str(y)))).flatten()
      + ("Totale",).map(el => [*#el*])
      + (dati.map(row => row.at(0)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(1)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(2)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(3)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(4)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(5)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(6)).sum(),).map(el => [*#el*])
  )


  figure(
    align(
      center,
      table(
        columns: 1fr,
        inset: 7pt,
        align: center,
        fill: (_, row) => if row != 0 { white } else { rgb(209, 197, 174) },
        [*Preventivo orario periodo #periodo*],
        table(
          columns: (auto,) + (1fr,) * 6 + (auto,),
          inset: 5pt,
          align: center,
          fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
          ..r.map(el => text(size: 1em, hyphenate: false)[#par(justify: false, el)])
        )
      ),
    ),
    caption: [Periodo #periodo - Preventivo dell'impegno orario per ruolo di ciascun membro.],
  )

  v(1.5em)

  dati = persone.zip(dati).map(x => x.flatten())
  let colori = (rgb("#e60c05"), rgb("#02de11"), rgb("#ffbb00"), rgb("#8f02fa"), rgb("#40ddf5"), rgb("#4f55f7"))
  let colori_p = palette.new(colors: colori)

  figure(
    [
      #align(
        center,
        canvas({
          draw.scale(1)
          chart.columnchart(
            dati,
            size: (15, 7),
            mode: "clustered",
            value-key: (1, 2, 3, 4, 5, 6),
            y-tick-step: 1,
            bar-style: colori_p,
          )
        }),
      )
      #rect(stroke: (paint: blue, thickness: 1pt, dash: "dashed"))[
        *Legenda*:
        #let t = ruoli_tot.zip(colori).enumerate().map(x => x.last())
        #let half = (t.len() + 1) / 2
        #let t1 = t.slice(0, 3)
        #let t2 = t.slice(3, t.len())

        #stack(
          dir: ttb,
          spacing: 1em,
          stack(
            dir: ltr,
            spacing: 1em,
            ..t1.map(x => stack(
              dir: ltr,
              spacing: 0.3em,
              circle(fill: x.at(1), width: .8em, height: 0.8em),
              " " + x.at(0),
            )),
          ),
          stack(
            dir: ltr,
            spacing: 1em,
            ..t2.map(x => stack(
              dir: ltr,
              spacing: 0.3em,
              circle(fill: x.at(1), width: .8em, height: 0.8em),
              " " + x.at(0),
            )),
          ),
        )
      ]

    ],
    caption: [Periodo #periodo - Visualizzazione dell'impegno temporale di ciascun membro nei rispettivi ruoli assegnati.],
  )

  v(1.5em)

  let sums = ()
  let dati = dati.map(row => row.slice(1, 7))
  for j in range(dati.len() - 1) {
    let s = dati.map(row => row.at(j)).sum()
    sums += ((ruoli_tot.at(j), s),)
  }
  figure(
    [
      #align(
        center,
        [
          #canvas({
            import draw: *
            scale(0.5)
            chart.piechart(
              sums,
              value-key: 1,
              label-key: none,
              radius: 5,
              slice-style: colori_p,
              inner-radius: 1,
              inner-label: (content: "%", radius: 110%),
              outer-label: (content: ""),
            )
          })
          #rect(stroke: (paint: blue, thickness: 1pt, dash: "dashed"))[
            *Legenda*:
            #let t = ruoli_tot.zip(colori).enumerate().map(x => x.last())
            #let half = (t.len() + 1) / 2
            #let t1 = t.slice(0, 3)
            #let t2 = t.slice(3, t.len())

            #stack(
              dir: ttb,
              spacing: 1em,
              stack(
                dir: ltr,
                spacing: 1em,
                ..t1.map(x => stack(
                  dir: ltr,
                  spacing: 0.3em,
                  circle(fill: x.at(1), width: .8em, height: 0.8em),
                  " " + x.at(0),
                )),
              ),
              stack(
                dir: ltr,
                spacing: 1em,
                ..t2.map(x => stack(
                  dir: ltr,
                  spacing: 0.3em,
                  circle(fill: x.at(1), width: .8em, height: 0.8em),
                  " " + x.at(0),
                )),
              ),
            )
          ]
        ],
      )

    ],
    caption: [Periodo #periodo - Ripartizione in percentuale dei ruoli.],
  )

  v(1.5em)
}

#let prev-economico(data, periodo) = {
  let sums = (
    ((data.at(0)) * 30)
      + ((data.at(1)) * 20)
      + ((data.at(2)) * 25)
      + ((data.at(3)) * 25)
      + ((data.at(4)) * 15)
      + ((data.at(5)) * 15)
  )
  let header = ("", "Ore", "Costo").map(r => [*#r*])
  let r = (
    header
      + ("Responsabile",).map(el => [*#el*])
      + (data.at(0),).map(el => [#el])
      + ((data.at(0)) * 30,).map(el => [#el €])
      + ("Amministratore",).map(el => [*#el*])
      + (data.at(1),).map(el => [#el])
      + ((data.at(1)) * 20,).map(el => [#el €])
      + ("Analista",).map(el => [*#el*])
      + (data.at(2),).map(el => [#el])
      + ((data.at(2)) * 25,).map(el => [#el €])
      + ("Progettista",).map(el => [*#el*])
      + (data.at(3),).map(el => [#el])
      + ((data.at(3)) * 25,).map(el => [#el €])
      + ("Programmatore",).map(el => [*#el*])
      + (data.at(4),).map(el => [#el])
      + ((data.at(4)) * 15,).map(el => [#el €])
      + ("Verificatore",).map(el => [*#el*])
      + (data.at(5),).map(el => [#el])
      + ((data.at(5)) * 15,).map(el => [#el €])
      + ("Totale",).map(el => [*#el*])
      + (data.map(row => row).sum(),).map(el => [*#el*])
      + (sums,).map(el => [*#el €*])
  )

  figure(
    align(
      center,
      table(
        columns: 1fr,
        inset: 7pt,
        align: center,
        fill: (_, row) => if row != 0 { white } else { rgb(209, 197, 174) },
        [*Preventivo economico periodo #periodo*],
        table(
          columns: (1fr,) * 3,
          inset: 5pt,
          align: center,
          fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
          ..r.map(el => text(size: 1em, hyphenate: false)[#par(justify: false, el)])
        )
      ),
    ),
    caption: [Periodo #periodo - Preventivo economico per ruolo.],
  )
  v(1.5em)
}


#let neg(word) = {
  text(fill: rgb("#D2042D"))[(*+#word*)]
}

#let pos(word) = {
  text(fill: rgb("#437c17"))[(*#word*)]
}

#let cons-orario(cons, prev, periodo) = {
  let cons = cons.map(row => row + (row.sum(),))
  let cons = cons + ((range(0, cons.at(0).len())).map(i => cons.map(row => row.at(i)).sum()),)

  let prev = prev.map(row => row + (row.sum(),))
  let prev = prev + ((range(0, prev.at(0).len())).map(i => prev.map(row => row.at(i)).sum()),)

  let ruoli_tot = ("Responsabile", "Amministratore", "Analista", "Progettista", "Programmatore", "Verificatore")
  let ruoli = ("RS", "AM", "AN", "PR", "PG", "VR", "Totale")
  let persone = (
    (p.belenkov, p.benedetti, p.campagnaro, p.ferazzani, p.fracaro, p.mahdi, p.santi).map(n => n.split().last())
      + ("Totale",)
  )

  let header = ([],) + ruoli.map(r => [*#r*])

  let dati = ((([0],) * 7),) * 8
  for i in range(8) {
    for j in range(7) {
      let diff = cons.at(i).at(j) - prev.at(i).at(j)
      let str = str(cons.at(i).at(j))
      if (diff < 0) { str = str + " " + pos(diff) } else if (diff > 0) { str = str + " " + neg(diff) }
      if (i == 7) { dati.at(i).at(j) = [*#str*] } else { dati.at(i).at(j) = str }
    }
  }

  let r = header + (persone).map(el => [*#el*]).zip(dati.map(x => x.map(y => y))).flatten()


  figure(
    align(
      center,
      table(
        columns: 1fr,
        inset: 7pt,
        align: center,
        fill: (_, row) => if row != 0 { white } else { rgb(209, 197, 174) },
        [*Consuntivo orario periodo #periodo*],
        table(
          columns: (auto,) + (1fr,) * 6 + (auto,),
          inset: 5pt,
          align: center,
          fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
          ..r.map(el => text(size: 0.86em, hyphenate: false)[#par(justify: false, el)])
        )
      ),
    ),
    caption: [Periodo #periodo - Consintivo dell'impegno orario per ruolo di ciascun membro.],
  )
  v(1.5em)
}
#let cons-economico(cons, prev, periodo) = {
  cons = cons + (cons.sum(),)
  let sums = (
    ((cons.at(0)) * 30,)
      + ((cons.at(1)) * 20,)
      + ((cons.at(2)) * 25,)
      + ((cons.at(3)) * 25,)
      + ((cons.at(4)) * 15,)
      + ((cons.at(5)) * 15,)
  )
  sums += (sums.sum(),)

  prev = prev + (prev.sum(),)
  let sums_prev = (
    ((prev.at(0)) * 30,)
      + ((prev.at(1)) * 20,)
      + ((prev.at(2)) * 25,)
      + ((prev.at(3)) * 25,)
      + ((prev.at(4)) * 15,)
      + ((prev.at(5)) * 15,)
  )
  sums_prev += (sums_prev.sum(),)

  let header = ("", "Ore", "Costo").map(r => [*#r*])
  let ruoli = (
    "Responsabile",
    "Amministratore",
    "Analista",
    "Progettista",
    "Programmatore",
    "Verificatore",
    "Totale",
  ).map(el => [*#el*])
  let r = header

  for i in range(7) {
    r += (ruoli.at(i),)
    let diff1 = cons.at(i) - prev.at(i)
    let str1 = str(cons.at(i))
    if (diff1 < 0) { str1 = str1 + " " + pos(diff1) } else if (diff1 > 0) { str1 = str1 + " " + neg(diff1) }

    let diff2 = sums.at(i) - sums_prev.at(i)
    let str2 = str(sums.at(i)) + " €"
    if (diff2 < 0) { str2 = str2 + " " + pos(str(diff2) + " €") } else if (diff2 > 0) {
      str2 = str2 + " " + neg(str(diff2) + " €")
    }

    if (i == cons.len() - 1) { r += ([*#str1*], [*#str2*]) } else { r += (str1, str2) }
  }


  figure(
    align(
      center,
      table(
        columns: 1fr,
        inset: 7pt,
        align: center,
        fill: (_, row) => if row != 0 { white } else { rgb(209, 197, 174) },
        [*Consuntivo economico periodo #periodo*],
        table(
          columns: (1fr,) * 3,
          inset: 5pt,
          align: center,
          fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
          ..r.map(el => text(size: 1em, hyphenate: false)[#par(justify: false, el)])
        )
      ),
    ),
    caption: [Periodo #periodo - Consuntivo economico per ruolo.],
  )
  v(1.5em)
}

#let ore-rimaste(dati, periodo) = {
  let dati = dati.map(row => row + (row.sum(),))
  let ruoli_tot = ("Responsabile", "Amministratore", "Analista", "Progettista", "Programmatore", "Verificatore")
  let ruoli = ("RS", "AM", "AN", "PR", "PG", "VR", "Totale")
  let persone = (p.belenkov, p.benedetti, p.campagnaro, p.ferazzani, p.fracaro, p.mahdi, p.santi).map(n => n
    .split()
    .last())

  let header = ([],) + ruoli.map(r => [*#r*])

  let r = (
    header
      + (persone).map(el => [*#el*]).zip(dati.map(x => x.map(y => str(y)))).flatten()
      + ("Totale",).map(el => [*#el*])
      + (dati.map(row => row.at(0)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(1)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(2)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(3)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(4)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(5)).sum(),).map(el => [*#el*])
      + (dati.map(row => row.at(6)).sum(),).map(el => [*#el*])
  )


  figure(
    align(
      center,
      table(
        columns: 1fr,
        inset: 7pt,
        align: center,
        fill: (_, row) => if row != 0 { white } else { rgb(209, 197, 174) },
        [*Ore rimanenti dopo periodo #periodo*],
        table(
          columns: (auto,) + (1fr,) * 6 + (auto,),
          inset: 5pt,
          align: center,
          fill: (_, row) => if calc.odd(row) { luma(230) } else { white },
          ..r.map(el => text(size: 1em, hyphenate: false)[#par(justify: false, el)])
        )
      ),
    ),
    caption: [Periodo #periodo - Ore rimaste per ruolo di ciascun membro dopo il periodo #periodo.],
  )
  v(1.5em)
}

#let avanzamento(percentuale_RTB, percentuale_PB, periodo) = {
  figure(
    [
      \
      #let RTB = 45
      #let scale = 6.5

      #if (percentuale_RTB != 100) { percentuale_PB = 0 }
      #let percentuale = percentuale_RTB * (RTB / 100) + percentuale_PB * ((100 - RTB) / 100)


      #align(
        center,
        canvas({
          draw.set-style(
            rect: (
              fill: rgb(6, 189, 54),
              stroke: none,
            ),
          )
          draw.rect((0, 0), (percentuale / scale, 1), name: "progress")
          draw.set-style(
            rect: (
              stroke: (thickness: 0.15em),
              fill: none,
            ),
          )
          draw.rect((0, 0), (RTB / scale, 1), name: "rtb")
          draw.rect((0, 0), (100 / scale, 1), name: "pb")
          draw.content(
            (RTB / (scale), -0.25),
            [*`RTB`*],
          )
          draw.content(
            (100 / (scale), -0.25),
            [*`PB`*],
          )
        }),
      )
    ],
    caption: [Periodo #periodo - Punto di avanzamento raggiunto.],
  )
  v(1.5em)
}

#let R = (
  P1: [#link(<RP1>)[*RP1 - Mancanza di competenze tecniche specifiche.*]],
  P2: [#link(<RP2>)[*RP2 - Non conformità agli impegni dichiarati.*]],
  P3: [#link(<RP3>)[*RP3 - Problemi di comunicazione e collaborazione.*]],
  P4: [#link(<RP4>)[*RP4 - Malattia o indisponibilità.*]],
  OI1: [#link(<ROI1>)[*ROI1 - Comunicativi e organizzativi.*]],
  OI2: [#link(<ROI2>)[*ROI2 - Definizione insufficiente dei ruoli e delle responsabilità nel team.*]],
  OE1: [#link(<ROE1>)[*ROE1 - Problemi di comunicazione.*]],
  T1: [#link(<RT1>)[*RT1 - Aggiornamenti o modifiche agli strumenti e tecnologie in uso.*]],
)
