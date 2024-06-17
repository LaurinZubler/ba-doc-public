#import "@preview/outrageous:0.1.0"
#import "/styles/variables.typ": *

// https://github.com/typst/packages/tree/main/packages/preview/outrageous/0.1.0
#show outline.entry: outrageous.show-entry.with(
  ..outrageous.presets.outrageous-toc,
  font: (fontFamily, auto)
)

#outline(
    title: "Table of Contents",
    depth: 2,
    indent: auto,
)