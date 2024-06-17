#import "/components/p.typ": *
#import "/components/todo.typ": *

= Conclusion
===== Preamble
#p[
  This chapter discusses the achieved results during this bachelor's thesis and suggests steps to develop _upsi_ further.
]

== Results <results>
===== Introduction
#p[
  In this section, the results of the bachelor's thesis are further detailed.
]

===== Objectives
#p[
  This bachelor's thesis successfully meets the primary objectives described in @aim.

  - A research was conducted to understand the technical approaches used in COVID-19 tracing apps and to identify existing technical solutions for STI partner notification. The findings were incorporated into the solution design.

  - An STI tracing solution was implementend based on the the DP-3T protocol.

  - An evaluation was conducted by consulting experts in the field of STIs to assess the feasibility and significance of the app.
]

===== Solution
#p[
  The implemented solution successfully meets the system requirements described in @sys-req.

  - Privacy, decentralization, and anti-authoritarian principles are achieved by using the DP-3T protocol, further improved by utilizing blockchain technology for infection publication.

  - User-friendliness is ensured by letting the test center handle the blockchain interaction and paying for the gas fees.

  - Trustworthy partner notifications are ensured by the proof of test attendance signed by the user and by only permitting trusted test centers to publish infections.

  - Openness is achieved by making all source code publicly available on GitHub.

  - Consent is ensured by using QR codes for data exchange between devices, requiring explicit user action.
]

#pagebreak(weak: true)

===== Evaluation
#p[
  Valuable feedback was provided by the STI experts, which was incorporated into the development of _upsi_.

  The key points are further elaborated here:

  - *General positive:* Great interest and positivity were shown by the experts towards the idea of an STI tracing app.
    However, concerns were raised regarding the societal and integration hurdles of a potential implementation.

  - *Anonymous STI rapid test:* It was not initially known that certain STI tests are conducted as rapid tests at test centers and that no data about the tested individuals is collected.
    This led to a revision of the concept and the introduction of the tester mobile app.
    Previously, a web application or integration into the test center IT system was considered.
    The final solution with the tester app is now regarded as much more refined and better adapted to real world conditions.

  - *Stigmatisation:* STIs and partner notifications are still stigmatized in society.
    The experts argued that an STI tracing app would only be effective in an informed and sex-positive community.
    Men who have sex with men were proposed as such a community.
    Whether the app would be widely used by the general population remains questionable.

  - *Event QR code:* It was pointed out by the experts that in certain situations, smartphones are not desired or do not function properly due to the conditions.
    Dark rooms and saunas used by men who have sex with men were mentioned.
    As a solution to this concern, the idea of an event QR code was proposed.
    Similar to the COVID-19 pandemic, QR codes would be provided for an event and scaned by the attendees.
    In the event of an STI infection, the event QR code would be published along with the public keys.

  - *Test center landscape:* The previously made assumption that there are many different test centers, each using their own IT systems, was confirmed by the experts. These IT systems are often very old and legacy. Due to federal data protection regulations, the development and further development of such systems is cumbersome.
]

#pagebreak(weak: true)

== Further Work
===== Introduction
#p[
  In this section, the further suggested work is detailed.
]

=== App
===== Features
#p[
  To enhance user-friendliness and functionality, it is proposed to expand the app with several features.

 The suggested features are:
  - *Smartphone change:* Since the contacts and keys are stored on the device, it is currently not possible to switch smartphones.
    This can be addressed with an export and import function for contacts and keys.
    To reduce key data, a master key should be used from which all further private and public keys are derived.

    It must be considered how this can be implemented securely and cannot be used for misuse.
    This feature is working if both the old and new smartphones are available.
    If the smartphone is lost, all keys and contacts are also lost due to decentralized data storage on the device.

  - *Login:* The user mobile app should be enhanced with an optional login, for example, using biometric data.
    This would further increase security and privacy.

  - *Guidance:* To improve user-friendliness, informational texts and instructions should be integrated.

  - *STI Infos:* The STI specific information and functionalities should be reviewed and updated with the help of STI experts.

  - *Limitations:* The functions that were not implemented due to time constraints should be developed.
    More information on this can be found in @limitations.
]

===== iOS
#p[
  To increase the app's reach, it should be extended to iOS devices. Since Flutter was used, this should require minimal effort.
]

=== Integration
===== Laboratory Tests
#p[
  The introduction of _upsi_ only makes sense if laboratory tests can also be covered.
  The system should be extended in collaboration with test centers, as integration into their IT systems is necessary to store user information between testing and receiving laboratory results.
]

===== Admin Portal
#p[
  A test center admin portal should be developed to manage tester accounts and include a function to top up wallet balances with cryptocurrency to pay for the gas fees.
]

#pagebreak(weak: true)

=== Study
===== Acceptance
#p[
  A comprehensive study should be conducted in collaboration with STI researchers to evaluate the effectiveness and acceptance of _upsi_.
]
