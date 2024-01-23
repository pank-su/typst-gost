#import "templates/index.typ": *
#import "templates/utils.typ": *

// Тут указываем только авторов [authors] и название работы [title] 
#show: index.with(authors: ("В.Д. Панков", ), )


#ch("Introduction")
#lorem(60)

= In this paper
#lorem(20)

=== Contributions
#lorem(40)

= Related Work
#lorem(500)
