#import "/styles/layout.typ": layout
#import "/styles/numbering.typ": numbering
#import "/components/todo.typ": *

#include "/utils/metadata.typ"

#include "/chapters/title-page.typ"

#show: doc => layout(doc)

#include "/chapters/abstract.typ"
#include "/chapters/contents.typ"

// show headers with numbering
#show: doc => numbering(doc)

#let chapters = (
  "chapters/introduction.typ",
  "chapters/background.typ",
  "chapters/related-work.typ",
  "chapters/solution-design.typ",
  "chapters/implementation.typ",  
  "chapters/conclusion.typ",
  "chapters/glossary.typ",
  "chapters/bibliography.typ",
  "chapters/lists.typ",
  "chapters/appendix.typ",
)

#for path in chapters {
  include path
}