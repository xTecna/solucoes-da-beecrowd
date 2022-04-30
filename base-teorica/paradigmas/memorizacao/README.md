# Memorização

## Motivação

A memorização é uma técnica que consiste em guardar resultados de funções executadas a fim de não se precisar reexecutá-la novamente caso a função receba os mesmos parâmetros novamente. Normalmente usamos memorização quando:

* A função é recursiva, ou seja, vamos executar várias vezes a mesma função muitas vezes com os mesmos parâmetros e, nesse caso, não queremos calcular do zero toda vez;
* Os parâmetros passados estejam num intervalo razoável para se colocar em memória:
    * Para uma função que recebe valores numéricos entre 1 e 10 milhões, todos os resultados caberiam num vetor;
    * Para uma que recebe *strings* com letras minúsculas de comprimento máximo 5, todos os 11.881.376 resultados de todos os parâmetros possíveis caberiam num vetor.
* O número de parâmetros passados é razoável para se guardar numa estrutura de dados plausível:
    * Funções que recebem apenas um parâmetro numérico podem ter seus resultados armazenados num vetor;
    * Recebendo apenas uma *string* é possível armazená-los num mapa;
    * Recebendo dois números, numa matriz.

## Implementação

Com essas características atendidas, podemos então colocar em memória nossa estrutura de dados para armazenar os resultados já calculados e seguir a seguinte estrutura quando formos implementar nossa função:

1. Checar primeiro se o parâmetro passado já tem um valor armazenado na memória
    1. Se já tiver, ótimo. Não precisa calcular de novo, basta retornar esse valor da memória.
    2. Caso contrário, se não tiver:
        1. Calcular o valor
        2. Guardar o valor em memória
        3. Retornar esse valor na função

Vamos mostrar um exemplo com uma das funções recursivas mais famosas:

### Fibonacci

A função recursiva para conseguir o número de Fibonacci envolve sempre calcular o n-ésimo número como a soma do (n - 1)-ésimo e do (n - 2)-ésimo números da sequência, o que pode ser um processo incrivelmente repetitivo pra máquina. Veja no esquema abaixo quantas chamadas são produzidas e quantas vezes é necessário calcular o Fibonacci de determinados números para uma chamada de Fibonacci(5):

* Fibonacci(5)
    * Fibonacci(4)
        * Fibonacci(3)
            * Fibonacci(2)
                * Fibonacci(1)
                * Fibonacci(0)
            * Fibonacci(1)
        * Fibonacci(2)
            * Fibonacci(1)
            * Fibonacci(0)
    * Fibonacci(3)
        * Fibonacci(2)
            * Fibonacci(1)
            * Fibonacci(0)
        * Fibonacci(1)

Neste pequeno exemplo, vemos que para calcularmos Fibonacci(5), calculamos Fibonacci(4) uma vez só, mas Fibonacci(3) duas vezes e Fibonacci(2) três vezes, o que é desnecesário. Mas se escrevermos desta forma:

```cpp
// Vamos supor que queiramos calcular até o milhonésimo número de Fibonacci
long long int F[1000001];

// É preciso primeiramente inicializar esse vetor e aqui, todos os valores ganham um valor inválido, que pode ser -1, None, undefined, dependendo da linguagem
void Inicializa(){
    memset(F, -1, sizeof(F));
    // O caso base sai de dentro da função e passa a estar aqui em memória
    F[0] = 1;
    F[1] = 1;
}

long long int Fibonacci(int n){
    // Primeiro, perguntar se não tem salvo em memória
    if(F[n] == -1){
        // Se não tiver, mandar calcular e guardar em memória
        F[n] = Fibonacci(n - 1) + Fibonacci(n - 2);
    }
    // Retornar o valor em memória
    // Note que independente se o valor existia previamente ou não, quando o programa chegar nesta linha, este valor certamente vai existir
    return F[n];
}
```

Aqui primeiro perguntamos se tem em memória, pois se estiver, pegamos do valor salvo e não chamamos novamente a recursão, economizando um tempo precioso e também garantindo que cada cálculo seria realizado uma única vez. Com isso, nosso esquema de chamada de funções para Fibonacci(5) seria:

* Fibonacci(5)
    * Fibonacci(4)
        * Fibonacci(3)
            * Fibonacci(2)
                * Fibonacci(1)
                * Fibonacci(0)
            * Fibonacci(1)
        * Fibonacci(2)
    * Fibonacci(3)

Dessa vez, os valores todos sendo calculados um por vez e quando novamente consultados, não geram mais chamadas futuras, tornando o algoritmo incrivelmente mais eficiente. A seguir, apresento um comparativo entre os tempos com o algoritmo recursivo normal e o algoritmo recursivo com memorização.

| n | Sem memorização | Com memorização |
| -- | -- | -- |
| 10 | 0.0 s | 0.0 s |
| 50 | 2.37 min | 0.0 s |
| 100 | > 15 min | 0.0 s |
| 500 | > 15 min | 0.0 s |
| 1000 | > 15 min | 0.0 s |
| 10000 | > 15 min | 0.0 s |

Com isso em mente, é sempre interessante usar memorização toda vez que for possível para que seus algoritmos recursivos sejam incrivelmente mais eficientes.