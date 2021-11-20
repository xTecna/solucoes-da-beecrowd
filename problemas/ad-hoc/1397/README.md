# 1397 - Jogo do Maior

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1397)

## Solução

Apenas simular o processo é o suficiente para resolver este problema, lembrando de não contar ponto caso os dois jogadores falem o mesmo número.

### C99
```c
#include <stdio.h>

int main(){
    int N, A, B, jogador1, jogador2;

    while(scanf("%d", &N)){
        if(!N)  break;

        jogador1 = 0, jogador2 = 0;

        for(int i = 0; i < N; ++i){
            scanf("%d %d", &A, &B);

            if(A > B)       ++jogador1;
            else if(B > A)  ++jogador2;
        }

        printf("%d %d\n", jogador1, jogador2);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N, A, B, jogador1, jogador2;

    while(cin >> N){
        if(!N)  break;

        jogador1 = 0, jogador2 = 0;

        for(int i = 0; i < N; ++i){
            cin >> A >> B;

            if(A > B)       ++jogador1;
            else if(B > A)  ++jogador2;
        }

        cout << jogador1 << ' ' << jogador2 << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
  let N = parseInt(lines.shift());

  if(!N)  break;

  let [jogador1, jogador2] = [0, 0];

  for (let i = 0; i < N; ++i) {
    let [A, B] = lines.shift().trim().split(" ").map((x) => parseInt(x));

    if (A > B)      jogador1 += 1;
    else if (B > A) jogador2 += 1;
  }

  console.log(`${jogador1} ${jogador2}`);
}
```

### Python 3.9
```python
while True:
    try:
        N = int(input())

        if(not N):
            break
        
        jogador1, jogador2 = 0, 0

        for _ in range(N):
            A, B = [int(x) for x in input().strip().split(' ')]

            if(A > B):
                jogador1 += 1
            elif(B > A):
                jogador2 += 1
        
        print(f"{jogador1} {jogador2}")
    except EOFError:
        break
```