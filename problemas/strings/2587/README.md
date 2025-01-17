# 2587 - Jetiqui

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2587)

## Solução

Não está muito claro aqui qual seria o critério, já que para o segundo caso de teste do exemplo, onde Pasqualito está em dúvida entre "norte" e "forte", daria pra adivinhar "F" e se tivesse a letra seria "forte" e se não tivesse seria "norte", mas acredito que a ideia seria que a letra pertencesse às duas palavras em posições diferentes (já que se não tivesse "F", poderia possivelmente ser "sorte", uma palavra que Pasqualito nem tinha pensado que poderia ser).

De acordo com o primeiro caso de teste então, sendo $i$ e $j$ as posições das lacunas na palavra secreta, $P_{1}$ e $P_{2}$ as palavras que Pasqualito está em dúvida e a letra $P_{k, m}$ é tal que $k \in \{1, 2\}$ e $m$ é uma posição válida em $P_{k}$, temos que verificar se $P_{1, i} = P_{2, j}$ ou $P_{1, j} = P_{2, i}$. Olhando as duas lacunas nas duas combinações possíveis, se em alguma destas tem a mesma letra, então Pasqualito pode chutar aquela letra e, dependendo da lacuna em que ela aparecer, ele saberá a palavra secreta.