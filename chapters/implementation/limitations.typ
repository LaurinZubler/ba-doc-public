#import "/components/p.typ": *
#import "/styles/variables.typ": *

== Limitations <limitations>
===== Introduction
#p[
  Some features could not be implemented due to time constraints.
  The user mobile app and core functionalities were prioritized to ensure the application's primary objectives are met.
]

===== Trigger Blockchain Reading
#p[
  To start the periodic reading of new infections on the blockchain, Flutter Workmanager #footnote[https://pub.dev/packages/workmanager] was utilized.
  This solution should be replaced by another method, as the performance of the Workmanager on iOS devices is uncertain #footnote[https://medium.com/vrt-digital-studio/flutter-workmanager-81e0cfbd6f6e], and on Android devices, a job can only be executed every 15 minutes.
  For demonstration and testing purposes, it would be beneficial to read the blockchain more frequently.

  An attempt was made to register multiple background jobs with an initial delay so that the reading is triggered every 15 seconds.
  However, this caused the app to crash. A screenshot of the error message is presented in @upsi-error.

  #figure(
    image("/images/implementation/limitations/error.jpg", width: 35%),
    caption: [Screenshot of the popup indicating the app crash]
  )<upsi-error>

  #v(gap)

  The originally intended solution to trigger the blockchain reading involved a server service that periodically sends a silent push notification.
  Upon receiving the silent push, the new infections are read. This was not implemented due to time constraints.

  The system architecture with a silent push is illustrated in @architecture-silent-push.
]
#figure(
  image("/images/implementation/limitations/architecture-silent-push.png", width: 91%),
  caption: [System architecture using silent push notifications]
)<architecture-silent-push>

===== Infection QR Code
#p[
  The infection QR code contains multiple public keys of the infected person to cover a certain time period in which contacts get notified.
  Since the size of the QR code is limited by the size of the smartphone screen, the QR code becomes smaller as more public keys are included.
  Beyond a certain number, the QR code cannot be read by the tester's smartphone.

  With the developer smartphone, up to 7 keys in the QR code could be read.
  However, this can vary on other smartphones depending on the screen size and camera.
  To ensure reliability, the number of public keys has been set to 5.
  With the current setting with new keys every 30 days and 5 keys per infection, the notification period is approximately 5 months.
  Whether this is sufficient must be assessed by STI experts.

  If the notification period needs to be extended, it is necessary to find a different technical solution.
  Here are some suggestions:

  - *Multiple QR Codes:* The infection data can be split and transmitted to the tester in several steps. This process would have to be reflected in the apps accordingly, in a user-friendly way.
  - *Colored QR Codes:* @melgar2012 The storage capacity of a QR code can be increased by using multiple colors instead of just black and white. This makes the QR code smaller and easier to read.
  - *Reduce Data:* Instead of encoding the QR code data in UTF-8 JSON, it could be represented with a more data-efficient encoding, such as Binary JSON #footnote[https://en.wikipedia.org/wiki/BSON]. This makes the QR code smaller and easier to read.
]

===== Exposure Warning
#p[
  In the screen design prototype, it was planned to display the exposure warning in an expandable bottom container.
  When expanded, all infection exposure warnings are shown.
  This component introduces some complexity as a dynamic list is displayed in a resizable container.

  During implementation, this could not be achieved due to a limited understanding of Flutter UI development.
  The feature was prioritized as low-level and replaced with a simple button.
  Upon clicking, the info screen for the most recently received STI is appearing.

  With more time for debugging, the implementation of the expandable bottom container is certainly possible.
]

===== Login
#p[
  The login functionality was not implemented.
  Currently, the API for publishing infections is public.
  Since only the testnet of the blockchain is being used, this is considered not particularly problematic.
]

===== Published Infection
#p[
  At the moment, an STI is selected randomly before publishing the infection, and the tester cannot select the STI.
  The process should be revised with the involvement of testing personnel to achieve a user-friendly solution.
]

===== iOS
#p[
  During development, the focus was on Android devices.
  iOS apps can only be built with a Mac computer, and neither an iOS smartphone nor a Mac computer was available.
  Since Flutter was used, extending the app to iOS should require minimal effort.
]