# 2779 - Álbum da Copa

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2779)

## Solução

Como as figurinhas são representadas por um intervalo pequeno de números (no máximo $100$ figurinhas numeradas de $1$ a $100$), então é possível representar o álbum inteiro como um vetor onde, para cada posição de $1$ a $100$, o valor do vetor é $0$ se a pessoa não tem a figurinha daquela posição ou $1$ se a pessoa tem a figurinha. Com essa modelagem, o problema então se torna em começar presumindo que a pessoa não tem nenhuma figurinha e ir adicionando as figurinhas à medida que posições no vetor vão de $0$ a $1$.

Em algumas linguagens, temos também suporte a conjuntos, que torna tudo mais fácil. Nesse caso, basta adicionar as figurinhas no conjunto e depois diminuir o total de figurinhas do tamanho do conjunto. 