# 1436 - Jogo do Tijolo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1436)

## Solução

O capitão deve ser uma pessoa cuja idade faça com que exista um número igual de pessoas mais novas e mais velhas que ela. Logo, o capitão precisa ser o que tem a idade equivalente à mediana das idades presentes na equipe. A entrada que vamos receber pode estar ordenada tanto do maior pro menor quanto do menor pro maior, mas isso para nós não importa, pois a mediana sempre vai ser o valor do meio. Por isso, só precisamos retornar a idade do jogador na posição do meio.

### C99
```c
#include <stdio.h>

int main()
{
    int T, N, idade, resposta;

    scanf("%d", &T);

    for (int k = 0; k < T; ++k)
    {
        scanf("%d", &N);

        for (int i = 0; i < N / 2; ++i)
        {
            scanf("%d", &idade);
        }
        scanf("%d", &resposta);
        for (int i = N / 2 + 1; i < N; ++i)
        {
            scanf("%d", &idade);
        }

        printf("Case %d: %d\n", k + 1, resposta);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main()
{
    int T, N, idade, resposta;

    cin >> T;

    for (int k = 0; k < T; ++k)
    {
        cin >> N;

        for (int i = 0; i < N / 2; ++i)
        {
            cin >> idade;
        }
        cin >> resposta;
        for (int i = N / 2 + 1; i < N; ++i)
        {
            cin >> idade;
        }

        cout << "Case " << k + 1 << ": " << resposta << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());

for (let k = 0; k < T; ++k) {
    let idades = lines.shift().trim().split(' ').map((x) => parseInt(x));
    idades.shift();

    console.log(`Case ${k + 1}: ${idades[Math.floor(idades.length / 2)]}`);
}
```

### Python 3.9
```python
T = int(input())

for i in range(T):
    idades = [int(x) for x in input().strip().split(' ')]
    idades.pop(0)

    print(f'Case {i + 1}: {idades[len(idades)//2]}')
```