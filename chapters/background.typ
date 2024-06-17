#import "/components/p.typ": *
#import "/components/todo.typ": *
#import "/styles/variables.typ": *

= Background
===== Preamble
#p[
  This chapter describes the concepts and technologies underlying the developed solution.
]

== Decentralized Systems <decentral>
===== Explanation of Terms
#p[
  A decentralized system is a network architecture where control, decision-making, and data are distributed across multiple nodes rather than being concentrated in a single central entity.
  Nodes operate independently and collaborate to achieve a common goal, often leveraging technologies like blockchain.
]

===== Blockchain
#p[
  Blockchain is a decentralized and distributed transactional database technology.
  Unlike traditional centralized databases, blockchains are not relying on a single central authority.
  Instead, distributed ledgers are used where all transactions are recorded and accessible to all participants in the network. @Mendi2018

  A comparison between a centralized and a distributed database is shown in @blockchain_vs_database. \
  Users with read-only access are represented by blue circles.
  Write transactions to the database are indicated with green arrows. \
  In the centralized database, only the central authority is allowed to write, and read requests can also be blocked.
  In the distributed database, all users are allowed to read. The miners, represented by green circles, are responsible for writing data.

  #v(gap)
  #figure(
    image("/images/background/blockchain_vs_database.png", width: 85%),
    caption: [Centralized and distributed database comparison @Keogh2023]
  )<blockchain_vs_database>
]

#pagebreak(weak: true)

===== Block
#p[
  Data in a blockchain is stored in blocks. The blocks are forming a chain by storing the hash of the previous block.
  This structure is ensuring the chain immutability, as altering a single block would require changing all following blocks.
  A simple chain containing three blocks is illustrated in @blockchain, demonstrating how each block references the hash of the previous block.

  #figure(
    image("/images/background/blockchain.jpg", width: 70%),
    caption: [Simple blockchain with 3 blocks #footnote[https://money.com/what-is-blockchain/]]
  )<blockchain>
]

===== Blockchain Applications @Monrat2019
#p[
  The first and most well-known blockchain application is Bitcoin #footnote[https://bitcoin.org/], a decentralized payment network that is operating without the need for intermediaries such as banks.
  Bitcoin has led to the creation of numerous other cryptocurrencies, including Ethereum #footnote[https://ethereum.org/] and Tether #footnote[https://tether.to/].

  Since then, Blockchain technology has been applied in a variety of sectors beyond cryptocurrencies:
  - *Finance:* Digital assets, remittance, and online payments.
  - *Healthcare:* Patient records management.
  - *Supply chain management:* Transparency and traceability of goods from production to delivery.
  - *Digital identity verification:* Identity records validated without a central authority.
  - *Electronic voting:* Secure, transparent, and tamper-proof electoral processes.
]

===== Layer 2 Blockchain @eth-l2
#p[
  A Layer 2 (L2) is a separate blockchain built on top of a main blockchain (Layer 1).
  With the increasing popularity and usage of a blockchain, transaction fees rise.
  Layer 2 blockchain solutions are addressing these issues by processing transactions off-chain, which are then bundled and submitted to Layer 1 blockchain.
  This approach is providing faster transaction speed and lower fee costs.
]

===== DAO @hassan2021 @eth-dao
#p[
  A Decentralized Autonomous Organization (DAO) is a community-owned entity without centralized leadership, governed by blockchain-based rules that ensure transparency and democratized decision-making.
  DAOs are using smart contracts to enforce rules, automate decision-making processes and handle funds securely.
]

===== Smart Contract @Alharby2017
#p[
  A smart contract is executable code that is operating on the blockchain to enforce the terms of agreement between untrusted parties.
  It is ensured by the smart contract that all conditions are met and assets are released to the appropriate parties, eliminating the need for a trusted third party.
  Ethereum is the most common blockchain for smart contracts due to its programming language, _Solidity #footnote[https://soliditylang.org/]_.
]

===== Mining 
#p[
  Mining is the process by which multiple transactions are combined into a block and added to the blockchain.

  Ther are two diffrent main consensus mechanisms used by blockchains for block creation:

  - *Proof of Work (PoW):* Miners are required to solve a cryptographic puzzle.
    The first miner to solve the puzzle is allowed to add the next block to the blockchain and is rewarded for the effort.
    PoW is characterized by high energy consumption due to the significant computational power required.

  - *Proof of Stake (PoS):* Validators are chosen to create new blocks based on the amount of cryptocurrency they hold and are willing to "stake" as collateral.
    Instead of solveing puzzles, validators are selected random manner. PoS is more energy-efficient compared to PoW.
]

