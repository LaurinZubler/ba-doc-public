#import "/styles/variables.typ": *
#import "/styles/title-page.typ": titlePage
#import "/utils/strings.typ": *
#import "@preview/chic-hdr:0.4.0": *

#show: doc => titlePage(doc)

#show: chic.with(
  chic-footer(
    right-side: text(fontSizeFootnote)[Image source: Microsoft 365 Image Library]
  )
)

#align(right)[
  #image("/images/ost/ost_logo.png", height: 1.5cm)
]

#v(1fr)

#text(84pt, fill: rgb("#880E4F"))[
  *#title*
]

#v(0.3fr)

#text(18pt, fill: rgb("#D81B60"))[
  #subtitle
]

#v(0.6fr)

#text(16pt)[
  #thesis
]

#grid(
  columns: 2,
  row-gutter: 1em,
  column-gutter: 1em,
  "Author:", author,
  "Advisor:", advisor,
  "Co-Examiner", coExaminer,
  "Semester:", term,
)

#v(0.5fr)
