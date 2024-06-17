#import "/components/p.typ": *
#import "/components/todo.typ": *
#import "@preview/tablex:0.0.8": tablex, rowspanx, colspanx, cellx, colspanx, vlinex, hlinex

== Blockchain
===== Introduction
#p[
  This section describes the blockchain technology evaluation and explains the implemented smart contract in detail.
]

=== Technology Evaluation
==== Requirements
===== Consensus Mechanism
#p[
  The consensus mechanism should be an energy efficient variant, such as Proof of Stake, rather than Proof of Work.
]

===== Smart Contracts
#p[
  The blockchain should support smart contracts to facilitate the storage of infections on the blockchain.
]

===== Transaction Price
#p[
  The blockchain gas fees should be low to minimize the cost of storing infection data.
]

===== Market Cap
#p[
  The blockchain should have a high market cap to ensure its long-term viability.
]

===== Developer Friendly
#p[
  The blockchain technology should meet several developer-friendly criteria:

  - _Age:_ The technology should not be brand new to avoid initial teething problems.
  - _Support:_ Documentation and tutorials should be available, either from the technology creators or through external sources.
  - _Popularity:_ The technology should have gained some popularity. This can be observed by the activity on StackOverflow, as well as the number of stars, forks, and contributions on GitHub#footnote[https://github.com/].
]

#pagebreak(weak: true)

==== Evaluated Technologies
===== Information
#p[
  In @chain-tech-eval the evaluated blockchain technologies are summarized.
  All of them are using an energy efficient consensus mechanism.
]

