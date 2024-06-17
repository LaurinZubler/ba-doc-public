#import "/components/p.typ": *
#import "/components/todo.typ": *

== Methodology
===== Introduction
#p[
  In this section, the various methods and approaches utilized during the bachelor's thesis are furhte detailed.
]

#p[
  This bachelor's thesis is the continuation of a project developed in the blockchain course of fall 2023.
  The idea of an STI tracing app was considered exciting and was chosen to be pursued further with more time.
]

===== Research
#p[
  A research was undertaken to understand the current STI situation and technical solutions in the STI context.
  The STI partner notification and Covid-19 proximity tracing were examined, with a specific focus on the technical implementation of the SwissCovid app.
  The results are presentend in @introduction and @related-work.
]

===== Concept
#p[
  A concept for _upsi_, an STI partner notification application was developed based on insights gained from the research phase and an interactive mobile app design prototype was created using Figma #footnote[https://www.figma.com/].
  Improvements to the concept and design prototype were made continuously, incorporating the feedback from STI experts.

  The results are presented in @system-architecture.
]

===== Evaluation
#p[
  Feedback was sought from leading STI experts in Switzerland, including researchers in STI prevention and treatment, STI consultation and education professionals, employees at STI test centers, and IT software company representatives who have developed applications in the STI field.

  The primary goals were to assess whether _upsi_ was a viable idea, evaluate and improve the concept, understand STI testing procedures, and determine how the app could be integrated into existing procedures and IT systems.

  The expert feedback is presentend in @results.
]

===== Technology Evaluation
#p[
  Various mobile application and blockchain technologies were evaluated to determine the most suitable components for _upsi_.
  For the mobile app, platform approaches were evaluated, feature support was considered and developer-friendliness was assessed.
  Blockchains were evaluated based on transaction price and speed, trustworthiness and developer-friendliness.
  Server frameworks were evaluated for security, feature support and developer-friendliness.

  The results are presented in @implementation.
]

===== Implementation
#p[
  A minimum viable product (MVP) was implemented that incorporated the core functionalities of the system using the evaluated technologies.
  The MVP development was based on the research findings, design prototype, and industry feedback.
  Unit tests were conducted to ensure functionality.
  The server components were deployed to Azure.

  The solution is further detailed in @implementation.
]