===== Gas
#p[
  Gas is a unit of measure used to calculate the transaction fees required to execute functions on a smart contract.
  The transaction fee is paid to the miner or validator of the block to reward their effort.
  The more actions are executed in the smart contract and the more data is saved on the blockchain, the higher the gas fee.
  The gas price depends on the network's current load.
]

#pagebreak(weak: true)

== QR Code <qr>
===== Explanation of Terms
#p[
  The Quick Response (QR) code is a two-dimensional barcode used to encode information.
  QR codes are composed of black and white squares arranged in a grid and can be read by cameras.

  An example of a QR Code is shown in @i-qr.
]

#figure(
  image("/images/background/qr.png", width: 10%),
  caption: [Example QR code]
)<i-qr>

===== Applications
#p[
  With the increasing popularity of smartphones and the greater availability of cameras and screens, the use of QR codes has also been more widespread.
  In Switzerland, QR codes are used by a variety of mobile apps to transfer data to a smartphone, either from another smartphone or from a static source.

  The following applications are using a QR code:

  - *SBB:* QR codes are used by the Swiss Federal Railways app to display train tickets or subscriptions (@i-sbb).
  - *Twint:* QR codes are utilized by a widely used mobile payment system to capture the recipient (@i-twint).
  - *SwissCovid:* During the COVID-19 pandemic, QR codes were employed to present COVID certificates and capture event codes (i-covid).
]

#align(
  center,
  block(
    width: 90%,
    grid(
      columns: 3,
      column-gutter: gap,
      [
        #figure(
          image("/images/background/sbb.jpg"),
          caption: [SBB mobile app #footnote[https://www.rts.ch/info/suisse/11154401-les-suisses-se-sont-rues-sur-les-billets-degriffes-en-2019.html]]
        )<i-sbb>
      ],
      [
        #figure(
          image("/images/background/twint.jpg"),
          caption: [Twint mobile app #footnote[https://www.twint.ch/geschaeftskunden/unsere-loesungen/qr-code-sticker/]]
        )<i-twint>
      ],
      [
        #figure(
          image("/images/background/covid.jpg"),
          caption: [SwissCovid mobile app #footnote[https://www.bit.admin.ch/bit/de/home/themen/stories/covid-zertifikat.html]]
        )<i-covid>
      ]
    )
  )
)

#pagebreak(weak: true)

== BLS digital signature <bls>
===== Explanation of Terms @Boneh2004
#p[
  The Boneh-Lynn-Shacham (BLS) digital signature is a cryptographic signature scheme, providing the functionality to combine multiple signatures into a single short signature.
  This is useful when the same document needs to be signed by multiple parties or when signatures from multiple sources need to be combined efficiently.

  Following steps are involed in creating an verifying a BLS signature:
  
  + *Signature Generation:* Multiple signatures are created on the same message using different private keys.
  + *Signature Aggregation:* The signatures are aggregated together, resulting in a single short aggregate signature.
  + *Verification:* The aggregate signature can be verified against the combined public keys of the signers and the message. This is ensuring that each message was signed by the respective private key holder.

 The BLS process is visualized in @i-bls.

  #figure(
    image("/images/background/bls.jpeg", width: 70%),
    caption: [BLS signature functionality #footnote[https://inevitableeth.com/home/concepts/bls-signatures]]
  )<i-bls>
]

#pagebreak()

== STI Tests
===== Method
#p[
  The testing procedure varies depending on which STI is being tested.
  Rapid tests are available for HIV, Syphilis, and Hepatitis C, providing results within 20 minutes.
  For other STIs, such as Chlamydia or Gonorrhea, a sample must be sent to a laboratory, and the results are available within two to five days.
]

===== Results
#p[
  For rapid tests, the STI test result is communicated by the tester in person.

  For laboratory tests, each test center has its own method of informing the individual about their results.
  These methods vary in their technical complexity. At some centers, such as Checkpoint #footnote[https://www.cpzh.ch/], the result can be accessed online using a code.

  Screenshots of the web Checkpoint web application are presentend in @ch-code and @ch-result.
]

#align(
  center,
  block(
    width: 75%,
    grid(
      columns: 2,
      column-gutter: gap,
      [
        #figure(
          image("/images/background/ch-code.png"),
          caption: [Screenshot of the Checkpoint STI test result web application code enter screen. #footnote[https://www.cpzh.ch/angebote/online-resultate/]]
        )<ch-code>
      ],
      [
        #figure(
          image("/images/background/ch-result.png"),
          caption: [Screenshot of the Checkpoint STI test result web application result page. #footnote[https://www.cpzh.ch/angebote/online-resultate/]]
        )<ch-result>
      ]
    )
  )
)