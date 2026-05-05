// Modern resume template — hand-built replacement for moderncv-banking.
// Single-column body with a hybrid header band (name/title/contact + photo on the right).
// ATS-safe (linear reading order, no place()-based positioning).

#let accent-default = rgb("#D97706")

#let cv-document(
  config: (:),
  accent: accent-default,
  body,
) = {
  set document(
    title: config.firstname + " " + config.lastname + " — " + config.title,
    author: config.firstname + " " + config.lastname,
  )
  set page(paper: "a4", margin: (x: 1.6cm, top: 1.4cm, bottom: 1.4cm))
  set text(font: ("Charter", "XCharter", "Libertinus Serif"), size: 11pt)
  set par(justify: true, leading: 0.6em, spacing: 0.7em)
  set list(marker: text(fill: accent)[•], indent: 0.6em, body-indent: 0.5em)

  show link: set text(fill: accent)
  show heading.where(level: 1): it => block(above: 1.1em, below: 0.55em, {
    text(size: 11.5pt, weight: "semibold", fill: accent, upper(it.body))
    v(0.2em, weak: true)
    line(length: 100%, stroke: 0.6pt + accent)
  })
  show heading.where(level: 2): it => block(above: 0.6em, below: 0.3em,
    text(size: 10.5pt, style: "italic", weight: "medium", it.body))

  // Header band
  let contact = {
    set text(size: 9.5pt)
    let sep = text(fill: accent.lighten(20%))[ · ]
    link("mailto:" + config.email)[#config.email]
    sep
    link("https://" + config.homepage)[#config.homepage]
    sep
    config.phone
    linebreak()
    config.address
    sep
    link("https://github.com/" + config.github)[github.com/#config.github]
    if "reddit" in config and config.reddit != none {
      sep
      link("https://reddit.com/u/" + config.reddit)[reddit.com/u/#config.reddit]
    }
  }

  grid(columns: (1fr, auto), column-gutter: 1.2em, align: (left + horizon, right + horizon),
    [
      #text(size: 24pt, weight: "semibold", tracking: -0.01em)[
        #config.firstname #h(0.25em) #config.lastname
      ]
      #v(-0.2em)
      #text(size: 12pt, fill: accent, weight: "medium")[#config.title]
      #v(0.45em)
      #contact
    ],
    if "photo" in config and config.photo != none {
      image(config.photo, height: 92pt)
    },
  )

  v(0.5em)
  line(length: 100%, stroke: 0.5pt + accent)
  v(0.6em)

  body
}

// Multi-line entry (experience, education, projects, honors, teaching).
// Layout (single-row header so PDF text extraction stays linear):
//   Role · Org · Location                                          Dates
//     • body
// Block is non-breakable so the entry never splits across pages.
#let cv-entry(
  dates: none,
  role: none,
  org: none,
  location: none,
  body,
) = block(breakable: false, below: 0.6em, {
  let dot = h(0.3em) + sym.dot.c + h(0.3em)
  grid(
    columns: (1fr, auto),
    column-gutter: 1em,
    align: (left + horizon, right + horizon),
    {
      if role != none { strong(role) }
      if role != none and org != none { dot }
      if org != none { emph(org) }
      if (role != none or org != none) and location != none { dot }
      if location != none { text(fill: luma(70))[#location] }
    },
    if dates != none { text(weight: "medium")[#dates] } else { [] },
  )
  if body != none and body != [] {
    v(0.15em, weak: true)
    pad(left: 0.6em, body)
  }
})

// Two-column row used for skill categories.
#let cv-line(label, value) = block(below: 0.35em,
  grid(columns: (24%, 1fr), column-gutter: 1em,
    align(right, strong(label)),
    value,
  ),
)

// Three-column row used for languages.
#let cv-item-with-comment(item, level, note) = block(below: 0.35em,
  grid(columns: (24%, auto, 1fr), column-gutter: 1em,
    align(right, strong(item)),
    level,
    emph(note),
  ),
)

// Indented paragraph used for the summary section.
#let cv-summary(body) = block(below: 0.6em, body)
