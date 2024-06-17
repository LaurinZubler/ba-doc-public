#import "/components/p.typ": *
#import "/components/todo.typ": *
#import "@preview/tablex:0.0.8": tablex, rowspanx, colspanx, cellx, colspanx, vlinex, hlinex

= Related Work <related-work>
===== Preamble
#p[
  This chapter describes and discusses the related techincal solutions identified.
]

== STI Related Mobile Apps
===== Introduction
#p[
  In this section, various mobile apps in the STI context are furhter detailed.
]

===== mHealth App @xiangyu2020
#p[
  To prevent HIV transmission among men who have sex with men (MSM), a study was conducted to explore the effectiveness of a mobile health (mHealth) app.
  Partner notification is the core feature of the app, designed to help MSM communicate their HIV status before meeting.
  The users health status is stored centrally in the health center and can be requested by other users.
  The HIV test results were uploaded to the health center by the health center staff.

  The partner notification process is further detailed in @mhealth-np and screenshots of the app are presented in @mhealth-app
]

#figure(
  image("/images/related-work/mhealth_pn.png", width: 75%),
  caption: [mHealth app partner notification process @xiangyu2020],
)<mhealth-np>

#v(2 * gap)

#figure(
  image("/images/related-work/mhealth_app.png", width: 80%),
  caption: [mHealth app screenshots @xiangyu2020],
)<mhealth-app>



#pagebreak(weak: true)

===== mHealth App Results @xiangyu2020
#p[
  The study resulted that users who used the app for more than 5 months showed a significantly lower HIV incidence (2.22 per 100 person-years) compared to others (6.99 per 100 person-years).

  The centraliced data collection also allowed a detailed analysis of the users location and sexual contacts as shown in @mhealth-map and @mhealth-network.

]

#align(end)[
  #block(
    width: 90%,
    grid(
      columns: (1fr, 1fr),
      gutter: gap,
      [
      #figure(
        image("/images/related-work/mhealth_map.png", height: 25%),
        caption: [Map of China and some independend island states showing the local distribution of the mHealth app usage @xiangyu2020],
      )<mhealth-map>
      ],
      [
        #figure(
          image("/images/related-work/mhealth_network.png", height: 25%),
          caption: [Contact networks formed by the mHealth app partner notification @xiangyu2020],
        )<mhealth-network>
      ]
    )
  )
]

#v(gap)
//#pagebreak(weak: true)

===== LYNX App
#p[
  To promote HIV/STI testing and the uptake of PrEP among young men who have sex with men (YMSM) a study was developing and testing a mobile app (LYNX).
  Among other features, an electronic diary to track sexual encounters was included in the app.
  No detailed description of the diary was found; it is assumed that the diary is manually filled out by the user and could be used for manual partner notification in the event of an STI infection, although this was not the primary purpose of the diary. @lynx2018

  The LYNX app was found to be both feasible and acceptable among YMSM. Participants responded positively to the app's features, such as the electronic diary. @lynxResults2018
]

===== DOT Diary App
#p[
  To monitoring and support PrEP use among YMSM a study was developing and testing a mobile app (DOT Diary).
  Among other features, the app was including a diary component, adapted from the LYNX mobile app.
  Participants were instructed to enter nicknames of sex partners to maintain confidentiality and partner specific information was encrypted and not transmitted to the study team to further protect privacy.

  The app was found to be highly acceptable with high levels of app use. @dot2021
]

#pagebreak(weak: true)

== Electronic Partner Notification Services
===== Introduction
#p[
  In this section, electronic services that assist sending partner notifications are detailed further.
]

===== SXT
#p[
  In the United Kingdom, _SXT_, a community interest company, is offering a software solution for sexual health clinics to send anonymous partner notifications.
  Former sexual partners of an infected person are recorded with the help of a health employee.
  A notification via SMS or email is sent to the partners by _SXT_, including a code, which allows any clinic to check the originally diagnosed STI on the website of _STX_.

  The whole process is further described at https://sxt.health/uk/pn/about.

  A sample partner notification text message by SXT is displayed in @sxt.
]

