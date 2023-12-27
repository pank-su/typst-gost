#import "templates/index.typ": *

// Тут указываем только авторов [authors] и название работы [title] 
#show: project.with(authors: ("В.Д. Панков", ))


= Introduction
#lorem(60)

== In this paper
#lorem(20)

=== Contributions
#lorem(40)

= Related Work
#lorem(500)
