#let data = json("data.json")

#set page(
  paper: "a4",
  margin: (x: 0.9cm, y: 0.9cm),
)

#set text(
  font: "Libertinus Serif",
  size: 9.8pt,
  fill: rgb("#000000"),
)

#set par(
  justify: true,
  leading: 0.3em,
)

#set list(
  spacing: 0.25em,
  indent: 0em,
  body-indent: 0.5em,
)

#align(center)[
  #text(size: 18pt, weight: "bold")[#data.name] \
  #v(0.2em)
  #data.location | #data.phone | #data.email \
  GitHub: #data.github | LinkedIn: #data.linkedin
]

#v(0.2em)

#let section(title) = {
  v(0.2em)
  text(size: 12pt, weight: "bold")[#upper(title)]
  v(-0.7em)
  line(length: 100%, stroke: 0.5pt)
  v(0.1em)
}

#let linked-name(item) = {
  if "link" in item and item.link != "" {
    link(item.link)[#item.name]
  } else {
    item.name
  }
}

// EDUCATION
#section("Education")
*#data.education.school* — Lisbon, Portugal \
#data.education.degree | #data.education.dates
- *Coursework:* #data.education.coursework

// TECHNICAL SKILLS
#section("Technical Skills")
- *Languages:* #data.skills.languages
- *Systems & Tools:* #data.skills.systems
- *Spoken Languages:* #data.skills.spoken

// PROJECTS
#section("Projects")
#for project in data.projects [
  *#linked-name(project)* |#text(style: "italic")[#project.tech]
  #for bullet in project.bullets [
    - #bullet
  ]
  #v(0.1em)
]

// ACTIVITIES & EXPERIENCE
#section("Activities & Experience")
#for activity in data.activities [
  *#linked-name(activity)* |#text(style: "italic")[#activity.role] | #activity.dates
  #for bullet in activity.bullets [
    - #bullet
  ]
  #v(0.1em)
]