#figure(
  image("/images/related-work/sxt.png", width: 30%),
  caption: [SXT sample partner notification text message #footnote[https://sxt.health/uk/pn/about]],
)<sxt>

#pagebreak()

===== The Drama Downunder
#p[
  In Australia, partner notifications can be sent via SMS and email through a service of \ _The Drama Downunder_. The option to send messages anonymously is provided, and no authentication or identification is necessary.

  The service is available at https://www.thedramadownunder.info/let-them-know/.

  Screenshots from the parnter notification steps from _The Drama Downunder_ are displayed in @i-tddu-1,  @i-tddu-2,  @i-tddu-3.
  A parnter notification mail is presented in @i-tddu-mail.
]

#align(
  center,
  block(
    width: 95%,
    grid(
      columns: 3,
      column-gutter: 3*gap,
      [
        #figure(
          image("/images/related-work/tddu-1.png"),
          caption: [Screenshot of The Drama Downunder partner notification step 1 #footnote[https://www.thedramadownunder.info/let-them-know/]]
        )<i-tddu-1>
      ],
      [
        #figure(
          image("/images/related-work/tddu-2.png"),
          caption: [Screenshot of The Drama Downunder partner notification step 2 #footnote[https://www.thedramadownunder.info/let-them-know/]]
        )<i-tddu-2>
      ],
      [
        #figure(
          image("/images/related-work/tddu-3.png"),
          caption: [Screenshot of The Drama Downunder partner notification step 3 #footnote[https://www.thedramadownunder.info/let-them-know/]]
        )<i-tddu-3>
      ]
    )
  )
)

#figure(
  image("/images/related-work/tddu-mail.png", width: 60%),
  caption: [Screenshot of a The Drama Downunder partner notification mail]
)<i-tddu-mail>

#v(gap)

===== inSPOT
#p[
  In the USA, _inSPOT_, a similar service to _The Drama Downunder_ in Australia, was active. @levine2008

  However, the service is no longer available at the specified URL, and no information is found about what happened.
]

#pagebreak()

===== Love Life
#p[
  In Switzerland, pre-written texts for composing partner notifications are provided by \ _Love Life_.

  The service is available at https://lovelife.ch/en/protection/communicating-in-sexual-relationships.

  A screenshot of the partner notification template creator of _Love Life_ is displayed in @i-love-life.
]

#figure(
  image("/images/related-work/love-live.png", width: 90%),
  caption: [Screenshot of the Love Life partner notification template creator #footnote[https://lovelife.ch/en/protection/communicating-in-sexual-relationships]]
)<i-love-life>

#pagebreak(weak: true)

== Electronic Partner Notification Acceptance
===== Introduction
#p[
  In this section, studies evaluating the acceptance of technical solutions for partner notifications are further detailed.
]

===== Systematic Review @pellowski2016
#p[
  The acceptability and utilization of electronic communication technologies for STI partner notification are reviewed in a systematic review of 23 studies.

  The key findings are:

  - High levels of interest and acceptability were reported for electronic partner notification methods, such as anonymous e-cards, text messages, emails, and phone calls.
  - Despite the interest, actual usage of these methods was relatively low.
  - Electronic communications were found to be particularly useful for notifying less committed partners who might otherwise remain uninformed.
]

===== Survey @contesse2020
#p[
  An online survey was conducted among users of geosocial networking apps to assess the acceptability and preferences for app-based partner notification.

  Three notification strategies were investigated:

  + Personal notification using a user profile.
  + Anonymous notification via a health department.
  + Anonymous in-app notification.

  It was revealed by the study that app-based partner notification would be used and is acceptable.

  *Receiving partner notification*
  - 70% preferred to be notified directly by their partner.
  - 95% would get tested if notified by a health department profile.
  - 85% would get tested if notified via anonymous in-app message.

  *Sending partner notification*
  - 50% preferred notifying a partner using their own profile.
  - 26% preferred health department assistance for notification.
  - 24% preferred anonymous in-app messaging.

  *Comfort with notification methods*
  - 71% were comfortable with health department profiles being used for notifications.
  - 74% were comfortable with anonymous in-app messaging.
]

