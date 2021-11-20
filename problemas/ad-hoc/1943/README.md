# 1943 - Top N

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1943)

## Solução

Segue o mesmo raciocínio do [1037 - Intervalo](../../iniciante/1037/README.md), com a diferença que não há limite superior, apenas inferior, então um dos jeitos mais fáceis de resolver esse problema é abordar o número dado de cima para baixo.

### C99
```c
#include <stdio.h>

int main(){
    int K;

    scanf("%d", &K);

    if(K == 1)          printf("Top 1\n");
    else if(K <= 3)     printf("Top 3\n");
    else if(K <= 5)     printf("Top 5\n");
    else if(K <= 10)    printf("Top 10\n");
    else if(K <= 25)    printf("Top 25\n");
    else if(K <= 50)    printf("Top 50\n");
    else                printf("Top 100\n");

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int K;

    cin >> K;

    if(K == 1)          cout << "Top 1" << endl;
    else if(K <= 3)     cout << "Top 3" << endl;
    else if(K <= 5)     cout << "Top 5" << endl;
    else if(K <= 10)    cout << "Top 10" << endl;
    else if(K <= 25)    cout << "Top 25" << endl;
    else if(K <= 50)    cout << "Top 50" << endl;
    else                cout << "Top 100" << endl;

    return 0;
}
```

### JavaScript 12.18
```javascript
let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

let K = parseInt(lines.shift());

if(K == 1)          console.log("Top 1");
else if(K <= 3)     console.log("Top 3");
else if(K <= 5)     console.log("Top 5");
else if(K <= 10)    console.log("Top 10");
else if(K <= 25)    console.log("Top 25");
else if(K <= 50)    console.log("Top 50");
else                console.log("Top 100");
```

### Python 3.9
```python
K = int(input())

if(K == 1):
    print("Top 1")
elif(K <= 3):
    print("Top 3")
elif(K <= 5):
    print("Top 5")
elif(K <= 10):
    print("Top 10")
elif(K <= 25):
    print("Top 25")
elif(K <= 50):
    print("Top 50")
else:
    print("Top 100")
```