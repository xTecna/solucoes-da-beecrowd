# 1091 - Divisão da Nlogônia

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1091)

## Solução

Vide [1041 - Coordenadas de um Ponto](../../iniciante/1041/README.md).

> Repare que a origem agora não é sempre em (0, 0), então é preciso normalizar as coordenadas que vamos testar. Para isso, basta diminuir as coordenadas com a origem e continuar com o código original (como se agora estivéssemos comparando distâncias relativas).

### C99
```c
#include <stdio.h>

int main(){
    int K, N, M, X, Y;

    while(scanf("%d", &K)){
        if(!K)  break;

        scanf("%d %d", &N, &M);
        
        for(int i = 0; i < K; ++i){
            scanf("%d %d", &X, &Y);

            X -= N, Y -= M;

            if(X > 0){
                if(Y > 0)       printf("NE\n");
                else if(Y < 0)  printf("SE\n");
                else            printf("divisa\n");
            }else if(X < 0){
                if(Y > 0)       printf("NO\n");
                else if(Y < 0)  printf("SO\n");
                else            printf("divisa\n");
            }else               printf("divisa\n");
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int K, N, M, X, Y;

    while(cin >> K){
        if(!K)  break;

        cin >> N >> M;

        for(int i = 0; i < K; ++i){
            cin >> X >> Y;

            X -= N, Y -= M;

            if(X > 0){
                if(Y > 0)       cout << "NE" << endl;
                else if(Y < 0)  cout << "SE" << endl;
                else            cout << "divisa" << endl;
            }else if(X < 0){
                if(Y > 0)       cout << "NO" << endl;
                else if(Y < 0)  cout << "SO" << endl;
                else            cout << "divisa" << endl;
            }else               cout << "divisa" << endl;
        }
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
  let K = parseInt(lines.shift());

  let [N, M] = lines.shift().trim().split(" ").map((x) => parseInt(x));

  for (let i = 0; i < K; ++i) {
    let [X, Y] = lines.shift().trim().split(" ").map((x) => parseInt(x));

    X -= N, Y -= M;

    if (X > 0) {
      if (Y > 0) console.log("NE");
      else if (Y < 0) console.log("SE");
      else console.log("divisa");
    } else if (X < 0) {
      if (Y > 0) console.log("NO");
      else if (Y < 0) console.log("SO");
      else console.log("divisa");
    } else console.log("divisa");
  }
}
```

### Python 3.9
```python
while True:
    try:
        K = int(input())

        if(not K):
            break

        N, M = [int(x) for x in input().strip().split(' ')]

        for _ in range(K):
            X, Y = [int(x) for x in input().strip().split(' ')]

            X -= N
            Y -= M

            if(X > 0):
                if(Y > 0):
                    print("NE")
                elif(Y < 0):
                    print("SE")
                else:
                    print("divisa")
            elif(X < 0):
                if(Y > 0):
                    print("NO")
                elif(Y < 0):
                    print("SO")
                else:
                    print("divisa")
            else:
                print("divisa")
    except EOFError:
        break
```