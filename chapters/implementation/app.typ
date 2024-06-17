#import "/components/p.typ": *
#import "/components/todo.typ": *
#import "/styles/variables.typ": tableLineLight
#import "@preview/tablex:0.0.8": tablex, rowspanx, colspanx, cellx, colspanx, vlinex, hlinex

== Mobile App
===== Introduction
#p[
  This section describes the mobile application technology evaluation and explains the two mobile applications in detail.
]

=== Mobile Technology Evaluation
==== Requirements
===== Cross-Platform
#p[
  The mobile app should be used by as many people as possible, regardless of the smartphone they are using.
  The most used mobile operating systems are Android and iOS. The two are holding a global market share of around 99% #footnote[https://de.statista.com/statistik/daten/studie/184335/umfrage/marktanteil-der-mobilen-betriebssysteme-weltweit-seit-2009/].
  Therefore, the mobile app should be compatible with these two operating systems.

  In the mobile app development, several approaches can be taken to support both Android and iOS:

  - *Single-Platform:* Two separate applications are developed in the native programming languages, one for Android and one for iOS. The advantages include performance, native look and feel, and straightforward access to device functions. The disadvantages are that the code needs to be written twice, maintenance is required for two codebases, and two technologies must be learned.
  - *Hybrid:* Development is done using web technologies that are rendered on the device. The advantage is a single codebase and the technologies are already familiar to many developers. The disadvantage is poorer performance and restricted access to OS features.
  - *Cross-Platform:* The code is written in a programming language that compiles to native code. The advantage is the look and feel of a native app. The disadvantage is somewhat restricted access to OS features.

  For the mobile app, the *Cross-Platform* approch is chosen. The disadvantages regarding access to OS features are considered minor since the app only utilizes very standard OS features such as the camera or push notifications.
]
  
===== Feature Support
#p[
  The mobile app must support following features either natively or through third-party libraries:

    - Create and read QR codes
    - Read data from blockchain
    - Create and verify BLS digital signatures
    - Receive push notifications
    - Send HTTP requests
    - Switch between multiple languages (l10n)
]

===== Developer Friendly
#p[
  The mobile app technology should meet some developer friendliness criteria:

  - *Age:* The technology should neither be brand new, to avoid initial teething problems, nor too old, to prevent obsolescence and to benefit from recent technological advancements.
  - *Support:* Documentation and tutorials should be available, either from the technology creators or through external sources. There should also be numerous questions on StackOverflow #footnote[https://stackoverflow.com/]<f-so>, promising quick help.
  - *Popularity:* The technology should have gained some popularity. This can be observed by the activity on StackOverflow, as well as the number of stars, forks, and contributions on GitHub #footnote[https://github.com/]<f-gh>. It should also perform well in the annual StackOverflow developer survey #footnote[https://survey.stackoverflow.co/2023/]<f-sos>.
]

==== Evaluated Technologies
===== Information
#p[
  In @app-tech-eval the evaluated mobile app technologies are summarized.
  They are all Cross-Platform technologies and are supporting the required features.
]

