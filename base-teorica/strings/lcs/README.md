# Maior Subsequência Comum

## Motivação

Dadas duas strings `A` e `B`, a maior subsequência comum se dá pela maior sequência de letras possível que está tanto em `A` quanto em `B` na ordem correta. Isso não significa que todas as letras precisam ser consecutivas nas duas _strings_, mas é importante que a ordem seja exatamente a mesma nas duas _strings_. Por exemplo, se `A = "ABCD"` e `B = "ACBAD"`, então a maior subsequência comum entre essas duas _strings_ é `"ABD"` ou `"ACD"` (ambas tamanho 3). Perceba que apesar das letras não estarem consecutivas, a ordem foi respeitada. Outros exemplos estão esquematizados na tabela abaixo:

| String A                 | String B                   | Maior Subsequência Comum |
| ------------------------ | -------------------------- | ------------------------ |
| `"ABCDGH"`               | `"AEDFHR"`                 | `"ADH"` (tamanho 3)      |
| `"AGGTAB"`               | `"GXTXAYB"`                | `"GTAB"` (tamanho 4)     |
| `"Hey This java is hot"` | `"Java is a new paradigm"` | `"ava is "` (tamanho 7)  |

Tal algoritmo é amplamente usado quando queremos identificar diferenças entre dois textos, o que é a base do comando `diff` e do controle de versões de ferramentas como o git. Esse algoritmo também utilizado em computação biomédica, na comparação de sequência de genomas.

## Algoritmos

### Maior Subsequência Comum

A partir daqui, vamos considerar que estamos interessados no algoritmo que retorna apenas o tamanho da maior subsequência comum entre duas _strings_. Vamos chamar tal função que realiza essa tarefa de `LCS(A, B)`, onde `A` e `B` são as duas _strings_ que se deseja saber qual é o tamanho da maior subsequência comum entre elas. Também vamos considerar que `|A| = n` e `|B| = m`, ou seja, os tamanhos das strings `A` e `B` são respectivamente `n` e `m`.

Este problema pode ser resolvido eficientemente com complexidade $O(nm)$ usando programação dinâmica, já que o problema de determinar `LCS(A, B)` pode ser dividido em problemas menores e que podemos ir resolvendo passo a passo usando resultados anteriores para nos guiar nos problemas maiores. Isso pode ser feito porque a nossa função `LCS(A, B)` tem duas propriedades muito interessantes:

* Se adicionarmos a mesma letra `X` ao final de `A` e `B`, temos que `LCS(A + X, B + X) = LCS(A, B) + 1`, pois adicionando a mesma letra, temos certeza que estamos agregando à maior subsequência comum, sem perda de ordenação, já que `X` é a última letra de ambas as _strings_.
* Se adicionarmos letras diferentes `X` e `Y` ao final de `A` e `B`, não podemos adicionar 1 tão fácil, já que sabemos que as letras diferentes não podem ambas fazer parte da mesma subsequência. Mas podemos dizer que `LCS(A + X, B + Y) = max(LCS(A + X, B), LCS(A, B + Y))`, já que podemos basear nossa resposta numa simples questão de "sabemos que as duas letras juntas não vão formar uma subsequência maior, mas uma delas sozinha pode contribuir para uma subsequência maior".

Com isso, temos a seguinte recorrência:

$$
LCS(A, B) = 
\begin{cases}
0, \text{se } A \text{ e } B \text{ são strings vazias,} \\
LCS(A', B') + 1, \text{ se a última letra de } A \text{ e } B \text{ são iguais} \\
max(LCS(A, B'), LCS(A', B)), \text{ se a última letra de } A \text{ e } B \text{ não são iguais}
\end{cases}
$$

considerando que $X'$ para qualquer _string_ $X$ seria a _string_ sem a última letra.

#### Implementação

