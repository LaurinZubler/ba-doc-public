#import "/components/p.typ": *
#import "/components/todo.typ": *

== System Architecture <system-architecture>
===== Introduction
#p[
  In this section the _upsi_ system requirements, challenges and overview are furhter detailed.
]

=== System Requirements <sys-req>
===== Decentralized
#p[
  Following the DP-3T approach, contact data should be stored locally on the user's device. This prevents the misuse of sensitive data.
]

===== Anti Authoritarian
#p[
  No single organization should have control over the infection event data. This ensures the longevity of the system and allows other parties to join. By distributing control, the integrity and trustworthiness of the system are maintained.
]

===== Privacy
#p[
  No user data should be stored. Only in the event of an infection is the necessary data published.
]

===== User Friendly
#p[
  The use of the app should not require technical knowledge and should be free of charge. This eliminates entry barriers, ensuring that as many people as possible use the app.
]

===== Trustworthy Partner Notification
#p[
  Only verified test results should allow for sending partner notifications. This guarantees the trustworthiness of the system.
]

===== Open
#p[
  The source code should be fully open-source, allowing for transparency and community trust.
]

===== Consent
#p[
  Users must always provide consent before any action is taken. No operations are performed without the user's knowledge, ensuring transparency and trust in the system's processes.
]

=== Challenges
===== Blockchain
#p[
  A blockchain is necessary to accomplish decentralized data storage. Blockchain usage requires technical knowledge, handling wallets and cryptocurrencies. Additionally, saving data to a blockchain incurs transaction fees. This contradicts the requirements and cannot be expected of the users.
]

===== Trust
#p[
  To ensure trustworthy partner notification, some identity in the system must be trusted. This cannot be the user, as no user data is stored for privacy reasons, and therefore no login is possible.
]

#pagebreak(weak: true)

=== Overview
===== System Architecture
#p[
  The system architecture for _upsi_ is based on the DP-3T protocol used for the SwissCovid app.

  Some deviations have been made to the SwissCovid architecture:

  - *Blockchain:* Instead of a central database, a blockchain is used for storing infection events, to prevent data sovereignty by a single actor.
  - *Keys:* No RPIs are used, the public keys are exchanged directly.
    This is possible because the public keys are not constantly broadcasted via Bluetooth.
    Additionally, the keys are valid for a longer period, assuming that fewer contacts and infections occur.
   - *Partner Notification:* In DP-3T, upon a positive test, the infected person receives a code from the health authority to trigger partner notification.
   For positive STI tests, no written document is issued, as these often take place anonymously.
   To prevent false partner notifications, only test center employees are allowed to trigger them, and the user's test presence is verified by signing a proof of attendance.

  The _upsi_ system overview is visualized in @overview-diagram and further explained on the next page.
]

#figure(
  image("/images/solution-design/upsi_overview.png", width: 95%),
  caption: [_upsi_ system overview]
)<overview-diagram>

#pagebreak(weak: true)

==== Actors
===== User
#p[
  At a sexual contact, users exchange their public keys with other users. This interaction is labeled with _contact exchange_ in @overview-diagram.
  Users are notified if someone they have been in contact with is tested positive, labeled with _possible exposure_ in @overview-diagram.
]

===== Tester
#p[
  Testers are the trusted entities in the system.
  Testers conduct STI tests and publish infections to the blockchain.
  They are also responsible for paying the associated gas fees.
]

===== Lab
#p[
  Laboratory tests require sending test samples to the laboratory for analysis.
  The integration of laboratories is not part of this bachelor's thesis.
]

==== Test
===== Procedure
#p[
  If a user is tested positive for an STI, the users public keys are handed over to the tester, and the test attendance is verivied by signing the Proof of Attendance (PoA).
  This process is labeled as _sign PoA_ and _public keys handover_ in @overview-diagram.
]

==== Key Handling
===== Private / Public Keys
#p[
  Users possess private and public keys.
  The private key is used to verify the test, ensuring that the data written to the blockchain by the tester is accurate.
]

===== Regeneration
#p[
  Keys are regenerated at regular intervals to enhance privacy.
  This approach ensures that when a key is published, the entire STI history of a person is not revealed, thus protecting user privacy over time.
]

==== Blockchain
===== Pubilsh Infections
#p[
  STI infections are saved to the blockchain by the tester.
  Since all data on a blockchain is publicly accessible, the STI incident is thereby published.
  Users can read the infections on the blockchain and check if they have been in contact with the infected person.
]

===== Why Blockchain?
#p[
  The _upsi_ system would also work with a centralized database to save the infection data.
  However, the blockchain offers several advantages over a traditional database.

  - *Anti Authoritarian:* The use of blockchain is eliminating the need for a central authority, reducing the risk of data misuse and enhancing trust among users.
    Without a single entity controlling the data, transparency and security are ensured.
  - *Open Access:*Open access is provided by blockchain technology, meaning the system is not restricted to a specific country or company.
    Other systems can be built using the same infection data on the blockchain, enabling a global partner notification system.
  - *Durability:* The blockchain is still functioning and guaranteeing the access to the data even if _upsi_ is out of service.
  - *Privacy by Design:* As all data is publicly visible on the blockchain, the system is designed to operate without storing any sensitive information.
    This approach is preventing user data misuse and the occurrence of data leaks.
]
