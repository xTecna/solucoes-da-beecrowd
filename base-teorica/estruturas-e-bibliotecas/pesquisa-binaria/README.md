# Pesquisa binária

## Motivação

Imagine que você esteja conversando com alguém e essa pessoa te fala a seguinte frase: _"O argumento fósmeo disfarçado de metuendo não corresponde à aparência janota deste indivíduo. Felizmente todos parecem incólumes diante de tal declaração."_. Provavelmente sua primeira reação seria pegar um dicionário para procurar o significado de alguma dessas palavras. Vamos supor que sua primeira palavra a pesquisar fosse `metuendo`. Como você naturalmente faria para pesquisar essa palavra?

Como você entende como dicionários funcionam, você sabe que todas as palavras lá estão em ordem alfabética, então você vai abrir o dicionário em qualquer página e olhar em que letra você está. Se você está na letra `F`, por exemplo, significa que você precisa abrir o dicionário em uma página à frente, mas se você se encontra na letra `R`, isso significa que você precisa voltar um pouco, pois sua palavra começa com `M`. Esse processo de ir pulando páginas pra trás ou pra frente vai se repetindo até você chegar na página com palavras que começam com `M`, onde você vai começar a fazer um folheamento mais delicado de acordo com a segunda, a terceira, a quarta letra, até chegar na palavra `metuendo`.

A partir daí, podemos tirar algumas lições:

* Se você abrir qualquer parte aleatória do dicionário, nós sempre temos como saber se devemos ir pra frente ou pra trás baseado em onde estamos, então por mais que não saibamos onde está nossa palavra, nós não estamos perdidos, nós sabemos pra onde devemos ir pra evidentemente encontrá-la.
* Também, se você decidir ir para um lado específico, você está implicitamente eliminando toda a parte do dicionário que você sabe que não vai te ajudar a encontrar a palavra, ou seja, você já tira uma parte considerável do dicionário do seu caminho e foca nas partes onde sua palavra pode realmente estar. Na prática, no processo humano, a gente pode voltar a abrir uma página que a gente já eliminou, mas isso é um erro que podemos rapidamente consertar.
* Com isso, nós rapidamente seguimos essa metodologia porque nosso cérebro já sabe que, seguindo essa lógica, vamos encontrar nossa palavra muuuito mais cedo do que folheando cada página sequencialmente, num processo praticamente simples.
* Outro aspecto interessante é que pode ser que o dicionário não tenha a palavra que procuramos. Mas mesmo assim, usando esse método, podemos inclusive provar que esse é o caso sem precisar pesquisar o dicionário inteiro.
* Lembrando que esse processo todo só pode ser feito porque sabemos que um dicionário organiza suas palavras em ordem alfabética. Logo, toda essa lógica e método só se sustenta se temos certeza que nosso espaço de busca segue uma ordem específica que podemos nos aproveitar.

Dito tudo isso, como você já deve imaginar, esse processo de eliminar uma parte do dicionário para ir pesquisar as palavras se chama **pesquisa binária**, cujo nome vem do fato de que a toda iteração, nós sempre fazemos uma escolha binária, ou vamos pra frente ou pra trás.

## Implementações

A pesquisa binária serve para que possamos procurar rapidamente um elemento em um vetor ordenado (vide [ordenação](../ordenacao/README.md) para entender como ordenar um vetor). Para isso, vamos considerar que estamos procurando o valor `x` em um vetor `V` no intervalo `[0, N[`, onde `N` é o número de elementos em `V`. Para implementar o algoritmo, vamos contar com 3 variáveis:

* `inicio`: marca o limite inferior do intervalo de busca;
* `fim`: marca o limite superior do intervalo de busca (que normalmente é excluído, como representado acima);
* `meio`: a posição onde vamos tentar encontrar nosso valor `x`.

No começo, temos `inicio = 0`, `fim = N` e `meio = (inicio + fim)/2`, ou seja, a posição do meio desse intervalo. Logo, vendo qual é o valor do meio e comparando com nosso `x`, podemos fazer como nosso exemplo do dicionário, verificar se podemos ir pra frente ou pra trás no nosso algoritmo. A ideia seria essa:

```
se(V[meio] == x):
    // Encontramos!
    retorna meio
senão se(V[meio] > x):
    // O valor do vetor é maior que o que estamos procurando, precisamos voltar.
    fim = meio
senão se(V[meio] < x):
    // O valor do vetor é menor que o que estamos procurando, precisamos avançar.
    comeco = meio + 1
```