#pagebreak(weak: true)

== COVID-19 Proximity Tracing
===== Introduction @fraunhofer2020
#p[
  During the COVID-19 pandemic, mobile proximity tracing apps were developed to combat the spread of the SARS-CoV-2 virus and offering opportunities to ease lockdown measures.
  While notable success was observed in Asian countries to reduce infections using mobile tracing apps, these apps were highly invasive regarding user privacy and would not have been accepted by European citizens.
  Consequently, various architectures for privacy preserving proximity tracing apps were proposed across Europe, including several variants of DP-3T, the PEPP-PT framework, and the French ROBERT system.
]

===== DP-3T
#p[
  DP-3T (Decentralized Privacy-Preserving Proximity Tracing) is a contact tracing protocol, developed by an international consortium of technologists, legal experts, engineers and epidemiologists.
  The term "decentralized" is refering to the decentralization of data storage and processing, as the contact information are stored locally on the device.
  A central server is used to alert other users in case of an infection.

  More information at: https://github.com/DP-3T/
]

===== PEPP-PT and ROBERT
#p[
  PEPP-PT (Pan-European Privacy-Preserving Proximity Tracing) and ROBERT (ROBust and privacy-presERving proximity Tracing) are two centralized contact tracing protocols.
  Both are using a central server for contact information data storage and management.

  More information at: https://github.com/pepp-pt and https://github.com/ROBERT-proximity-tracing/.
]

#pagebreak(weak: true)

=== SwissCovid
===== Introduction
#p[
  SwissCovid was the official contact tracing app of Switzerland and part of the Swiss Proximity Tracing System.
  On 1. September 2023, the Swiss Proximity Tracing System ceased operations.

   The SwissCovid app is based on the DP-3T protocol.
   The source code, along with other information, can be viewed on the GitHub pages of SwissCovid #footnote[https://github.com/SwissCovid] and Swiss Admin #footnote[https://github.com/admin-ch/].

   A screenshot of the SwissCovid app is displayed in @swisscovid-scree
]

#figure(
  image("/images/related-work/swiscovid.jpg_large", width: 30%),
  caption: [Screenshot of the SwissCovid app #footnote[https://x.com/BAG_OFSP_UFSP/status/1265979020585435137]]
)<swisscovid-scree>

#pagebreak()

===== Components @swisscovid-gh
#p[
  The Swiss Proximity Tracing System consists of several frontend and backend components:

  - *SwissCovid app:* The apps running on users iOS or Android devices.
  - *DP3T SDK Backend:* The backend for uploading/providing the list of TEKs for proximity tracing.
  - *CrowdNotifier Backend:* The backend for uploading/providing the list of exposed events for presence tracing.
  - *HealthAuthority Backend:* The backend for issuing and validating Covidcodes.
  - *CovidCode UI:* The web frontend for generating Covidcodes (used by health authorities).
  - *Config Backend:* Backend component that serves configuration values for the SwissCovid app.
  - *Additional Info Backend:* Backend component that serves the data for the statistics tab in the SwissCovid app.

  An overview of the interaction between the different components is displayed in @swisscovid_comp.
]
  #figure(
    image("/images/related-work/swisscovid.svg", width: 63%),
    caption: [Swisscovid Architecture Overview @swisscovid-gh],
  )<swisscovid_comp>

#pagebreak()

===== App Functionality <swisscovid-keys>
#p[
  The app is using two keys to prevent tracking:

  - *Temporary Exposure Keys (TEKs):* Generated daily on the users device.
  - *Rolling Proximity Identifiers (RPIs):* Derived from TEKs and renewed approximately every 10-20 minutes.

  When two devices are coming into close proximity, RPIs are exchanged over Bluetooth and stored locally.

  In case of a positive COVID-19 test, a 12-digit covidcode is received from the health authority.
  This code is entered into the app by the user and upon verification, the user's recent TEKs are uploaded to the central backend server.

  Devices periodically are downloading the list of TEKs from the server and checking locally if any are matching the known RPIs.
]

