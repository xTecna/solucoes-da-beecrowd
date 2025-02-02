# 3024 - Mountain Ranges

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3024)

## Solução

Aqui queremos saber qual o maior número de pontos consecutivos que podem ser visitados na mesma trilha respeitando um limite de subida do casal, notando que é possível começar em qualquer ponto da trilha.

Considerando que, por exemplo, queiramos saber o maior número de pontos consecutivos que podem ser visitados a partir apenas da primeira posição. Restringindo só pra primeira posição podemos pensar no seguinte:

* Se o segundo ponto da trilha estiver em um intervalo de subida adequado, então eu posso acrescentá-lo à resposta, então são dois pontos consecutivos pelo menos que podemos visitar.
* Caso contrário, como não dá pra respeitar o intervalo, então a resposta é apenas um ponto consecutivo, o ponto do começo.

Perceba que dá para seguir essa lógica para qualquer outro ponto. Generalizando, seria algo assim.

* Se estou no ponto $A_{i}$, onde $1 \leq i \leq N - 1$, já andei por $k$ pontos consecutivos dentro do intervalo de subida e o ponto $A_{i + 1}$ também está dentro do intervalo, então eu tenho um caminho de $k + 1$ pontos consecutivos e posso ir para $A_{i + 1}$.
* Se estou no ponto $A_{i}$, onde $1 \leq i \leq N - 1$, já andei por $k$ pontos consecutivos dentro do intervalo de subida e o ponto $A_{i + 1}$ não está no intervalo, então eu tenho um caminho de no máximo $k$ pontos consecutivos e agora para eu ir para $A_{i + 1}$ eu preciso recomeçar com um caminho de $1$ ponto consecutivo (o ponto $A_{i + 1}$).

É possível transformar essa lógica em um algoritmo começando do ponto $A_{1}$ com caminho consecutivo de $1$ e ir verificando para cada ponto à frente se ele faz parte do caminho consecutivo ou não, lembrando de quando fechar um caminho consecutivo ver se é o maior possível para agregar à resposta final.