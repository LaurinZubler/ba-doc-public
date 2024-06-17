#import "/styles/variables.typ": *
#import "@preview/chic-hdr:0.4.0": *

// paragraph
#let p(content) = {
  grid(
    columns: (1fr, 6fr),
    gutter: gap,
    // last H5
    text(fontSizeH5)[*#chic-heading-name(dir: "prev", level: 5)*],
    content,
  )
  v(gap)
} 