Normalmente as recorrências seriam representadas por funções recursivas, mas tomar uma abordagem iterativa pode representar ganhos muito altos de performance. Para isso, usamos uma matriz de [memorização](../../paradigmas/memorizacao/README.md) e começamos de trás pra frente, do caso base e ir construindo a solução até chegarmos no resultado que gostaríamos.

##### C99
```c
int LCS(char* A, char* B){
    int** T;
    int n, m;
    
    n = strlen(A), m = strlen(B);
    
    T = (int**) malloc(sizeof(int*) * (n + 1));
    for(int i = 0; i <= n; ++i){
        T[i] = (int*) malloc(sizeof(int) * (m + 1));
        for(int j = 0; j <= m; ++j){
            T[i][j] = 0;
        }
    }
    
    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A[i - 1] == B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
            }else{
                T[i][j] = T[i][j - 1];
                T[i][j] = T[i][j] < T[i - 1][j] ? T[i - 1][j] : T[i][j];
            }
        }
    }
    
    return T[n][m];
}
```

##### C++20
```cpp
int LCS(string A, string B){
    int n, m;
    vector<vector<int> > T;

    n = A.length(), m = B.length();

    T.assign(n + 1, vector<int>());
    for(int i = 0; i <= n; ++i){
        T[i].assign(m + 1, 0);
    }

    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A[i - 1] == B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
            }else{
                T[i][j] = max(T[i][j - 1], T[i - 1][j]);
            }
        }
    }

    return T[n][m];
}
```

##### C#
```cs
static int LCS(string A, string B) {
    int n = A.Length, m = B.Length;
    int[,] T = new int[n + 1, m + 1];

    for(int i = 0; i <= n; ++i){
        for(int j = 0; j <= m; ++j){
            T[i, j] = 0;
        }
    }

    int resultado = 0;
    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A[i - 1] == B[j - 1]){
                T[i, j] = T[i - 1, j - 1] + 1;
            }else{
                T[i, j] = Math.Max(T[i][j - 1], T[i - 1][j]);
            }
        }
    }

    return T[n, m];
}
```

##### Java 19
```java
public static int LCS(String A, String B) {
    int n = A.length(), m = B.length();
    int[][] T = new int[n + 1][m + 1];

    for(int i = 0; i <= n; ++i){
        for(int j = 0; j <= m; ++j){
            T[i][j] = 0;
        }
    }

    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A.charAt(i - 1) == B.charAt(j - 1)){
                T[i][j] = T[i - 1][j - 1] + 1;
            }else{
                T[i][j] = Math.max(T[i][j - 1], T[i - 1][j]);
            }
        }
    }

    return T[n][m];
}
```

##### JavaScript 12.18
```js
const LCS = (A, B) => {
    let n = A.length, m = B.length;
    let T = Array(n + 1);
    for(let i = 0; i <= n; ++i){
        T[i] = Array(m + 1);
        T[i].fill(0);
    }

    for(let i = 1; i <= n; ++i){
        for(let j = 1; j <= m; ++j){
            if(A[i - 1] === B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
            }else{
                T[i][j] = Math.max(T[i][j - 1], T[i - 1][j]);
            }
        }
    }

    return T[n][m];
}
```

##### Python 3.9
```py
def LCS(A, B):
    n, m = len(A), len(B)
    T = [[0 for _ in range(m + 1)] for _ in range(n + 1)]

    for i in range(1, n + 1):
        for j in range(1, m + 1):
            if(A[i - 1] == B[j - 1]):
                T[i][j] = T[i - 1][j - 1] + 1
            else:
                T[i][j] = max(T[i][j - 1], T[i - 1][j])
    
    return T[n][m]
```

### Maior Substring Comum

Se estamos considerando apenas _substrings_, onde além da ordem, as letras agora também precisam ser consecutivas, então a segunda propriedade demonstrada no algoritmo anterior não é mais aplicada aqui, ou seja, se uma _string_ termina com letras diferentes, não tem maneira alguma de uma das letras contribuir para a solução. Mas a primeira propriedade, por outro lado, segue valendo, já que a última letra sendo igual significa que ela pode contribuir para a resposta para o caso anterior sem as letras.