#pagebreak(weak: true)

== Discussion
===== Acceptance
#p[
  The acceptance of STI-related mobile apps in a sex-positive community was positively evaluated in two studies.
  This can be seen as a good indication of the potential acceptance of _upsi_.
]

===== mHealth App
#p[
  The mHealth app is raising some concerns regarding privacy and its effectiveness.

  Although the study has been demonstrated that fewer HIV cases are observed among the mHealth app users, the results should be interpreted with caution, as participation is not incentivized for users who are HIV positive.

  Despite the study referring to the UN partner notification definition, it is questionable whether the app implementation aligns with this definition.
  There is no notification of former sexual partners following a positive STI test.

  Central data collection of sensitive health data as well as information on sexual contacts is required for the mHealth app.
  This is raising significant privacy concerns, as the data could be misused by an untrustworthy authority.
]

===== STX
#p[
  The STX solution offers anonymous notification and standardized procedures that support healthcare staff.
  According to STX, no data is stored.
  It is questionable why the diagnosed STI is not included directly in the notification message.
  Instead, the code must be explicitly entered on the _SXT_ website to learn the STI status.
  It is assumed that this was done to increase data collection and to raise the popularity of _STX_ among clinics.
]

===== Privacy
#p[
  The promised anonymity of the systems for partner notification is refering to the recipient not knowing who the positive-tested person is.
  Information about the sexual activity of the infected individual, as well as the mobile number or email address of their partners, is obtained by the services.
]

===== Misuse
#p[
  _The Drama Downunder_ allows partner notifications to be sent without an actual STI infection.
  An email can be triggered, as seen in @i-tddu-mail. This feature can be misused to send false partner notifications, causing unnecessary distress to individuals.
]

===== DP-3T
#p[
  The SwissCovid app and the DP-3T protocol provide a well-researched and well-thought-out solution for partner notification that can be used as a foundation for the development of _upsi_.
  There are some points that could be improved, such as the centrally controlled database for publishing infections, which could be managed more decentralized.
]

#pagebreak(weak: true)

===== Comparison
#p[
  The various related techincal solutions and _upsi_ are compared in @rel-work-comparison
]

#figure(
  block(
    width: 100%,
    tablex(
      columns: 9,
      align: center + horizon,
      auto-vlines: false,

      hlinex(y: 2, stroke: tableLineLight),
      hlinex(y: 3, stroke: tableLineLight),
      hlinex(y: 4, stroke: tableLineLight),
      hlinex(y: 5, stroke: tableLineLight),
      hlinex(y: 6, stroke: tableLineLight),
      hlinex(y: 7, stroke: tableLineLight),


      [],                                                                         [*mHealth \ App*],                                       [*LYNX \ App*],                                          [*DOT \ Diary \ App*],                                   [*The \ Drama \ Downunder*],                             [*inSPOT*],                                              [*Love \ Life*],                                         [*Swiss \ Covid \ App*],                                 [*upsi*],

      cellx(align: left + horizon)[*Ensures privacy of the infected individual*], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)],
      cellx(align: left + horizon)[*Ensures privacy of the notified partner*],    [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)],
      cellx(align: left + horizon)[*No centralized data sovereignty*],            [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)],
      cellx(align: left + horizon)[*Provides STI partner notification*],          [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)],
      cellx(align: left + horizon)[*Prevents false partner notifications*],       [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)],
      cellx(align: left + horizon)[*Still in service*],                           [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)],
      cellx(align: left + horizon)[*Open source code base*],                      [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/cross.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)], [#image("/images/related-work/check.svg", width: 11pt)],
    )
  ),
  caption: "Comparison of related techincal solutions and upsi",
  kind: table,
)<rel-work-comparison>