#figure(
  block(
    width: 80%,
    tablex(
      columns: 4,
      //columns: (2fr, 1fr, 1fr, 1fr),
      align: left + horizon,
      auto-lines: false,
      hlinex(y: 2, stroke: tableLineLight),
      hlinex(y: 3, stroke: tableLineLight),
      hlinex(y: 4, stroke: tableLineLight),
      hlinex(y: 5, stroke: tableLineLight),

      hlinex(),
      [], [*Launched By*], [*Launch Date*], [*Language*],
      hlinex(),

      [*Flutter #footnote[https://flutter.dev]*], [Google], [2017], [Dart],
      [*React Native #footnote[https://reactnative.dev/]*], [Meta \ (Facebook)], [2015], [JavaScript \ JSX (HTML) \ CSS],
      [*Kotlin Multi Platform #footnote[https://www.jetbrains.com/kotlin-multiplatform/]*], [JetBrains],  [2017 \ Stable: Q4 2023], [Kotlin],
      [*.NET Maui #footnote[https://learn.microsoft.com/en-us/dotnet/maui/]*], [Microsoft],[2022], [C\# \ XAML],

      hlinex(),
    )
  ),
  caption: "Evaluated mobile app technologies",
  kind: table,
)<app-tech-eval>

#pagebreak(weak: true)

===== Metrics
#p[
  The metrics from GitHub and StackOverflow used to assess the technology popularity and support are presented in @app-tech-metrics.
  The data is collected at the beginning of March 2024.
]

#figure(
  block(
    width: 90%,
    tablex(
      columns: 7,
      align: center + horizon,
      header-rows: 2,
      auto-lines: false,

      vlinex(x: 5, stroke: tableLineLight),

      hlinex(),
      hlinex(y: 1, stroke: tableLineLight),
      hlinex(y: 3, stroke: tableLineLight),
      hlinex(y: 4, stroke: tableLineLight),
      hlinex(y: 5, stroke: tableLineLight),

      rowspanx(2)[], colspanx(4)[*GitHub*], colspanx(2)[*StackOverflow*],
      (), [*Stars*], [*Forks*], [*Issues #footnote[Open and older than 6 Months]<f-old>*], [*Pull \ Requests @f-old*], [*Questions*], [*Survey #footnote[Admired vs Desired: https://survey.stackoverflow.co/2023/#technology-admired-and-desired]*],
      hlinex(),

      cellx(align: left + horizon)[*Flutter*],                    cellx(align: right + horizon)[161 k],  cellx(align: right + horizon)[26.3 k], cellx(align: right + horizon)[10.5 k], cellx(align: right + horizon)[12],    cellx(align: left + horizon)[Flutter: 175'086 \ Dart: 93'255],                cellx(align: left + horizon)[_Dart_ \ Usage: 3.13% \ _Flutter_ \ Usage: 9.21% \ Desired: 7% \ Admired: 59%],
      cellx(align: left + horizon)[*React \ Native*],             cellx(align: right + horizon)[115 k],  cellx(align: right + horizon)[23.8 k], cellx(align: right + horizon)[461],    cellx(align: right + horizon)[41],    cellx(align: left + horizon)[React Native: 136'593],                          cellx(align: left + horizon)[Usage: 9.14%],
      cellx(align: left + horizon)[*Kotlin \ Multi \ Platform*],  cellx(align: right + horizon)[47.2 k], cellx(align: right + horizon)[5.5 k],  cellx(align: right + horizon)[N/A],    cellx(align: right + horizon)[142],   cellx(align: left + horizon)[Kotlin Multi Platform: 1535 \ Kotlin: 94'587],   cellx(align: left + horizon)[_Kotlin_ \ Usage: 9.7% \ Desired: 12% \ Admired: 66.77%],
      cellx(align: left + horizon)[*.NET \ Maui*],                cellx(align: right + horizon)[21.3 k], cellx(align: right + horizon)[1.5 k],  cellx(align: right + horizon)[2.2 k],  cellx(align: right + horizon)[41],    cellx(align: left + horizon)[.NET MAUI: 6284\ C\#: 1'623'115],                cellx(align: left + horizon)[_.NET MAUI_ \ Usage: 2.46% \ _C\#_ \ Usage: 29.16 % \ Desired: 21% \ Admired: 63%],

      hlinex(),
    )
  ),
  caption: "Evaluated mobile app technology GitHub and Stackoverflow metrics",
  kind: table,
)<app-tech-metrics>

#pagebreak(weak: true)

==== Desicion
===== Criteria
#p[
  The decision is based on criteria that were derived from the requirements, with the inclusion of a personal preference for working with this technology.

  The criteria are as follows:

  - Age
  - Support: Based on the StackOverflow metrics.
  - Community: Based on the GitHub metrics.
  - Programming Language Support: Based on the programming language StackOverflow metrics.
  - Personal Preference
]

===== Rating
#p[
  For each technology a value ranging from 1 to 3 is assigned to each criterion.
  These values are manually estimated based on the information presented in @app-tech-eval and @app-tech-metrics, without the use of complex calculations.
  Each criterion is assigned a multiplication factor to weight its importance.
]

===== Matrix
#p[
  The decision matrix is displayed in @app-tech-desicion, presenting the assigned values and multiplication factors, as well as the calculated results.
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
      vlinex(x: 6, stroke: tableLineLight),

      hlinex(),
      [], [*Age*], [*Support*], [*Community*], [*Language Support*], [*Personal Preference*], [*Result*],
      hlinex(stroke: tableLineLight),

      cellx(align: left + horizon)[Factor], [1], [0.5], [0.5], [0.5], [1], [],
      hlinex(),

      cellx(align: left + horizon)[*Flutter*],                [3], [3], [3], [2], [3], [10],
      cellx(align: left + horizon)[*React Native*],           [3], [2], [3], [3], [1], [8],
      cellx(align: left + horizon)[*Kotlin Multi Platform*],  [1], [1], [1], [2], [2], [5],
      cellx(align: left + horizon)[*.NET Maui*],              [2], [1], [1], [3], [3], [7.5],

      hlinex(),
    )
  ),
  caption: "Mobile app technology desicion matrix",
  kind: table,
)<app-tech-desicion>

