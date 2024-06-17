#import "/styles/variables.typ": *

#let titlePage(doc) = {
  
  set page(
    background: image("/images/title-page/bed.jpg", height: 100%),
    margin: (right: 1.5cm, top: 2cm, bottom: 0.7cm)
  )
  set text(fontSize, font: fontFamily)
  
//  set align(right)
  doc
}