#import "/components/p.typ": *
#import "/components/todo.typ": *

= Implementation <implementation>
===== Preamble
#p[
  This chapter describes the implementation details of the _upsi_ application.
  An overview of the system architecture is provided, and each component is detailed further.
  The limitations encountered during the implementation are discussed at the end.
]

#include "implementation/system-components.typ"
#pagebreak(weak: true)
#include "implementation/app.typ"
#pagebreak(weak: true)
#include "implementation/blockchain.typ"
#pagebreak(weak: true)
#include "implementation/server.typ"
#pagebreak(weak: true)
#include "implementation/limitations.typ"