===== Summary
#p[
  The highest overall score is achieved by Flutter, resulting in its selection as the chosen mobile app technology.
]

#pagebreak(weak: true)

=== Data Exchange Technology Evaluation
===== QR Code
#p[
  QR codes are the technology chosen for data exchange between users and testers.
  QR codes are easy to implement for developers and have gained significant recognition through various applications, see @qr.
  Both sender and receiver remain anonymous using QR codes, and only the desired data is exchanged.
]

===== Evaluated Technologies
#p[
  In addition to QR codes, the following technologies were evaluated:

  - *NFC:* Near Field Communication#footnote[https://en.wikipedia.org/wiki/Near-field_communication] allows for the contactless exchange of data over short distances.
    NFC is used for contactless smartphone payments and therefore gained a certain level of popularity.
    The application in _upsi_ would be very user friendly, as two smartphones simply could be held next to each other for the data exchange.
    NFC is not used in _upsi_, because the implementation into applications is very challenging, and two-way data exchange is not supported#footnote[https://stackoverflow.com/questions/16712741/is-it-possible-to-make-two-way-communication-between-two-devices-via-nfc].
  - *Bluetooth:* Data can be transmitted wirelessly via Bluetooth#footnote[https://en.wikipedia.org/wiki/Bluetooth].
    It is often used for pairing computers or smartphones with electronic devices and therefore gained a certain level of popularity.
    Bluetooth is not suitable for _upsi_, because pairing two smartphones requires some effort and the use of QR codes was considered more user-friendly.
]

=== User App <user-app>
===== Key Handling
#p[
  A new pair of private and public keys is periodically generated by the user app and stored locally on the device.
  The regeneration of keys is performed to enhance user privacy.
  When a public key of a user is made public, only the STI infections occurring during the validity period of the key can be attributed to the user.
  The validity period is set to 30 days, which is considered a reasonable timeframe.

  Since the keys are used for BLS signatures, they consist of a 49-byte public key and a 32-byte private key.
  For easier development, the keys are stored as UTF-8 strings and not as hex byte arrays, requiring 98 bytes for the public and 64 bytes for the private key.

  Example private key: \ `180d75e97a8d531ffd2e2daa0c5c47805439f62473f2bc17273361394804ba3c` \

  Example public key: \ `0x94dbee4054676a2bd9fcc7c1d0d53bb4a62da076a1b91f34947b6115ba1a98b06d6a7c032393782 ce581cc1816274410`
]

===== Contact Exchange
#p[
  On the home screen of the user app, the contact exchange QR code is displayed, and the camera can be activated via a button to scan QR codes from other users.
  The contact exchange QR code contains the currently valid public key and a timestamp.
  The timestamp is verified by the recipient to ensure it is within a valid time period.
  Otherwise, the contact is discarded.
  This process ensures that no outdated and potentially invalid contacts are saved.
  The contact QR code is regenerated every 5 seconds and is valid for 15 seconds.
  If the contact is valid, it is stored locally on the device.

  The contact exchange QR code format in JSON:

  ```json
    {
        "type": "contact",
        "data": {
            "publicKey": "<public key>",
            "dateTime": "<UTC timestamp: yyyy-MM-ddTHH:mm:ss.SSSZ>"
        }
    }
  ```

  Screenshots of the home screen with the contact exchange QR code and the camera on are displayed in @user-qr and @user-camera.
]

#align(
  center,
  block(
    width: 65%,
    grid(
      columns: 2,
      column-gutter: 10 * gap,
      [
        #figure(
          image("/images/implementation/app/user-qr.jpg"),
          caption: [Screenshot of the home screen with contact exchange QR code]
        )<user-qr>
      ],
      [
        #figure(
          image("/images/implementation/app/user-camera.jpg"),
          caption: [Screenshot of the home screen with camera activated]
        )<user-camera>
      ]
    )
  )
)

