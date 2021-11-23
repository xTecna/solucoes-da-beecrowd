# 1214 - Acima da Média

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1214)

## Solução

Primeiro se calcula a média e só depois avaliamos se cada aluno é maior do que a média ou não. 

### C99
```c
#include <stdio.h>

int main()
{
    double media, resposta;
    int C, N, alunos[1000];

    scanf("%d", &C);

    for (int k = 0; k < C; ++k)
    {
        scanf("%d", &N);

        media = 0.0;
        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &alunos[i]);

            media += alunos[i];
        }

        media /= N;
        resposta = 0;
        for (int i = 0; i < N; ++i)
        {
            if (alunos[i] > media)
            {
                resposta += 1;
            }
        }

        resposta = resposta / N * 100;
        printf("%.3lf%%\n", resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <iomanip>
#include <vector>

using namespace std;

int main()
{
    int N, C;
    vector<int> alunos;
    double media, resposta;

    cin >> C;

    for (int k = 0; k < C; ++k)
    {
        cin >> N;

        media = 0.0;
        alunos.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> alunos[i];

            media += alunos[i];
        }

        media /= N;
        resposta = 0;
        for (int i = 0; i < N; ++i)
        {
            if (alunos[i] > media)
            {
                resposta += 1;
            }
        }

        resposta = resposta / N * 100;
        cout << setprecision(3) << fixed << resposta << "%" << endl;
    }

    return 0;
}
```

### Python 3.9
```python
C = int(input())

for _ in range(C):
    alunos = [int(x) for x in input().strip().split(' ')[1:]]

    media = 0.0
    for aluno in alunos:
        media += aluno

    media /= len(alunos)
    resposta = 0
    for aluno in alunos:
        if(aluno > media):
            resposta += 1

    resposta = resposta/len(alunos) * 100
    print(f'{resposta:.3f}%')
```