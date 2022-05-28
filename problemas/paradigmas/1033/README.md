# 1033 - Quantas Chamadas Recursivas?

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1033)

## Solução

Este problema é muito parecido com o [1029 - Fibonacci, Quantas Chamadas?](../1029/README.md), mas tem uma diferença crucial quanto ao campo de busca. Enquanto naquele problema, o `n` só ia de 0 a 39, aqui o n pode ir de 0 a 2^63 - 1 (mais de 9 quintilhões). Só por aí, já podemos ter uma dica de que nossa abordagem recursiva não será rápida o suficiente para resolver este problema. Mas sabemos que a recorrência do exercício anterior ainda vale, ou seja, o número de chamadas continua sendo:

$$CF(n) = \begin{cases}
1 \text{, se } n = 0\\
1 \text{, se } n = 1\\
CF(n - 1) + CF(n - 2) + 1 \text{, caso contrário}
\end{cases}$$

Felizmente temos outras formas de representar essa recorrência e uma delas é eficiente o bastante para resolver este problema gigantesco em tempo hábil. Podemos transformar esta recorrência em um problema de multiplicação e potenciação de matrizes. Explico: considere as seguintes matrizes:

$$A = \begin{bmatrix}
1 & 1 & 1 \\
1 & 0 & 0 \\
0 & 0 & 1
\end{bmatrix} \text{ e } B = \begin{bmatrix}
CF(1) \\
CF(0) \\
1 \\
\end{bmatrix}$$

Se multiplicarmos a matriz $A$ pela matriz $B$, temos

$$A \times B = \begin{bmatrix}
1 & 1 & 1 \\
1 & 0 & 0 \\
0 & 0 & 1
\end{bmatrix} \times \begin{bmatrix}
CF(1) \\
CF(0) \\
1 \\
\end{bmatrix} = \begin{bmatrix}
CF(1) + CF(0) + 1 \\
CF(1) \\
1 \\
\end{bmatrix}$$

Perceba o que aconteceu, agora o primeiro elemento da matriz de resposta é exatamente o valor de $CF(2)$, ou seja, operar a multiplicação uma vez resulta em conseguirmos o resultado de $CF(2)$. E se multiplicarmos novamente?

$$A \times B = \begin{bmatrix}
1 & 1 & 1 \\
1 & 0 & 0 \\
0 & 0 & 1
\end{bmatrix} \times \begin{bmatrix}
CF(2) \\
CF(1) \\
1 \\
\end{bmatrix} = \begin{bmatrix}
CF(2) + CF(1) + 1 \\
CF(2) \\
1 \\
\end{bmatrix}$$

Não é magia, a matriz $A$ foi deliberadamente criada para este problema específico, onde nosso interesse é a cada multiplicação, imitarmos nossa recorrência e gerarmos um novo elemento sempre baseado nos dois elementos anteriores. Além disso, repare como o último elemento é sempre 1. Isso é importante pois o número 1 também faz parte da recorrência e por isso precisa ser sempre guardado pra termos acesso a ele.

