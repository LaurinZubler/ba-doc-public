#import "/components/p.typ": *
#import "/components/todo.typ": *

== System Components
===== Introduction
#p[
  The _upsi_ system consists of three main components: The mobile app, divided into user and tester app, the server, and the blockchain.

  The _upsi_ architecture diagram is visualized in @architecture-diagram.
]

#figure(
  image("/images/implementation/upsi_architecture.png", width: 95%),
  caption: [_upsi_ architecture diagram]
)<architecture-diagram>

===== Source Code
#p[
  The source code of all components is open source and can be viewd on GitHub:

  - *Mobile App:* https://github.com/LaurinZubler/ba-app
  - *Server:* https://github.com/LaurinZubler/ba-server
  - *Blockchain*: https://github.com/LaurinZubler/ba-chain
]