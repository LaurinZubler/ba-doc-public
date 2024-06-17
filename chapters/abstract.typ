#import "/components/p.typ": *
#import "/components/todo.typ": *

= Abstract
===== Introduction
#p[
  Sexually Transmitted Infections (STIs) are a significant global public health challenge. \
  While in Switzerland the incidence of Human Immunodeficiency Virus (HIV) has been declining since the 1980s pandemic, other STIs such as Chlamydia, Gonorrhea, and Syphilis exhibit an upward trend.
  Effective partner notification is essential to mitigate the spread of STIs. However, it is not practiced sufficiently, and no dedicated technical solution currently addresses this challenge.

  During the COVID-19 pandemic, proximity tracing mobile apps were successfully deployed to combat the spread of SARS-CoV-2.
  Various system architectures were employed, utilizing different approaches concerning privacy and data sovereignty.
]

===== Objective
#p[
  The primary objective of this thesis is to design and develop _upsi_, a mobile application for STI partner notification.
  Inspired by the COVID-19 proximity tracing apps, _upsi_ aims to enhance partner notification, thereby mitigating the spread of STIs.
  Experts in the field of STIs will be consulted to evaluate the feasibility and importance of _upsi_.
]

===== Approach
#p[
  Research was conducted to understand the current STI situation and existing solutions for STI partner notification and COVID-19 proximity contact tracing.
  A concept for _upsi_ was developed based on insights gained from the research and presented to leading STI experts.
  The expert feedback was integrated into the solution design.
  A minimum viable product (MVP) was developed using the most feasible technologies evaluated.
]

===== Results
#p[
  _upsi_, a partner notification application for STI rapid tests, was developed with a focus on privacy and decentralization.
  The solution consists of a Flutter mobile app for users, which provides contact exchange and partner notification, as well as a second mobile app for test center employees to ensure trustworthy notifications.
  A .NET Core server application deployed to Azure handles the publication of positive test results onto the Optimism blockchain and simplifies wallet handling for the test center employees.

  STI experts responded positively to the proposed concept and provided helpful inputs and insights that were integrated into _upsi_.
  While technical solutions for partner notification are discussed among experts, integration into existing IT systems remains challenging due to the large number of test centers, each using its own IT solution.
]

===== Further Work
#p[
  Further development of _upsi_ is suggested, including the extension to iOS mobile devices and additional features to enhance user experience and functionality.
  Integration into existing STI test center IT systems should be carried out to also handle laboratory tests.
  Additionally, a study to evaluate the effectiveness and acceptance of _upsi_ among users should be conducted.
]