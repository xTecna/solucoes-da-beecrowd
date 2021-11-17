# Ordenação

## Descrição

Ordenar elementos em um vetor é um problema bastante comum com inúmeras aplicações na nossa vida. Até antes dos computadores existirem, as pessoas já desempenhavam métodos para ordenar itens com eficiência.

Alguns dos métodos de ordenação apresentados abaixo vão te parecer muito intuitivos enquanto outros podem ser mais difíceis de entender, mas a ideia é apenas entender como eles funcionam para compreender como tais métodos evoluíram ao longo do tempo e também como existem uma diversidade incrível de formas de resolver o mesmo problema, cada uma com suas vantagens e desvantagens.

Vamos começar com os métodos mais simples e partir para métodos mais sofisticados, cada um com sua complexidade de tempo e espaço e uma breve explicação e implementação.

Em todas as funções apresentadas estamos usando os métodos mais gerais possíveis, podendo ser aplicados a qualquer tipo de estrutura de dados. Para isso, usamos templates na linguagem C++ e também uma função `comp` facilmente customizável para qualquer necessidade de ordenação. Falamos mais sobre esta função e suas propriedades na seção [Customização de critérios](#customização-de-critérios).

## Métodos de ordenação

### InsertionSort

O InsertionSort é um método de ordenação que parte de um princípio muito simples. Começando a partir do segundo elemento, ele vai verificando se o elemento selecionado é menor do que o elemento anterior e, se for, empurra ele e se coloca no lugar, repetindo esse processo até achar um elemento menor ou chegar à primeira posição, repetindo para todos os números até processar o último.

![GIF representando uma execução do Insertion sort. (Fonte: Wikipedia)](https://upload.wikimedia.org/wikipedia/commons/0/0f/Insertion-sort-example-300px.gif)

Esse método costuma ser bastante intuitivo pois é possível nos imaginarmos ordenando dessa maneira na vida real, sendo também um método bem fácil de implementar. Infelizmente, sua complexidade de pior caso é proibitiva para vetores maiores, mas para vetores pequenos, é uma excelente escolha.

| Propriedade         | Complexidades |
| ------------------- | ------------- |
| Tempo (melhor caso) | O(n)          |
| Tempo (pior caso)   | O(n²)         |
| Espaço              | O(1)          |

#### C99

```c
void swap(int* a, int* b){
    int aux = *a;
    *a = *b;
    *b = aux;
}

void insertionSort(int* V, int n){
    for(int i = 1; i < n; ++i){
        int j = i, k = j - 1;

        while(k > -1 && comp(V[j], V[k]) < 0){
            swap(&V[j], &V[k]);
            --j, --k;
        }
    }
}
```

#### C++17

```cpp
template <class T>
void insertionSort(vector<T>& V){
    int n = V.size();
    
    for(int i = 0; i < n; ++i){
        int j = i, k = j - 1;

        while(k > -1 && comp(V[j], V[k])){
            swap(V[k], V[j]);
            --j, --k;
        }
    }
}
```

#### JavaScript 12.18

```javascript
const insertionSort = (V) => {
    for (let i = 1; i < V.length; ++i){
        let j = i, k = j - 1;

        while(k > -1 && comp(V[j], V[k]) < 0){
            [V[k], V[j]] = [V[j], V[k]];
            --j, --k;
        }
    }
};
```

#### Python 3.9

```python
def insertionSort(V):
    for i in range(1, len(V)):
        j = i
        k = j - 1

        while(k > -1 and comp(V[j], V[k]) < 0):
            V[j], V[k] = V[k], V[j]
            j -= 1
            k -= 1
```

### SelectionSort

O SelectionSort é um método também bastante simples, se valendo da ideia de que os menores elementos sempre estarão na frente. Com isso, para a primeira leva, ele vai ver qual dos elementos é o menor, e quando ele acabar de percorrer todo o mundo e poder ter acesso a essa informação, ele vai e coloca o maior na frente. Com o menor na frente, agora ele pode procurar o segundo menor, só que ele só precisa ver do segundo pra frente porque ele já sabe que o primeiro já é o menor e assim por diante.

![GIF representando uma execução do Selection sort. (Fonte: Wikipedia)](https://upload.wikimedia.org/wikipedia/commons/9/94/Selection-Sort-Animation.gif)

Também é um algoritmo simples de se implementar e não necessita de um vetor auxiliar, mas o fato de ele sempre fazer todas as suas instruções independente do vetor já estar ordenado ou não o torna um algoritmo bem lento para vetores grandes.

| Propriedade | Complexidades |
| ----------- | ------------- |
| Tempo       | O(n²)         |
| Espaço      | O(1)          |

#### C99

```c
void swap(int* a, int* b){
    int aux = *a;
    *a = *b;
    *b = aux;
}

void selectionSort(int* V, int n){
    for(int i = 0; i < n - 1; ++i){
        int k = i;

        for(int j = i + 1; j < n; ++j){
            k = comp(V[j], V[k]) < 0 ? j : k;
        }

        swap(&V[i], &V[k]);
    }
}
```

#### C++17

```cpp
template <class T>
void selectionSort(vector<T>& V){
    int n = V.size();
    
    for(int i = 0; i < n - 1; ++i){
        int k = i;

        for(int j = i + 1; j < n; ++j){
            k = comp(V[j], V[k]) ? j : k;
        }

        swap(V[i], V[k]);
    }
}
```

#### JavaScript 12.18

```javascript
const selectionSort = (V) => {
    for (let i = 0; i < V.length - 1; ++i){
        let k = i;

        for(let j = i + 1; j < V.length; ++j){
            k = comp(V[j], V[k]) < 0 ? j : k;
        }

        [V[i], V[k]] = [V[k], V[i]];
    }
};
```

#### Python 3.9

```python
def selectionSort(V):
    n = len(V)

    for i in range(n - 1):
        k = i

        for j in range(i + 1, n):
            k = j if comp(V[j], V[k]) < 0 else k

        V[i], V[k] = V[k], V[i]
```

### BubbleSort

O BubbleSort é outro bem simples cuja ideia é ir percorrendo o vetor de par em par, sempre trocando se eles estiverem na ordem errada. Esse processo é repetido `n - 1` vezes, onde `n` é o número de elementos no vetor e é garantido que o vetor esteja ordenado quando o algoritmo terminar (isso porque cada etapa arrasta o último elemento pra última posição do momento).

![GIF representando uma execução do Bubble sort. (Fonte: Wikipedia)](https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif)

Este algoritmo tem todas as características do InsertionSort, então qual método é melhor fica a critério do leitor. De qual dos dois métodos você mais gostou?

| Propriedade         | Complexidades |
| ------------------- | ------------- |
| Tempo (melhor caso) | O(n)          |
| Tempo (pior caso)   | O(n²)         |
| Espaço              | O(1)          |

#### C99

```c
void swap(int* a, int* b){
    int aux = *a;
    *a = *b;
    *b = aux;
}

void bubbleSort(int* V, int n){
    for(int i = 0; i < n - 1; ++i){
        for(int j = 1; j < n - i; ++j){
            int k = j - 1;
            
            if(comp(V[j], V[k]) < 0){
                swap(&V[k], &V[j]);
            }
        }
    }
}
```

#### C++17

```cpp
template <class T>
void selectionSort(vector<T>& V){
    int n = V.size();
    
    for(int i = 0; i < n - 1; ++i){
        for(int j = 1; j < n - i; ++j){
            int k = j - 1;

            if(comp(V[j], V[k])){
                swap(V[j], V[k]);
            }
        }
    }
}
```

#### JavaScript 12.18

```javascript
const bubbleSort = (V) => {
    for (let i = 0; i < V.length - 1; ++i){
        for(let j = 1; j < V.length - i; ++j){
            let k = j - 1;

            if(comp(V[j], V[k]) < 0){
                [V[j], V[k]] = [V[k], V[j]];
            }
        }
    }
};
```

#### Python 3.9

```python
def bubbleSort(V):
    n = len(V)

    for i in range(n - 1):
        for j in range(1, n - i):
            k = j - 1
            
            if(comp(V[j], V[k]) < 0):
                V[j], V[k] = V[k], V[j]
```

### MergeSort

O MergeSort é um algoritmo mais sofisticado de ordenação, que usa uma ideia recursiva bastante interessante com estas etapas:

1. Divide o vetor em duas metades
2. Ordena cada uma das duas metades
3. Junta as duas metades ordenadas num processo chamado "merge" (daí vem o nome do algoritmo)

Se você tem duas metades ordenadas, então há uma maneira esquematizada de fazer este merge que consiste de você começar pelos elementos iniciais, comparar estes elementos e escolher o menor, seguindo esta abordagem até ter escolhido todos os elementos.

A pergunta que fica é: como ordenar as duas metades que você dividiu? Ora, com MergeSort, claro!

![GIF representando uma execução do Merge sort. (Fonte: Wikipedia)](https://upload.wikimedia.org/wikipedia/commons/c/cc/Merge-sort-example-300px.gif)

Este algoritmo é extremamente eficiente, com uma ideia um pouco menos intuitiva, mas que faz bastante sentido num ponto de vista de dividir para conquistar. É um método que gasta bastante memória e não é fácil de implementar a princípio, mas que com certeza vale a pena conhecer a fundo, pois essa abordagem para resolver problemas é amplamente utilizada, não apenas com ordenação.

| Propriedades | Complexidade |
| ------------ | ------------ |
| Tempo        | O(n log n)   |
| Espaço       | O(n)         |

#### C99

```c
void merge(int* V, int inicio, int meio, int fim){
    int* aux = (int*) malloc((fim - inicio) * sizeof(int));
    int i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;

    while(i1 < n1 && i2 < n2){
        if(comp(V[i1], V[i2]) < 0){
            aux[i++] = V[i1++];
        }else{
            aux[i++] = V[i2++];
        }
    }

    while(i1 < n1)  aux[i++] = V[i1++];
    while(i2 < n2)  aux[i++] = V[i2++];

    for(int i = inicio; i < fim; ++i){
        V[i] = aux[i - inicio];
    }

    free(aux);
}

void mergeSort(int* V, int inicio, int fim){
    if(fim - inicio > 1){
        int meio = (inicio + fim)/2;

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
}
```

#### C++17

```cpp
template <class T>
void merge(vector<T>& V, int inicio, int meio, int fim){
    vector<int> aux(V.begin() + inicio, V.begin() + fim);
    int i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;
    
    while(i1 < n1 && i2 < n2){
        if(comp(V[i1], V[i2])){
            aux[i++] = V[i1++];
        }else{
            aux[i++] = V[i2++];
        }
    }

    while(i1 < n1)  aux[i++] = V[i1++];
    while(i2 < n2)  aux[i++] = V[i2++];

    for(int i = inicio; i < fim; ++i){
        V[i] = aux[i - inicio];
    }
}

template<class T>
void mergeSort(vector<T>& V, int inicio, int fim){
    if(fim - inicio > 1){
        int meio = (inicio + fim)/2;

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
}
```

#### JavaScript 12.18

```javascript
const merge = (V, inicio, meio, fim) => {
    let aux = Array(fim - inicio);
    let i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;

    while(i1 < n1 && i2 < n2){
        if(comp(V[i1], V[i2]) < 0){
            aux[i++] = V[i1++];
        }else{
            aux[i++] = V[i2++];
        }
    }

    while(i1 < n1)  aux[i++] = V[i1++];
    while(i2 < n2)  aux[i++] = V[i2++];

    for(let i = inicio; i < fim; ++i){
        V[i] = aux[i - inicio];
    }
};

const mergeSort = (V, inicio, fim) => {
    if(fim - inicio > 1){
        let meio = Math.floor((inicio + fim)/2);

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
};
```

#### Python 3.9

```python
def merge(V, inicio, meio, fim):
    aux = [0 for _ in range(fim - inicio)]
    i, i1, i2, n1, n2 = 0, inicio, meio, meio, fim

    while(i1 < n1 and i2 < n2):
        if(comp(V[i1], V[i2]) < 0):
            aux[i] = V[i1]
            i += 1
            i1 += 1
        else:
            aux[i] = V[i2]
            i += 1
            i2 += 1
    
    while(i1 < n1):
        aux[i] = V[i1]
        i += 1
        i1 += 1
    
    while(i2 < n2):
        aux[i] = V[i2]
        i += 1
        i2 += 1
    
    for i in range(inicio, fim):
        V[i] = aux[i - inicio]

def mergeSort(V, inicio, fim):
    if(fim - inicio > 1):
        meio = (inicio + fim)//2

        mergeSort(V, inicio, meio)
        mergeSort(V, meio, fim)
        merge(V, inicio, meio, fim)
```

### QuickSort

O QuickSort é o mais eficiente de todos os métodos de ordenação por comparação conhecidos e é o mais amplamente utilizado nos dias de hoje. A ideia do QuickSort é escolher um pivô e ordenar todos os elementos entre menores e maiores que o pivô, fazendo isso recursivamente até que o vetor esteja ordenado. O pivô escolhido normalmente é o último elemento e o GIF abaixo esquematiza a primeira execução de função `particao()` , destacando a escolha do pivô e as comparações e trocas feitas nesta execução.

![GIF representando uma execução da primeira chamada do particiona(). (Fonte: Java Guides)](https://3.bp.blogspot.com/-6e1hp4vtW2A/W5OGy25HrgI/AAAAAAAADrU/aaM5W--ufugeDxMvLW3iGCIS5HjXkDcDwCLcBGAs/s1600/quick\_sort\_partition\_animation.gif)

Tem uma ideia bem parecida com o MergeSort com mesmas complexidades de tempo, mas com uma baita economia de espaço. É o algoritmo de escolha em grande parte das implementações dos métodos `sort()` em diversas bibliotecas.

| Propriedades        | Complexidade       |
| ------------------- | ------------------ |
| Tempo (melhor caso) | O(n log n)         |
| Tempo (pior caso)   | O(n²) (muito raro) |
| Espaço              | O(1)               |

#### C99

```c
void swap(int* a, int* b){
    int aux = *a;
    *a = *b;
    *b = aux;
}

int particao(int* V, int inicio, int fim){
    int pivo = V[fim - 1];
    int i = inicio;

    for(int j = inicio; j < fim; ++j){
        if(comp(V[j], pivo) < 0){
            swap(&V[j], &V[i]);
            i += 1;
        }
    }

    if(comp(pivo, V[i]) < 0){
        swap(&V[i], &V[fim - 1]);
    }

    return i;
}

void quickSort(int* V, int inicio, int fim){
    if(fim > inicio){
        int posicaoPivo = particao(V, inicio, fim);

        quickSort(V, inicio, posicaoPivo);
        quickSort(V, posicaoPivo + 1, fim);
    }
}
```

#### C++17

```cpp
template <class T>
int particao(vector<T>& V, int inicio, int fim){
    T pivo = V[fim - 1];
    int i = inicio;
    
    for(int j = inicio; j < fim; ++j){
        if(comp(V[j], pivo)){
            swap(V[i], V[j]);
            ++i;
        }
    }

    if(comp(pivo, V[i]))    swap(V[i], V[fim - 1]);

    return i;
}

template<class T>
void quickSort(vector<T>& V, int inicio, int fim){
    if(fim > inicio){
        int posicaoPivo = particao(V, inicio, fim);

        quickSort(V, inicio, posicaoPivo);
        quickSort(V, posicaoPivo + 1, fim);
    }
}
```

#### JavaScript 12.18

```javascript
const particao = (V, inicio, fim) => {
    let pivo = V[fim - 1];
    let i = inicio;

    for(let j = inicio; j < fim; ++j){
        if(comp(V[j], pivo) < 0){
            [V[j], V[i]] = [V[i], V[j]];
            ++i;
        }
    }

    if(comp(pivo, V[i]) < 0){
        [V[i], V[fim - 1]] = [V[fim - 1], V[i]];
    }

    return i;
};

const quickSort = (V, inicio, fim) => {
    if(fim > inicio){
        let posicaoPivo = particao(V, inicio, fim);

        quickSort(V, inicio, posicaoPivo);
        quickSort(V, posicaoPivo + 1, fim);
    }
};
```

#### Python 3.9

```python
def particao(V, inicio, fim):
    pivo = V[fim - 1]
    i = inicio

    for j in range(inicio, fim):
        if(comp(V[j], pivo) < 0):
            V[j], V[i] = V[i], V[j]
            i += 1
    
    if(comp(pivo, V[i]) < 0):
        V[fim - 1], V[i] = V[i], V[fim - 1]
    
    return i

def quickSort(V, inicio, fim):
    if(fim > inicio):
        posicaoPivo = particao(V, inicio, fim)

        quickSort(V, inicio, posicaoPivo)
        quickSort(V, posicaoPivo + 1, fim)
```

### Counting sort

O Counting sort é bastante eficiente, mas só serve para um caso particular onde sabemos que os elementos possuem valores dentro de um determinado intervalo finito. A ideia por trás disso é contar quantos de cada elemento tem e após isso usar as contagens para reconstruir o vetor ordenado.

Este é o mais eficiente de todos os algoritmos que foram apresentados, mas ele só serve para casos muito específicos, ou seja, não é facilmente aplicável. Entretanto, é extremamente útil entender esse algoritmo porque alguns outros problemas podem ser resolvidos com muito menos espaço utilizando esta abordagem.

Ao contrário dos outros algoritmos, onde pudemos aplicar a função generalizada de comparação, aqui estamos nos atendo a ordenar do menor para o maior.

| Propriedades | Complexidade                                       |
| ------------ | -------------------------------------------------- |
| Tempo        | O(n)                                               |
| Espaço       | O(m), onde m é o tamanho do intervalo de elementos |

#### C99

```c
void countingSort(int* V, int n, int limite){
    int* aux = (int*) malloc(limite * sizeof(int));
    int k = 0;

    for(int i = 0; i < limite; ++i){
        aux[i] = 0;
    }

    for(int i = 0; i < n; ++i){
        aux[V[i]] += 1;
    }

    for(int i = 0; i < limite; ++i){
        for(int j = 0; j < aux[i]; ++j){
            V[k++] = i;
        }
    }

    free(aux);
}
```

#### C++17

```cpp
void countingSort(vector<int>& V, int limite){
    vector<int> aux(limite, 0);
    int k = 0, n = V.size();

    for(int i = 0; i < n; ++i){
        aux[V[i]] += 1;
    }

    for(int i = 0; i < limite; ++i){
        for(int j = 0; j < aux[i]; ++j){
            V[k++] = i;
        }
    }
}
```

#### JavaScript 12.18

```javascript
const countingSort = (V, limite) => {
    let aux = Array(limite);
    aux.fill(0);
    let k = 0;

    for(let i = 0; i < V.length; ++i){
        aux[V[i]] += 1;
    }

    for(let i = 0; i < limite; ++i){
        for(let j = 0; j < aux[i]; ++j){
            V[k++] = i;
        }
    }
};
```

#### Python 3.9

```python
def countingSort(V, limite):
    aux = [0 for _ in range(limite)]
    k = 0

    for elemento in V:
        aux[elemento] += 1
    
    for i in range(limite):
        for j in range(aux[i]):
            V[k] = i
            k += 1
```

## Soluções de bibliotecas

### C

Em C, é possível usar a função `qsort()` para ordenar um vetor por [QuickSort](ordenacao.md#quicksort). Mais informações sobre a função podem ser encontradas na [documentação](https://www.cplusplus.com/reference/cstdlib/qsort/).

### C++

Em C++, pode-se usar a função `sort()` para ordenar um vetor ou um `vector`. Mais informações sobre a função podem ser encontradas na [documentação](https://www.cplusplus.com/reference/algorithm/sort/?kw=sort).

### JavaScript

Em JavaScript, pode-se usar a função `sort()` para ordenar um vetor. Mais informações sobre a função podem ser encontradas na [documentação](https://developer.mozilla.org/pt-BR/docs/Web/JavaScript/Reference/Global\_Objects/Array/sort).

### Python

Em Python, pode-se usar tanto a função `sort()` quanto a função `sorted()` onde a primeira ordena o vetor e a segunda retorna uma cópia do vetor ordenado, sem alterar o vetor original. Mais informações sobre ambas as funções podem ser encontradas na [documentação](https://docs.python.org/pt-br/dev/howto/sorting.html).

## Customização de critérios

Até aqui, você percebeu que nas implementações usadas, eu usei um método chamado `comp()` como método de comparação entre elementos e não usei o operador de menor, que é o que normalmente se utiliza quando exemplificados o algoritmo? A intenção disso é para discorrer um pouco sobre como podemos customizar nossa função de comparação para podemos comparar quaisquer aspectos que desejarmos dos elementos dos vetores que estamos ordenando.

### Comparação relativa

Com a comparação relativa, comparamos dois elementos do vetor e indicamos qual dos elementos deve vir na frente. Com comparações o bastante, podemos ordenar o vetor de uma maneira esquemática (basicamente como mostrado em quase todos os métodos que vimos na seção anterior).

Nossa função `comp(a, b)` recebe dois elementos de mesmo tipo `a` e `b` retorna as seguintes respostas:

* `< 0`: caso `a` tenha que estar na frente de `b` no vetor ordenado
* `= 0`: caso os elementos tenham o mesmo valor e, portanto, não é possível comparar ambos os valores
* `> 0`: caso `b` tenha que estar na frente de `a` no vetor ordenado

As implementações de `sort()` em diversas bibliotecas têm suporte a uma função `comp()` personalizada que segue estas normas, o que torna o processo de ordenar qualquer tipo de elemento muito mais tranquilo.

> Na linguagem C++, o método `comp()` retorna um booleano onde `true` cobre o caso dos números negativos e `false` cobre os demais.

#### Exemplo de critério simples

Comparar dois inteiros e retornar número negativo se `a` estiver na frente de `b` na ordenação, número positivo caso contrário e `0` se os dois números são iguais.

#### C99

```c
int comp(const void* a, const void* b){
    return *(int*)a - *(int*)b;
}
```

#### C++17

```cpp
template <class T>
bool comp(T a, T b){
    return a < b;
}
```

#### JavaScript 12.18

```javascript
comp = (a, b) => a - b;
```

#### Critério elaborado

Comparar dois `Alunos`, ordenando-os primeiro por nota (da maior nota pra menor) e se os dois alunos têm mesma nota, apresentar em ordem alfabética. Repare que aqui começamos trabalhamos com dois casos: caso em que as notas são iguais e, neste caso, temos que desempatar pelo nome; e em que as notas são diferentes, então comparar pela nota já nos trás um resultado conclusivo.

#### C99

```c
int comp(const void* Aluno a, const void* Aluno b){
    if(*(struct Aluno*)a.nota == *(struct Aluno*)b.nota){
        return strcmp(*(struct Aluno*)a.nome, *(struct Aluno*)b.nome);
    }
    return *(struct Aluno*)b.nota - *(struct Aluno*)a.nota;
}
```

#### C++17

```cpp
bool comp(Aluno a, Aluno b){
    if(a.nota == b.nota)    return a.nome < b.nome;
    return a.nota > b.nota;
}
```

#### JavaScript 12.18

```javascript
const comp = (a, b) => {
    if(a.nota === b.nota){
        if(a.nome < b.nome) return -1;
        if(a.nome > b.nome) return 1;
        return 0;
    }
    return b.nota - a.nota;
};
```

### Comparação por chave

Com a comparação por chave, associamos cada elemento com um outro valor que é usado para definir a ordem de cada número. Por exemplo, podemos usar como chave o próprio valor, se quisermos ordenar números em ordem crescente ou podemos usar como chave o tamanho de uma string se quisermos ordenar palavras por tamanho.

No exemplo abaixo, queremos ordenar uma estrutura de dados `Aluno` pelo nome.

#### Python 3.9
```python
def comp(aluno):
    return aluno.nome
```
