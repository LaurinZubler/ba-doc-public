#let printPage(path) = {
  align(center + horizon, rect(image(path, width: 78%)))
}

#let printSinglePage(page) = [
  #printPage(page)
  #pagebreak(weak: true)
]

#let printDocument(pages) = [
  #for page in pages {
    printPage(page)
  }
  #pagebreak(weak: true)
]