#### Implementação

Logo, precisamos aplicar apenas uma pequena mudança em relação ao algoritmo anterior, removendo a propriedade que não serve mais para esse caso.

Com a falta da segunda propriedade entretanto, a gente perde o acúmulo de resultados de uma posição da matriz a outra, e com isso, é necessário definir uma variável global para conseguir o maior resultado obtido até agora.

##### C99
```c
int LCS(char* A, char* B){
    int** T;
    int n, m, resultado;
    
    n = strlen(A), m = strlen(B);
    
    T = (int**) malloc(sizeof(int*) * (n + 1));
    for(int i = 0; i <= n; ++i){
        T[i] = (int*) malloc(sizeof(int) * (m + 1));
        for(int j = 0; j <= m; ++j){
            T[i][j] = 0;
        }
    }
    
    resultado = 0;
    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A[i - 1] == B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
                resultado = resultado < T[i][j] ? T[i][j] : resultado;
            }
        }
    }
    
    return resultado;
}
```

##### C++20
```cpp
int LCS(string A, string B){
    int n, m, resposta;
    vector<vector<int> > T;

    n = A.length(), m = B.length();

    T.assign(n + 1, vector<int>());
    for(int i = 0; i <= n; ++i){
        T[i].assign(m + 1, 0);
    }

    resposta = 0;
    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A[i - 1] == B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
                resposta = max(resposta, T[i][j]);
            }
        }
    }

    return resposta;
}
```

##### C#
```cs
static int LCS(string A, string B) {
    int n = A.Length, m = B.Length;
    int[,] T = new int[n + 1, m + 1];

    for(int i = 0; i <= n; ++i){
        for(int j = 0; j <= m; ++j){
            T[i, j] = 0;
        }
    }

    int resultado = 0;
    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A[i - 1] == B[j - 1]){
                T[i, j] = T[i - 1, j - 1] + 1;
                resultado = Math.Max(resultado, T[i, j]);
            }
        }
    }

    return resultado;
}
```

##### Java 19
```java
public static int LCS(String A, String B) {
    int n = A.length(), m = B.length();
    int[][] T = new int[n + 1][m + 1];

    for(int i = 0; i <= n; ++i){
        for(int j = 0; j <= m; ++j){
            T[i][j] = 0;
        }
    }

    int resultado = 0;
    for(int i = 1; i <= n; ++i){
        for(int j = 1; j <= m; ++j){
            if(A.charAt(i - 1) == B.charAt(j - 1)){
                T[i][j] = T[i - 1][j - 1] + 1;
                resultado = Math.max(resultado, T[i][j]);
            }
        }
    }

    return resultado;
}
```

##### JavaScript 12.18
```js
const LCS = (A, B) => {
    let n = A.length, m = B.length;
    let T = Array(n + 1);
    for(let i = 0; i <= n; ++i){
        T[i] = Array(m + 1);
        T[i].fill(0);
    }

    let resposta = 0;
    for(let i = 1; i <= n; ++i){
        for(let j = 1; j <= m; ++j){
            if(A[i - 1] === B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
                resposta = Math.max(resposta, T[i][j]);
            }
        }
    }

    return resposta;
}
```

##### Python 3.9
```py
def LCS(A, B):
    n, m = len(A), len(B)
    T = [[0 for _ in range(m + 1)] for _ in range(n + 1)]

    resposta = 0
    for i in range(1, n + 1):
        for j in range(1, m + 1):
            if(A[i - 1] == B[j - 1]):
                T[i][j] = T[i - 1][j - 1] + 1
                resposta = max(resposta, T[i][j])
    
    return resposta
```

## Problemas

* [1237 - Comparação de Substring](../../../problemas/strings/1237/README.md)