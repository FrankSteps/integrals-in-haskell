# Integrais aplicado na linguagem Haskell

Hoje eu estava pensando em algo que eu diria ser bem interssante. Não seria a integral, de certa forma, um exemplo prático de uma função recursiva?

Essa ideia surgiu quando eu estava pensando na forma como podemos imaginar certas figuras geométricas. Por exemplo, um cone pode ser visto como vários círculos empilhados ao longo da altura. Cada círculo representa uma pequena fatia da figura. Se você soma todas essas fatias, você obtém o volume total.
Podemos imaginar isso como a formação de várias figuras bidimensionais no plano xy, cada uma associada a um valor diferente de z ao longo de todo o percurso no eixo z, algo que vemos em Geometria Analítica no primeiro período da faculdade em cursos de exatas.

Quando pensamos em programação, especialmente em linguagens funcionais como Haskell, dá para imaginar algo parecido acontecendo de forma recursiva. Uma função calcula a área de um círculo em uma certa altura e depois chama a si mesma para calcular a próxima fatia, e assim sucessivamente até chegar ao fim do intervalo. No final, o resultado é a soma de todas essas pequenas partes.

Claro que, matematicamente falando, a integral é definida como um limite de somas cada vez menores. Mas, do ponto de vista computacional, a ideia de dividir um problema em partes menores e ir acumulando o resultado lembra bastante o funcionamento de uma função recursiva. Inclusive eu venho estudando sobre algoritmos de "divisão e conquista". Esperem por mais!

Este repositório surgiu justamente dessa reflexão. A ideia aqui é explorar um pouco essa relação entre integrais numéricas e recursão usando Haskell. Confira meu primeiro experimento [clicando aqui](volume-cone.hs)