#v(2*gap)
===== Infection Verification
#p[
  In the event of a positive test result, an infection QR code can be generated by scanning the Proof of Attendance (PoA) QR code in the tester app.
  The infection QR code is then scanned by the tester to publish the infection.

  Screenshot of the PoA QR code in the tester app and the infection QR code are displayed in @tester-qr and @infection-qr.

  The PoA QR code contains the test time and the SHA-256 hashed email of the tester.
  As with the contact exchange QR code, the PoA QR code is only valid for 15 seconds.

  The PoA QR code format in JSON:

  ```json
    {
        "type": "poa",
        "data": {
            "tester": "<SHA-256 tester mail>" ,
            "testTime": "<UTC timestamp: yyyy-MM-ddTHH:mm:ss.SSSZ>"
        }
    }
  ```

  The infection QR code contains multiple public keys of the user, as well as the aggregated BLS signature.
  The infection is signed with all private keys corresponding to the public keys included in the infection event QR code.
  The BLS scheme allows for the publication of a single signature while still ensuring the validity of all keys.
  The message used for signing is the data contained in the PoA QR code, the hash of the tester, and the test timestamp.

  The number of public keys determines how far back in time contacts can be to receive the partner notification.
  The number of public keys is always fixed. If the user does not have enough keys, new ones are generated.
  This approach enhances privacy by preventing inferences about app usage duration based on the number of keys.
  Due to the space limitations on the smartphone the infection QR is readable on the test device up to 7 public keys.
  This is furhter discussed in the limitations @limitations.

  Infection QR code format in JSON:
```json
  {
      "type": "infection",
      "data": {
          "infectee": [
              "<public key 1>",
              "<public key 2>",
              ...
              "<public key n>"
          ],
          "tester": "<SHA-256 tester mail>",
          "testTime": "<UTC timestamp: yyyy-MM-ddTHH:mm:ss.SSSZ>",
          "signature": "<BLS signature>"
      }
  }
```
]
#align(
  center,
  block(
    width: 65%,
    grid(
      columns: 2,
      column-gutter: 10 * gap,
      [
        #figure(
          image("/images/implementation/app/tester-qr.jpg"),
          caption: [Screenshot of the tester app home screen with the PoA QR code]
        )<tester-qr>
      ],
      [
        #figure(
          image("/images/implementation/app/infection-qr.jpg"),
          caption: [Screenshot of the infection QR code]
        )<infection-qr>
      ]
    )
  )
)

#v(2 * gap)

===== Exposure Notification
#p[
  Newly published infections are periodically read from the blockchain, to check for possible exposures.
  By verifying the signature, it is ensured that the infection is comming from a trusted tester and that the infected person attended the test.

  Each STI has a notification period.
  If the infected individual is in the saved contacts and within the notification period, the user is receiving a partner notification push on the smartphone.
  Upon the next app opening, an exposure warning is displayed on the home screen.
  Clicking on this warning is opening an info screen with details about the STI and guidance.

  Screenshots of the push notification, the exposure warning and the STI info screen are displayed in @push, @home-exposure and @sti-info.

  Invented STIs are used during app development.
  For real STIs, the notification periods and info screen content should be defined by STI experts.

  To start the periodic reading of the new infections on the blockchain, Flutter Workmanager was utilized #footnote[https://pub.dev/packages/workmanager].
  The Workmanager allows for the execution of code in the background.
  With Android, a job can be executed every 15 minutes.
  Some limitations were observed with the Workmangager, further described in limitations @limitations.

  To access the blockchain, an API from Infura #footnote[https://www.infura.io/] is used.
  Infura is a managed service that provides access to various blockchain networks.
  With the free tier, it is possible to send 100,000 requests per day.
]
#align(
  center,
  block(
    width: 90%,
    grid(
      columns: 3,
      column-gutter: 5 * gap,
      [
        #figure(
          image("/images/implementation/app/push.jpg"),
          caption: [Screenshot of the partner notification push]
        )<push>
      ],
      [
        #figure(
          image("/images/implementation/app/exposure.jpg"),
          caption: [Screenshot of the home screen with the possible exposure warning]
        )<home-exposure>
      ],
      [
        #figure(
          image("/images/implementation/app/sti-info.jpg"),
          caption: [Screenshot of the STI info screen]
        )<sti-info>
      ]
    )
  )
)

#v(2 * gap)

===== Multilingual
#p[
  The displayed texts in the app are available in multiple languages and are set based on the operating system's language.
  Texts are currently available in English and German.
  Only a small effort is required to add a new language by adding the translations in an `.arb` #footnote[https://github.com/google/app-resource-bundle] file.
]

