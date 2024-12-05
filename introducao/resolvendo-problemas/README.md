# Resolvendo problemas

Esta seção é para dar algumas dicas mais gerais de como resolver problemas, que servem para qualquer problema computacional (até os fora do contexto de programação competitiva).

## Estude sobre complexidade de algoritmos e classificação de problemas

Pesquise materiais sobre esses dois assuntos porque eles são essenciais para a resolução de problemas. Durante minhas explicações, também vou falar muito sobre a complexidade das soluções, dos algoritmos e das estruturas de dados apresentadas, e a forma mais rápida de conseguir transmitir a mensagem do quão eficientes elas são é colocando a complexidade pra você. Também dê uma olhada em como determinados problemas são classificados para você não perder muito o seu tempo: alguns problemas são considerados muito difíceis e outros até intratáveis. Conhecer quais são esses problemas te ajuda a entender que "tudo bem, não vou conseguir resolver eficientemente, então vamos usar uma ideia mais lenta, mas que vai resolver o problema!". Escolha suas batalhas sabiamente.

## Limites de entrada

Uma dos aspectos mais importantes de um problema são seus limites de entrada, o que muitas das vezes vai definir a complexidade que a sua implementação pode ter. Por exemplo, se estamos lidando com $100$ elementos por entrada, então podemos nos dar ao luxo de usarmos algoritmos de complexidade $O(n^3)$. Mas se a entrada for de $1\,000\,000$ elementos, então não podemos pensar em nada acima de $O(n \log{n})$.

Essa dica parece óbvia, mas também ajuda a gente a não precisar ficar procurando por algoritmos tão refinados logo de cara. Se detectamos rapidamente que o valor máximo de uma entrada é pequena, então podemos tentar primeiro uma solução mais bruta, que muitas das vezes já é o suficiente para funcionar.

## Saiba seus truques para entrada e saída

Entendendo como o site funciona (veja página [beecrowd](../beecrowd/README.md) para mais informações) pode te fazer pensar em algumas maneiras de burlar o juiz e resolver problemas de outras formas que não foram intencionais, devido às limitações presentes (que não são específicas da _beecrowd_, por sinal, também é válido para outras plataformas de programação competitiva). Algumas das limitações podem ser aplicadas principalmente a dois tipos de problemas:

1. Problemas onde não é preciso ler a entrada completa para resolver o problema;
2. Problemas com saída fixa.

Basicamente explorando o fato de que o único critério de aceitação do problema é o arquivo de saída gerado pelo seu programa ser igual ao arquivo de saída da plataforma. Aqui neste solucionário, vamos aproveitar esses dois pontos ao máximo.

## Conheça seu repertório

Estudar algoritmos e estruturas de dados é uma maneira de adicionar ferramentas ao seu repertório, de forma que quando você for encarar problemas computacionais, você ter a capacidade de pensar em como aplicar essas ferramentas para solucioná-los. Nossa [seção teórica](../../base-teorica/README.md) contém um material bem bacana para você conseguir entender de onde vêm essas ideias, para que elas servem e como aplicá-las, de forma que você consiga aumentar mais e mais seu conhecimento. Quanto mais você conhece na teoria, mais você reconhece as soluções dos problemas na prática, é tudo uma questão de experiência.

## Reserve um tempo fixo para a resolução do problema

Em situações de estudo, procure alocar um tempo fixo para pensar sobre o problema e tentar resolvê-lo, um tempo com o qual você se sinta confortável o suficiente para tentar pensar em algo e passar um tempo resolvendo. Assim que o tempo terminar, pergunte a alguém ou consulte um guia (como esse!) para te ajudar a entender a solução do problema. Sempre vai existir outros problemas parecidos para você poder tentar fazer sem ajuda, o importante é que você não fique muito tempo com uma trava gigante no mesmo problema por dias e dias. Se viu a solução e entendeu porque é assim, então tá valendo, entra pro repertório.

Em situações de maratona ou entrevista on-line, ainda assim é importante separar um tempo fixo devido ao fato de que são situações onde você tem múltiplos problemas para resolver, então você sempre pode trocar para um problema diferente e voltar ao problema empacado depois.