#figure(
  block(
  width: 98%,
    tablex(
      columns: 9,
      align: left + horizon,

      auto-lines: false,
      hlinex(y: 2, stroke: tableLineLight),
      hlinex(y: 3, stroke: tableLineLight),
      hlinex(y: 4, stroke: tableLineLight),
      hlinex(y: 5, stroke: tableLineLight),
      hlinex(y: 6, stroke: tableLineLight),
      hlinex(y: 7, stroke: tableLineLight),
      hlinex(y: 8, stroke: tableLineLight),
      hlinex(y: 9, stroke: tableLineLight),

      hlinex(),
      [], [*Abbr.*], [*Ranking #footnote[https://coinmarketcap.com/]*], [*Market Cap*], [*Nodes*], [*C. M. #footnote[Consensus Mechanism]*], [*Contract Language*], [*Gas Price*], [*Speed*],
      hlinex(),

      [*Ethereum #footnote[https://ethereum.org]*],       [ETH],   [1],  [\$410B],  [PoS],               [Solidity], [6902], [high], [to 5min],
      [*Solana #footnote[https://solana.com/]*],          [SOL],   [5],  [\$58.8B], [PoS],               [Rust],     [N/A],  [low],  [instant],
      [*Polygon #footnote[https://polygon.technology/]*], [MATIC], [15], [\$10B],   [PoS],               [Solidity], [317],  [low],  [2.3s],
      [*Dfinity #footnote[https://dfinity.org/]*],        [ICP],   [20], [\$6.1B],  [PoUW],              [Motoko],   [559],  [N/A],  [1s],
      [*Aptos #footnote[https://aptoslabs.com/]*],        [APT],   [29], [\$4.2B],  [PoS],               [Move],     [400],  [low],  [5s],
      [*Optimism #footnote[https://www.optimism.io/]*],   [OP],    [31], [\$3.9B],  [Optimistic Rollup], [Solidity], [N/A],  [low],  [1s],
      [*Arbitrum #footnote[https://arbitrum.io/]*],       [ARB],   [46], [\$2.6B],  [Optimistic Rollup], [Solidity], [N/A],  [low],  [instant],
      [*Sui #footnote[https://sui.io/]*],                 [SUI],   [52], [\$1.9B],  [Delegated PoS],     [Move],     [451],  [low],  [instant],
      [*Tezos #footnote[https://tezos.com/]*],            [XTZ],   [77], [\$1.3B],  [PoS],               [LIGO],     [N/A],  [low],  [15s],

      hlinex(),
    )
  ),
  caption: "Evaluated blockchain technologies",
  kind: table,
)<chain-tech-eval>

#pagebreak(weak: true)

===== GitHub Metrics
#p[
  The GitHub metrics used to assess the technology popularity and support is presented in @chain-tech-metrics.
  The data is collected at the beginning of March 2024.
]

#figure(
  block(
    width: 90%,
    tablex(
      // columns: (auto, auto, auto, auto, auto, auto, 1fr),
      columns: 5,
      align: right + horizon,
      auto-lines: false,

      hlinex(y: 2, stroke: tableLineLight),
      hlinex(y: 3, stroke: tableLineLight),
      hlinex(y: 4, stroke: tableLineLight),
      hlinex(y: 5, stroke: tableLineLight),
      hlinex(y: 6, stroke: tableLineLight),
      hlinex(y: 7, stroke: tableLineLight),
      hlinex(y: 8, stroke: tableLineLight),
      hlinex(y: 9, stroke: tableLineLight),

      hlinex(),
      [], [*Stars*], [*Forks*], [*Issues #footnote[Open and older than 6 Months]<f-old2>*], [*Pull Requests @f-old2*],

      hlinex(),
      cellx(align: left + horizon)[*Ethereum*], [45.3k], [18.7k], [196],  [33],
      cellx(align: left + horizon)[*Solana*],   [11.5k], [3.5k],  [470],  [0],
      cellx(align: left + horizon)[*Polygon*],  [944],   [455],   [0],    [0],
      cellx(align: left + horizon)[*Dfinity*],  [1.4k],  [279],   [N/A],  [N/A],
      cellx(align: left + horizon)[*Aptos*],    [5.7k],  [3.4k],  [182],  [9],
      cellx(align: left + horizon)[*Optimism*], [4.9k],  [2.5k],  [30],   [1],
      cellx(align: left + horizon)[*Arbitrum*], [628],   [304],   [17],   [6],
      cellx(align: left + horizon)[*Sui*],      [5.6k],  [10.8k], [539],  [181],
      cellx(align: left + horizon)[*Tezos*],    [309],   [N/A],   [2397], [N/A],
      hlinex(),
    )
  ),
  caption: "Evaluated blockchain technology GitHub metrics",
  kind: table,
)<chain-tech-metrics>


==== Desicion
===== Criteria
#p[
  The decision is based on criteria that were derived from the requirements, with the inclusion of a personal preference for working with this technology.

  The criteria are as follows:

  - Transaction Price
  - Transaction Speed
  - Marcet Cap
  - Community: Based on the GitHub metrics.
  - Personal Preference
]

===== Rating
#p[
  For each technology a value ranging from 1 to 3 is assigned to each criterion.
  These values are manually estimated based on the information presented in @chain-tech-eval and @chain-tech-metrics, without the use of complex calculations.
  Each criterion is assigned a multiplication factor to weight its importance.
]

#pagebreak(weak: true)

===== Matrix
#p[
  The decision matrix is displayed in @chain-tech-desicion, presenting the assigned values and multiplication factors, as well as the calculated results.
]
#figure(
  block(
    width: 80%,
    tablex(
      columns: 7,
      align: center + horizon,
      auto-lines: false,

      hlinex(y: 3, stroke: tableLineLight),
      hlinex(y: 4, stroke: tableLineLight),
      hlinex(y: 5, stroke: tableLineLight),
      hlinex(y: 6, stroke: tableLineLight),
      hlinex(y: 7, stroke: tableLineLight),
      hlinex(y: 8, stroke: tableLineLight),
      hlinex(y: 9, stroke: tableLineLight),
      hlinex(y: 10, stroke: tableLineLight),

      vlinex(x: 6, stroke: tableLineLight),

      hlinex(),
      [], [*Price*], [*Speed*], [*Marcet Cap*], [*Community*], [*Personal Preference*], [*Result*],
      hlinex(stroke: tableLineLight),

      cellx(align: left + horizon)[Factor], [1.5], [0.5], [1], [1], [1.5], [],
      hlinex(),

      cellx(align: left + horizon)[*Ethereum*], [1], [1], [3], [3], [3], [12.5],
      cellx(align: left + horizon)[*Solana*],   [3], [3], [3], [2], [2], [14],
      cellx(align: left + horizon)[*Polygon*],  [3], [2], [3], [1], [3], [14],
      cellx(align: left + horizon)[*Dfinity*],  [3], [3], [3], [1], [1], [11.5],
      cellx(align: left + horizon)[*Aptos*],    [3], [2], [2], [2], [2], [12.5],
      cellx(align: left + horizon)[*Optimism*], [3], [3], [2], [2], [3], [14.5],
      cellx(align: left + horizon)[*Arbitrum*], [3], [3], [2], [1], [3], [13.5],
      cellx(align: left + horizon)[*Sui*],      [3], [3], [1], [2], [2], [12],
      cellx(align: left + horizon)[*Tezos*],    [3], [1], [1], [1], [1], [8.5],

      hlinex(),
    )
  ),
  caption: "Blockchain technology desicion matrix",
  kind: table,
)<chain-tech-desicion>

===== Summary
#p[
  The highest overall score is achieved by Optimism, resulting in its selection as the chosen blockchain technology.
  Optimism is an Ethereum Layer 2 blockchain.
]

=== Smart Contract
===== Deployment
#p[
  The smart contract is deployed to the Optimism Sepolia testnet and all transactions can be viewed on: https://sepolia-optimistic.etherscan.io/address/0x5059d4FC4e72C7f5dA98be7e32BA1F9a16546904
]

===== DAO
#p[
  As only the contract owner can grant the event emitter role, and therefore decides which test centers can publish infections, a concentration of power is held by the contract owner.
  This contradicts the fundamental principle of decentralization. However, it is essential to ensure that only verified test centers can publish infections.

  This power of the owner can be weakened by transferring the contract ownership to a decentralized autonomous organization (DAO).
  Within the DAO, multiple actors could democratically decide on the inclusion of new test centers.
  These DAO actors could be the already verified test centers.
]

#pagebreak()

==== Functionalities
===== Emit Infection Event
#p[
  The main function of the smart contract is to emit an infection event.

  The function's parameters are:
  - Infection
  - Infectees
  - Tester
  - Test time
  - Signature

  The test time is saved as a Unix timestamp using a 256-bit unsigned integer, representing the number of seconds passed since 01.01.1970.
  Strings are used for the other parameters to simplify development. As all parameters contain hex values, byte arrays could be used to reduce storage size and lower the gas fee.

  The function emits an `InfectionEvent` event, making the infection information publicly accessible on the blockchain.
]

===== Event Emitter Role
#p[
  The Event Emitter Role is defined by the contract and only addresses with this role can emit infection events.
  This role can be granted or revoked for specific addresses by the contract owner.

  This is ensuring that only trusted test centers can publish infections.
]

===== Ownership
#p[
  The ownership of the contract can be transferred by the current owner to a new address, making the new address the contract owner.
]

==== Development
===== Hardhat
#p[
  Hardhat #footnote[https://hardhat.org/] was used as a development environment for the smart contract.
  It facilitated unit testing, deployment, and contract verification.
]

===== OpenZeppelin
#p[
  OpenZeppelin #footnote[https://www.openzeppelin.com/] is providing libraries for smart contracts.
  The Ownable and AccessControl libraries were utilized.
]