===== Secrets
#p[
  An API key is used to identify the app with Infura.
  The API key is secret and should not be published.
  To prevent it from being found in the source code, the API key is read from an environment `.env` file#footnote[https://pub.dev/packages/flutter_dotenv] that is not checked into the Git repository.
  However, the key could be extracted from the release binary.
  To prevent this code obfuscation #footnote[https://docs.flutter.dev/deployment/obfuscate] should be used when publishing the app.
]

#pagebreak(weak: true)

=== Tester App
===== Test PoA
#p[
  On the home screen of the tester app, the PoA QR code is displayed, and the camera can be activated via a button to scan the infection QR code from users.

  This process is described in detail in @user-app.
]

===== Publish Infection
#p[
  The signed infection received from the user is sent to the server via an HTTP POST request.

  Currently, the STI cannot be selected, and a random STI is chosen for the publication. This is furhter discussed in the limitations @limitations.
]

===== Login
#p[
  The tester authenticates with the server via login.
  Only registered testers can publish infections through the server.

  The login feature has not been implemented. Further described in limitations @limitations.
]

=== Design Prototype
===== Figma Screenshots
#p[
  A design prototype for the user app was created with Figma#footnote[https://www.figma.com/] prior to implementation.
  Figma allows screens to be compiled into an interactive presentation.
  The _upsi_ design prototype can be viewed here: https://www.figma.com/proto/RzrlqXuf1hCJBPQkBAe6Jn/upsi---design-prototype.

  All created screens, including some color variations, of the design prototype are available in the appendix at @figma.
]

===== Color Scheme
#p[
  The color scheme is based on two colors:

  - Yellow #rect(fill: rgb("#FFB967")) hex code: \#FFB967
  - Red #rect(fill: rgb("#FF7979")) hex code: \#FF7979

  In the user app, the primary color is yellow.
  Warnings and exceptional actions, such as the exposure warning or the verify test screen, are displayed in red.
  In the tester app, the primary color is red.
]

===== Material Design
#p[
  Material Design#footnote[https://m3.material.io/] components were used to achieve consistent and modern-looking screens.
]

=== Application Architecture
==== Clean Architecture
#p[
  The application architecture of the mobile apps is based on clean architecture#footnote[https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html] to ensure a clear separation of concerns, promote maintainability, and enhance testability.

  The application is divided into four layers:

  - *Domain Layer:* Containing the core business logic, including entities and services. It is isolated from other layers to ensure that the business rules are not affected by changes in the external environment.
  - *Application Layer:* Handling the coordination of the domain logic.
  - *Presentation Layer:* Containing screens and UI components.
  - *Data Layer:* External data, such as APIs and local storage.
]

==== Core Package
#p[
  Since the tester and user mobile app share some of the same code, these source files are extracted into a separate package, which is loaded as a dependency by both apps.
  This approach ensures a single codebase and eliminates duplicated code.
]

=== Libraries
===== Riverpod Framework
#p[
  The Riverpod framework #footnote[https://riverpod.dev/] is used for easy state management and dependency injection across the application.
]

===== Freezed
#p[
  Freezed #footnote[https://pub.dev/packages/freezed] is used to simplify the creation of classes and minimize boilerplate code by generating common features such as value equality, copy methods, and pattern matching.
]

=== Testing
===== Unit Tests
#p[
  The business logic is tested using unit tests to enhance code quality and reliability.
  Mocks are used to simulate dependencies, allowing each unit to be tested independently.

  Unit test report of from the GitHub Pipeline can be found in the appendix at @figma.
]

#pagebreak(weak: true)

=== CI/CD
===== GitHub Pipline
#p[
  A GitHub pipeline is set up to automatically test, build, and release the mobile apps upon push to the main branch.

  A screenshot of a successfully run pipeline is diplayed in @pipeline.
]

#figure(
  image("/images/implementation/app/pipeline.png", width: 95%),
  caption: [Screenshot of a successfully run GitHub pipline for the mobile apps]
)<pipeline>

#v(2 * gap)

===== Release
#p[
  The GitHub pipline is creating a release with the android mobile apps on GitHub.
  The `.aab` files to install the android apps on a smartphone can be downloaded under: https://github.com/LaurinZubler/ba-app/releases

  A sceenshot of an app release on GitHub is displayed in @release.
]

#figure(
  image("/images/implementation/app/release.png", width: 75%),
  caption: [Screenshot of GitHub releases with the android mobile apps]
)<release>
