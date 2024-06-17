#import "/styles/variables.typ": *
#import "/components/todo.typ": *

= Glossary

#for (term, description) in (
  "STI":              [Sexually Transmitted Infection. Further described in @sti],
  "COVID-19":         [Coronavirus Disease 2019. https://en.wikipedia.org/wiki/COVID-19],
  "SARS-CoV-2":       [Severe Acute Respiratory Syndrome Coronavirus 2. https://en.wikipedia.org/wiki/SARS-CoV-2],
  "UN":               [United Nations. https://www.un.org/],
  "WHO":              [World Health Organization. An United Nations agency. https://www.who.int/],
  "HIV":              [Human Immunodeficiency Viruses. https://en.wikipedia.org/wiki/HIV],
  "AIDS":             [Acquired immunodeficiency syndrome. https://en.wikipedia.org/wiki/HIV/AIDS],
  "FOPH":             [Swiss Federal Office of Public Health. https://www.bag.admin.ch/],
  "BAG":              [Bundesamt für Gesundheit Schweiz. https://www.bag.admin.ch/],
  "Bluetooth":        [A short-range wireless technology. https://en.wikipedia.org/wiki/Bluetooth],
  "GPS":              [Global Positioning System. https://en.wikipedia.org/wiki/Global_Positioning_System],
  "DAO":              [Decentralized autonomous organization. Further described in @decentral],
  "QR Code":          [Quick Response Code. Furhter described in @qr],
  "BLS":              [BLS digital signature. Futher described in @bls],
  "SBB":              [Schweizerische Bundesbahnen (en: Swiss federal railways) https://www.sbb.ch/],
  "Twint":            [Swiss cashless payment system. https://www.twint.ch/],
  "PoW":              [Proof of Work. Furhter described in @decentral],
  "PoS":              [Proof of Stake. Furhter described in @decentral],
  "Blockchain":       [Decentralized distributed database. Further described in @decentral],
  "Hash":             [Hash function: https://en.wikipedia.org/wiki/Hash_function],
  "Smart Contract":   [Executable code on a blockchain. Furhter described in @decentral],
  "Solidity":         [Programming language for smart contracts. Furhter described in @decentral],
  "Gas":              [Gas fees. Furhter described in @decentral],
  "L2":               [Layer 2 blockchain. Furhter described in @decentral],
  "MSM":              [Men who have sex with men],
  "YMSM":             [Young men who have sex with men],
  "PrEP":             [Pre-exposure prophylaxis for HIV prevention. https://en.wikipedia.org/wiki/Pre-exposure_prophylaxis_for_HIV_prevention],
  "AI":               [Artificial Intelligence. https://en.wikipedia.org/wiki/Artificial_intelligence],
  "Geosocial Networking App": [Location based social networks. https://en.wikipedia.org/wiki/Geosocial_networking],
  "TEK":              [Temporary Exposure Key. Furhter described in @swisscovid-keys],
  "RPI":              [Rolling Proximity Identifier. Furhter described in @swisscovid-keys],
  "JSON":             [JavaScript Object Notation. https://en.wikipedia.org/wiki/JSON],
  "SHA-265":          [Secure Hash Algorithm. https://en.wikipedia.org/wiki/SHA-2],
  "UTC":              [Coordinated Universal Time. https://en.wikipedia.org/wiki/Coordinated_Universal_Time],
) {
  grid(
    columns: (1fr, 6fr),
    gutter: gap,
    [*#term*], description,
  )
}