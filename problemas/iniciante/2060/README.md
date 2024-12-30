# 2060 - Desafio de Bino

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2060)

## Solução

Pode-se fazer o contador de cada múltiplo em um vetor para ficar mais fácil de fazer o _loop_ de verificação, já que $2$, $3$, $4$ e $5$ são números sequenciais. Em algumas linguagens entretanto, tomei a liberdade de usar uma abordagem mais funcional com um raciocínio um pouco diferente, em vez de pegar um elemento e testar se ele é divisível por $2$, $3$, $4$ ou $5$, eu separo e faço quatro perguntas diferentes: "quantos números deste vetor são divisíveis por $2$?" "e por $3$?" "e por $4$?" "e por $5$?".