Nos casos onde `V[meio]` não é o valor que procuramos, precisamos definir um novo intervalo para nossa próxima busca, onde temos duas opções: `[inicio, meio[` e `[meio + 1, fim[`, ambas definidas e fatiadas pelo `meio`. Como nosso intervalo inclui um `inicio` inclusivo e um `fim` exclusivo, perceba que `meio` pode assumir o papel de `fim` como está (já que já olhamos `V[meio]` e já confirmamos que não é `x`), mas para assumir o papel de `inicio`, é necessário somar 1 (pelo mesmo motivo, já confirmamos que `V[meio]` não é `x`).

Logo, a ideia é fazer essa verificação, mudar o intervalo de acordo com o encontrado e ir fazendo isso enquanto o intervalo fizer sentido. No momento em que nosso intervalo se torna inválido (por `inicio` ser igual ou ultrapassar `fim`), então temos nossa prova de que na verdade `x` não está em `V`. O algoritmo final então ficaria assim:

```
função pesquisaBinária(vetor V, elemento valor):
    inteiro inicio, fim = 0, tamanho(V)
    
    enquanto(inicio < fim):
        meio = (inicio + fim) / 2

        if(V[meio] == valor):
            retorna meio
        else if(V[meio] > valor):
            fim = meio
        else:
            comeco = meio + 1
    
    retorna nulo
```

Em todas as funções apresentadas estamos usando os métodos mais gerais possíveis, podendo ser aplicados a qualquer tipo de estrutura de dados. Para isso, usamos templates na linguagem C++, genéricos em C# e Java e também uma função `comp` facilmente customizável para qualquer necessidade de comparação entre elementos (vide mais sobre a função `comp` em [comparação relativa](../ordenacao/README.md#comparação-relativa)).

### C99

```c
int pesquisaBinaria(int *V, int n, int valor){
    int inicio = 0, fim = n;

    while(inicio < fim){
        int meio = (inicio + fim) / 2;

        int c = comp(V[meio], valor);
        if(c == 0){
            return meio;
        }else if(c > 0){
            fim = meio;
        }else{
            inicio = meio + 1;
        }
    }

    return -1;
}
```

### C++17

```cpp
template <typename T>
int pesquisaBinaria(vector<T>& V, T valor){
    int inicio = 0, fim = V.size();

    while(inicio < fim){
        int meio = (inicio + fim) / 2;

        int c = comp(V[meio], valor);
        if(c == 0){
            return meio;
        }else if(c > 0){
            fim = meio;
        }else{
            inicio = meio + 1;
        }
    }

    return -1;
}
```

### C#

```cs
static int pesquisaBinaria<T>(T[] V, T valor){
    int inicio = 0, fim = V.Length;

    while(inicio < fim){
        int meio = (inicio + fim) / 2;

        int c = comp(V[meio], valor);
        if(c == 0){
            return meio;
        }else if(c > 0){
            fim = meio;
        }else{
            inicio = meio + 1;
        }
    }

    return -1;
}
```

### Java 14

```java
public static <T> int pesquisaBinaria(T[] V, T valor){
    int inicio = 0, fim = V.length;

    while(inicio < fim){
        int meio = (inicio + fim) / 2;

        int c = comp(V[meio], valor);
        if(c == 0){
            return meio;
        }else if(c > 0){
            fim = meio;
        }else{
            inicio = meio + 1;
        }
    }

    return -1;
}
```

### JavaScript 12.18

```js
const pesquisaBinaria = (V, valor) => {
    let inicio, fim = [0, V.length];
    
    while(inicio < fim){
        let meio = Math.floor((inicio + fim) / 2);
        
        let c = comp(V[meio], valor);
        if(c === 0){
            return meio;
        }else if(c > 0){
            fim = meio;
        }else{
            inicio = meio + 1;
        }
    }
        
    return -1;
};
```

### Python 3.9

```python
def pesquisaBinaria(V, valor):
    inicio, fim = 0, len(V)
    
    while(inicio < fim):
        meio = (inicio + fim)//2
        
        c = comp(V[meio], valor)
        if(c == 0):
            return meio
        elif(c > 0):
            fim = meio
        else:
            inicio = meio + 1
    
    return -1
```

## Problemas

* [1025 - Onde está o Mármore?](../../../problemas/estruturas-e-bibliotecas/1025/README.md)