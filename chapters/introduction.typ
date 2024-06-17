#import "/components/p.typ": *
#import "/components/todo.typ": *
#import "/styles/variables.typ": *

= Introduction <introduction>
===== Preamble
#p[
  This chapter outlines the main motivation and the primary aims of this thesis.
]

== Motivation
===== Introduction
#p[
  In this section, key terms related to sexually transmitted infections (STIs) are described, and global and local perspectives are discussed.
  Partner notification and its challenges are explained, along with parallels to COVID-19 contact tracing efforts.
]

=== Sexually Transmitted Infections <sti>
===== Explanation of Terms @who-sti-web
#p[
  Sexually Transmitted Infections (STI) are infections primarily spread through sexual activities.
  These include more than 30 different known bacteria, viruses, and parasites.

  Among the eight STIs with the highest incidence worldwide, four are curable:
  - Syphilis
  - Gonorrhea
  - Chlamydia
  - Trichomoniasis

  And four are incurable:
  - Hepatitis B
  - Herpes Simplex Virus (HSV)
  - Human Immunodeficiency Virus (HIV)
  - Human Papillomavirus (HPV)
]

===== Global Perspective @who-sti-report
#p[
  According to the World Health Organization (WHO), STIs are major public health threats.
  Over 2.3 million deaths are caused by STIs annually, representing 14% of all deaths from infectious and parasitic diseases, digestive diseases, and cancer.
  1.2 million new cancer cases are attributed to STIs each year.
  Daily there are more than 1 million new infections.
]

#pagebreak(weak: true)

===== Switzerland @bag-sti-report
#p[
  According to the Swiss Federal Office of Public Health (FOPH), HIV diagnoses have been decreasing since 2002 due to the effectiveness of HIV prevention in Switzerland.
  However, a continuous upward trend in the number of cases is observed for Chlamydia, Gonorrhea, and Syphilis.

  The downward trend of HIV cases in Switzerland is illustrated in @bag-hiv, while the upward trends of Chlamydia, Gonorrhea, and Syphilis are illustrated in @bag-clamydia to @bag-syphilis.
  During the COVID-19 pandemic a dip in the case numbers can be seen in the diagrams.
]

#table(
  columns: 2,
  inset: gap,
  align: bottom,
  stroke: none,
  [
    #figure(
      image("/images/introduction/bag-hiv.png"),
      caption: [HIV laboratory reports by gender and year of testing since the start of testing, 1985–2022 @bag-sti-report],
    )<bag-hiv>
  ],
  [
    #figure(
      image("/images/introduction/bag-clamydia.png"),
      caption: [Chlamydia cases by gender and year of diagnosis since the start of recording, 1988–2022 @bag-sti-report] ,
    )<bag-clamydia>
  ],
  [
    #figure(
      image("/images/introduction/bag-gonorrhea.png"),
      caption: [Gonorrhea cases by gender and year of diagnosis since the start of recording, 1988–2022 @bag-sti-report],
    )<bag-gonorrhea>
  ],
  [
    #figure(
      image("/images/introduction/bag-syphilis.png"),
      caption: [Syphilis cases by gender and year of diagnosis since the start of recording, 2006–2022 @bag-sti-report],
    )<bag-syphilis>
  ],
)

#pagebreak(weak: true)

=== Partner Notification <partner-notification>
===== Explanation of Terms @Ferreira2013
#p[
  Partner notification, also known as contact tracing, is the process by which individuals who have been in contact with an infected person are informed about their potential exposure.

  There are multiple goals associated with partner notification:

  - *For the infected person:* To eradicate the infection and prevent reinfection.
  - *For contacts:* To identify and treat undiagnosed infections, thereby preventing further transmission.
  - *For the population:* To interrupt transmission chains and reduce the overall spread of the infection.
]

===== STI Context @Ferreira2013
#p[
  Despite the importance of partner notification, many STI infected individuals are not contacting their sexual partners.

  Several reasons are contributing to this behavior:

  - *Fear of stigma and discrimination:* Individuals are afraid of judgement or ostracism by their peers and community.
  - *Missing contact information:* Sexual partners are unknown or contact information is not available.
  - *Emotional and physical abuse:* Emotional or even physical abuse is risked, particularly in relationships with a history of violence.
  - *Lack of knowledge:* The importance of partner notification is not fully understood.
  - *Privacy concerns:* The health status is considered confidential.
  - *Relationship dynamics:* Fear of damaging the relationship or causing emotional pain.
]

===== COVID-19 Context
#p[
  During the COVID-19 pandemic, mobile apps were used for proximity contact tracing by governments worldwide.
  Despite the different wording, proximity contact tracing involves the same process as STI partner notification.
  The SwissCovid app was effectively applied in Switzerland.
  Between 500 and 1000 SARS-CoV-2 positive cases per month were identified through the SwissCovid app.
  In 76% of the cases, preventive actions were taken by recipients after receiving an exposure report. @Daniore2021

  Bluetooth was used to anonymously log encounters between users but concerns regarding privacy and security issues were raised by technical experts.
  The app core functionalities were controlled by Apple and Google, limiting transparency and flexibility and the risk of creating false alerts by malicious actors was expressed.
  Additionally, the contact tracing was only working in Switzerland as every country was using its own solution. @Vaudenay2020
]

#pagebreak()

===== Sensitive Data
#p[
  STI partner notification requires the processing of very sensitive data.
  Both health data and information about sexual partners are required.
  Additionally, the incidence of STIs among men who have sex with men (MSM) is higher than in the rest of the population.
  This group faces stigmatization in many countries and in some parts of the world even criminalization.
  A world map illustrating the global situation of laws regarding sexual orientation is presented in @gay-map.

  The combination of these three factors requires strong privacy measures in a technical STI partner notification solution.
]

#figure(
  image("/images/introduction/gay-map.png", width: 95%),
  caption: [World map showing the global legal status of sexual orientation #footnote[https://www.lsvd.de/de/ct/1245-LGBT-Rechte-weltweit]],
)<gay-map>

#pagebreak(weak: true)

== Aim of this Thesis <aim>
===== Introduction
#p[
  In this section, the three primary objectives of this thesis are described.
]

===== Research
#p[
  A Research should be conducted to understand the technical approaches used in COVID-19 tracing apps and to identify existing technical solutions for STI partner notification.
  The findings should be incorporated into the solution design.
]

===== STI Tracing App
#p[
  The effectiveness of tracing apps, demonstrated during the COVID-19 pandemic, should be applied to reduce the increasing STI incidences.
  A mobile app should be developed that prioritizes privacy and data security while providing efficient partner notification.
  The barriers in STI partner notification should be addressed, and solutions should be found for the technical concerns raised about COVID-19 tracing apps.
]

===== Evaluation
#p[
  An evaluation should be conducted by consulting experts in the field of STIs to assess the feasibility and significance of such an app.
  The current testing procedures should be understood to identify the necessary requirements and functionalities.
  Existing technical systems should be identified, and potential integration should be examined to ensure compatibility and ease of adoption.
  The feedback received should be incorporated into the development process, refining the app's design and functionalities.
]