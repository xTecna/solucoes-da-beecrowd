# 1034 - Festival de Estátuas de Gelo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1034)

## Solução

Aplicação direta do algoritmo da mochila, onde cada bloco corresponde a um item diferente e o comprimento do bloco de gelo corresponde à capacidade desta.

> Infelizmente não temos soluções disponíveis em C#, JavaScript 12.18 e Python 3.9.

### C99

```c
#include <stdio.h>

int N, M, blocos[25], mochila[1000001];

int min(int a, int b)
{
    return a < b ? a : b;
}

int calculaMochila()
{
    for (int i = 1; i <= M; ++i)
    {
        mochila[i] = -1;
    }
    mochila[0] = 0;

    for (int i = 0; i < N; ++i)
    {
        int bloco = blocos[i];

        for (int j = bloco; j <= M; ++j)
        {
            if (mochila[j - bloco] != -1)
            {
                if (mochila[j] == -1)
                {
                    mochila[j] = mochila[j - bloco] + 1;
                }
                else
                {
                    mochila[j] = min(mochila[j], mochila[j - bloco] + 1);
                }
            }
        }
    }

    return mochila[M];
}

int main()
{
    int T;

    scanf("%d", &T);
    for (int k = 0; k < T; ++k)
    {
        scanf("%d %d", &N, &M);
        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &blocos[i]);
        }

        printf("%d\n", calculaMochila());
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <vector>

using namespace std;

int N, M;
vector<int> blocos, mochila;

int min(int a, int b)
{
    return a < b ? a : b;
}

int calculaMochila()
{
    mochila.assign(M + 1, -1);
    mochila[0] = 0;

    int resposta = M;
    for (int i = 0; i < N; ++i)
    {
        int bloco = blocos[i];

        for (int j = bloco; j <= M; ++j)
        {
            if (mochila[j - bloco] != -1)
            {
                if (mochila[j] == -1)
                {
                    mochila[j] = mochila[j - bloco] + 1;
                }
                else
                {
                    mochila[j] = min(mochila[j], mochila[j - bloco] + 1);
                }
            }
        }
    }

    return mochila[M];
}

int main()
{
    int T;

    cin >> T;
    for (int k = 0; k < T; ++k)
    {
        cin >> N >> M;
        blocos.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> blocos[i];
        }

        cout << calculaMochila() << endl;
    }

    return 0;
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int N;
    public static int M;
    public static int[] mochila;
    public static int[] blocos;

    public static int calculaMochila() {
        mochila = new int[M + 1];
        for (int i = 1; i <= M; ++i) {
            mochila[i] = -1;
        }
        mochila[0] = 0;

        for (int i = 0; i < N; ++i) {
            int bloco = blocos[i];

            for (int j = bloco; j <= M; ++j) {
                if (mochila[j - bloco] != -1) {
                    if (mochila[j] == -1) {
                        mochila[j] = mochila[j - bloco] + 1;
                    } else {
                        mochila[j] = Math.min(mochila[j], mochila[j - bloco] + 1);
                    }
                }
            }
        }

        return mochila[M];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for (int k = 0; k < T; ++k) {
            String[] numeros = in.readLine().trim().split(" ");
            N = Integer.parseInt(numeros[0]);
            M = Integer.parseInt(numeros[1]);

            blocos = new int[N];
            numeros = in.readLine().trim().split(" ");
            for (int i = 0; i < N; ++i) {
                blocos[i] = Integer.parseInt(numeros[i]);
            }

            System.out.println(calculaMochila());
        }
    }
}
```