Então, nosso problema se tornou um problema de multiplicação de matrizes onde, para descobrir o valor de $CF(n)$, basta pegar o primeiro elemento da matriz resultado de $A^{n - 1} \times B$. Mas como calculamos $A^{n - 1}$ de maneira rápida? Usamos a mesma ideia de [potenciação rápida de números](../../../base-teorica/matematica/macetes/README.md#potentiação-rápida) para matrizes também! Se temos as operações de multiplicação entre matrizes bem definida, podemos usar exatamente o mesmo método para conseguirmos a potência em complexidade $O(\log{n})$ (o que reduz o número de passos de 9 quintilhões para 63). Para fazer a multiplicação entre matrizes, basta seguir o algoritmo normal do Ensino Médio mesmo. Ele tem complexidade $O(n^3)$, mas $n$ é no máximo 3, então tá de boa.

Último detalhe é prestar atenção que esse resultado deve ser dado em relação a ao último dígito de uma base numérica. Como visto no material teórico sobre [bases numéricas](../../../base-teorica/matematica/base-numerica/README.md), para obtermos o último dígito de um número em uma base numérica $b$ basta fazermos o resto da divisão por $b$, ou seja, a cada atualização que fizermos em alguma célula da resposta, nós seguimos para pegar apenas o resto da divisão do número, sempre mantendo o valor entre 0 e $b$ - 1.

### C99

```c
#include <stdio.h>

int b;

struct Matriz
{
    int **M;
    int n, m;
};

struct Matriz inicializa(int n, int m)
{
    struct Matriz nova;

    nova.n = n;
    nova.m = m;
    nova.M = (int **)malloc(sizeof(int *) * n);
    for (int i = 0; i < n; ++i)
    {
        nova.M[i] = (int *)malloc(sizeof(int) * m);
    }

    return nova;
}

struct Matriz multiplicacao(struct Matriz m1, struct Matriz m2)
{
    struct Matriz m3 = inicializa(m1.m, m2.n);

    for (int i = 0; i < m1.n; ++i)
    {
        for (int j = 0; j < m2.m; ++j)
        {
            m3.M[i][j] = 0;
            for (int k = 0; k < m1.m; ++k)
            {
                m3.M[i][j] += m1.M[i][k] * m2.M[k][j];
                m3.M[i][j] %= b;
            }
        }
    }

    return m3;
}

struct Matriz potencia(struct Matriz m, int expoente)
{
    if (expoente == 1)
    {
        return m;
    }
    else if (expoente % 2)
    {
        return multiplicacao(m, potencia(m, expoente - 1));
    }
    else
    {
        struct Matriz pot = potencia(m, expoente / 2);
        return multiplicacao(pot, pot);
    }
}

int main()
{
    int T, n;

    T = 0;
    while (scanf("%d %d", &n, &b) != EOF)
    {
        if (n == 0 && b == 0)
        {
            break;
        }

        struct Matriz A = inicializa(3, 3);
        A.M[0][0] = 1;
        A.M[0][1] = 1;
        A.M[0][2] = 1;
        A.M[1][0] = 1;
        A.M[1][1] = 0;
        A.M[1][2] = 0;
        A.M[2][0] = 0;
        A.M[2][1] = 0;
        A.M[2][2] = 1;

        struct Matriz B = inicializa(3, 1);
        B.M[0][0] = 1;
        B.M[1][0] = 1;
        B.M[2][0] = 1;

        printf("Case %d: %d %d ", ++T, n, b);
        if (n < 2)
        {
            printf("1\n");
        }
        else
        {
            struct Matriz An1 = potencia(A, n - 1);
            struct Matriz R = multiplicacao(An1, B);

            printf("%d\n", R.M[0][0]);
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <vector>

using namespace std;

int b;

class Matriz
{
public:
    int n, m;
    vector<vector<int>> M;

    Matriz(int n, int m)
    {
        M.assign(n, vector<int>(m, 0));
        this->n = n;
        this->m = m;
    }

    const Matriz operator*(const Matriz &outra)
    {
        Matriz resposta = Matriz(this->m, outra.n);

        for (int i = 0; i < this->n; ++i)
        {
            for (int j = 0; j < outra.m; ++j)
            {
                for (int k = 0; k < this->m; ++k)
                {
                    resposta.M[i][j] += this->M[i][k] * outra.M[k][j];
                    resposta.M[i][j] %= b;
                }
            }
        }

        return resposta;
    }
};

Matriz potencia(Matriz base, int expoente)
{
    if (expoente == 1)
    {
        return base;
    }
    else if (expoente % 2)
    {
        return base * potencia(base, expoente - 1);
    }
    else
    {
        Matriz pot = potencia(base, expoente / 2);
        return pot * pot;
    }
}

int main()
{
    int T, n;

    T = 0;
    while (cin >> n >> b)
    {
        if (n == 0 && b == 0)
        {
            break;
        }

        Matriz A = Matriz(3, 3);
        A.M[0][0] = 1;
        A.M[0][1] = 1;
        A.M[0][2] = 1;
        A.M[1][0] = 1;
        A.M[1][1] = 0;
        A.M[1][2] = 0;
        A.M[2][0] = 0;
        A.M[2][1] = 0;
        A.M[2][2] = 1;

        Matriz B = Matriz(3, 1);
        B.M[0][0] = 1;
        B.M[1][0] = 1;
        B.M[2][0] = 1;

        cout << "Case " << ++T << ": " << n << " " << b << " ";
        if (n < 2)
        {
            cout << 1 << endl;
        }
        else
        {
            Matriz An1 = potencia(A, n - 1);
            Matriz R = An1 * B;

            cout << R.M[0][0] << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class Matriz {
    public int n;
    public int m;
    public int b;
    public int[,] M;

    public Matriz(int n, int m, int b){
        this.n = n;
        this.m = m;
        this.b = b;
        this.M = new int[this.n, this.m];
    }

    public static Matriz operator *(Matriz m1, Matriz m2){
        Matriz m3 = new Matriz(m1.m, m2.n, m1.b);

        for(int i = 0; i < m1.n; ++i){
            for(int j = 0; j < m2.m; ++j){
                for(int k = 0; k < m1.m; ++k){
                    m3.M[i, j] += m1.M[i, k] * m2.M[k, j];
                    m3.M[i, j] %= m1.b;
                }
            }
        }

        return m3;
    }
}

class URI {
    static Matriz potencia(Matriz a, int expoente){
        if(expoente == 1){
            return a;
        }else if(expoente % 2 == 1){
            return a * potencia(a, expoente - 1);
        }else{
            Matriz pot = potencia(a, expoente / 2);
            return pot * pot;
        }
    }

    static void Main(string[] args) {
        string entrada;

        int T = 0;
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int n = numeros[0];
            int b = numeros[1];

            if(n == 0 && b == 0){
                break;
            }

            Matriz A = new Matriz(3, 3, b);
            A.M[0, 0] = 1;
            A.M[0, 1] = 1;
            A.M[0, 2] = 1;
            A.M[1, 0] = 1;
            A.M[1, 1] = 0;
            A.M[1, 2] = 0;
            A.M[2, 0] = 0;
            A.M[2, 1] = 0;
            A.M[2, 2] = 1;

            Matriz B = new Matriz(3, 1, b);
            B.M[0, 0] = 1;
            B.M[1, 0] = 1;
            B.M[2, 0] = 1;

            if(n < 2){
                Console.WriteLine($"Case {++T}: {n} {b} 1");
            }else{
                Matriz An1 = potencia(A, n - 1);
                Matriz R = An1 * B;

                Console.WriteLine($"Case {++T}: {n} {b} {R.M[0, 0]}");
            }
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int b;

    public static class Matriz {
        public int n;
        public int m;
        public int[][] M;

        public Matriz(int n, int m) {
            this.n = n;
            this.m = m;
            this.M = new int[this.n][this.m];
        }
    }

    public static Matriz multiplicacao(Matriz m1, Matriz m2) {
        Matriz m3 = new Matriz(m1.m, m2.n);

        for (int i = 0; i < m1.n; ++i) {
            for (int j = 0; j < m2.m; ++j) {
                for (int k = 0; k < m1.m; ++k) {
                    m3.M[i][j] += m1.M[i][k] * m2.M[k][j];
                    m3.M[i][j] %= b;
                }
            }
        }

        return m3;
    }

    public static Matriz potencia(Matriz base, int expoente) {
        if (expoente == 1) {
            return base;
        } else if (expoente % 2 == 1) {
            return multiplicacao(base, potencia(base, expoente - 1));
        } else {
            Matriz pot = potencia(base, expoente / 2);
            return multiplicacao(pot, pot);
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = 0;
        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int n = Integer.parseInt(entrada[0]);
            b = Integer.parseInt(entrada[1]);

            if (n == 0 && b == 0) {
                break;
            }

            Matriz A = new Matriz(3, 3);
            A.M[0][0] = 1;
            A.M[0][1] = 1;
            A.M[0][2] = 1;
            A.M[1][0] = 1;
            A.M[1][1] = 0;
            A.M[1][2] = 0;
            A.M[2][0] = 0;
            A.M[2][1] = 0;
            A.M[2][2] = 1;

            Matriz B = new Matriz(3, 1);
            B.M[0][0] = 1;
            B.M[1][0] = 1;
            B.M[2][0] = 1;

            if (n < 2) {
                System.out.printf("Case %d: %d %d 1\n", ++T, n, b);
            } else {
                Matriz An1 = potencia(A, n - 1);
                Matriz R = multiplicacao(An1, B);

                System.out.printf("Case %d: %d %d %d\n", ++T, n, b, R.M[0][0]);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');
lines.pop();

let b;

class Matriz {
    constructor(n, m) {
        this.n = n;
        this.m = m;
        this.M = [];
        for (let i = 0; i < this.n; ++i) {
            this.M.push([]);
            for (let j = 0; j < this.m; ++j) {
                this.M[i].push(0);
            }
        }
    }
};

const multiplicacao = (m1, m2) => {
    let m3 = new Matriz(m1.m, m2.n);

    for (let i = 0; i < m1.n; ++i) {
        for (let j = 0; j < m2.m; ++j) {
            for (let k = 0; k < m1.m; ++k) {
                m3.M[i][j] += m1.M[i][k] * m2.M[k][j];
                m3.M[i][j] %= b;
            }
        }
    }

    return m3;
};

const potencia = (base, expoente) => {
    if (expoente === 1) {
        return base;
    } else if (expoente % 2) {
        return multiplicacao(base, potencia(base, expoente - 1));
    } else {
        const pot = potencia(base, Math.floor(expoente / 2));
        return multiplicacao(pot, pot);
    }
};

let T = 0;
while (lines.length) {
    let n = 0;
    [n, b] = lines.shift().trim().split(' ').map(x => parseInt(x));

    if (n === 0 && b === 0) {
        break;
    }

    let A = new Matriz(3, 3);
    A.M[0][0] = 1;
    A.M[0][1] = 1;
    A.M[0][2] = 1;
    A.M[1][0] = 1;
    A.M[2][2] = 1;

    let B = new Matriz(3, 1);
    B.M[0][0] = 1;
    B.M[1][0] = 1;
    B.M[2][0] = 1;

    if (n < 2) {
        console.log(`Case ${++T}: ${n} ${b} 1`);
    } else {
        let An1 = potencia(A, n - 1);
        let R = multiplicacao(An1, B);

        console.log(`Case ${++T}: ${n} ${b} ${R.M[0][0]}`);
    }
}
```

### Python 3.9

```py
b = 0


class Matriz:
    def __init__(self, n, m):
        self.n = n
        self.m = m
        self.M = [[0 for _ in range(m)] for _ in range(n)]

    def __mul__(self, outra):
        global b
        resposta = Matriz(self.m, outra.n)

        for i in range(self.n):
            for j in range(outra.m):
                for k in range(self.m):
                    resposta.M[i][j] += self.M[i][k] * outra.M[k][j]
                    resposta.M[i][j] %= b

        return resposta


def potencia(base, expoente):
    if(expoente == 1):
        return base
    elif(expoente % 2):
        return base * potencia(base, expoente - 1)
    else:
        pot = potencia(base, expoente // 2)
        return pot * pot


T = 1
while True:
    try:
        n, b = [int(x) for x in input().strip().split(' ')]

        if(n == 0 and b == 0):
            break

        A = Matriz(3, 3)
        A.M[0][0] = 1
        A.M[0][1] = 1
        A.M[0][2] = 1
        A.M[1][0] = 1
        A.M[2][2] = 1

        B = Matriz(3, 1)
        B.M[0][0] = 1
        B.M[1][0] = 1
        B.M[2][0] = 1

        if(n < 2):
            print(f'Case {T}: {n} {b} 1')
        else:
            An1 = potencia(A, n - 1)
            R = An1 * B

            print(f'Case {T}: {n} {b} {R.M[0][0]}')

        T += 1
    except EOFError:
        break
```