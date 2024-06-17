#import "/components/p.typ": *
#import "/components/todo.typ": *

== Server
#p[
  This section describes the blockchain technology evaluation and explains the server application in detail.
]

=== Technology Evaluation
===== .NET Core C\#
#p[
  An extensive technology evaluation was not conducted for the server.
  .NET Core with C\# was selected directly due to the author's preference over Java and Node.js.
  The author had never worked with .NET C\# before and wanted to gain experience with this technology.
]

=== Functionality
===== Publish Infection Event
#p[
  The server is providing an API for the testers to write infection to the blockchain.
  The API can only be called by registered and logged-in testers.
  Wallet addresses for publishing the infection to the blockchain are stored in a Azure Secure Vault.
  Since the tester is identified through the login, the associated test center is known, and the corresponding wallet address is selected.
  The login feature has not been implemented. This is furhter discussed in the limitations @limitations.
]

=== CI/CD
===== Azure
#p[
  The server application is deployed to Azure App Services.
  Azure was selected as the cloud provider because the university is using Azure and covers the hosting costs.
]

===== GitHub pipeline
#p[
  A GitHub pipeline is set up to automatically build and deploy the server application to Azure upon push to the main branch.

  A screenshot of a successfully run pipeline is diplayed in @pipeline-s.
]

#figure(
  image("/images/implementation/server/pipeline.png", width: 60%),
  caption: [Screenshot of a successfully run GitHub pipline of the server application]
)<pipeline-s>

