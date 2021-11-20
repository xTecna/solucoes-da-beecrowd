# 1794 - Lavanderia

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1794)

## Solução

Neste problema, apenas precisamos avaliar se o primeiro número está dentro dos dois intervalos inclusive. Em Python, o código fica bem bonito.

### C99
```c
#include <stdio.h>

int main(){
    int N, LA, LB, SA, SB;

    scanf("%d %d %d %d %d", &N, &LA, &LB, &SA, &SB);

    if(LA <= N && N <= LB && SA <= N && N <= SB){
        printf("possivel\n");
    }else{
        printf("impossivel\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N, LA, LB, SA, SB;

    cin >> N >> LA >> LB >> SA >> SB;

    if(LA <= N && N <= LB && SA <= N && N <= SB){
        cout << "possivel" << endl;
    }else{
        cout << "impossivel" << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());
let [LA, LB] = lines.shift().trim().split(' ').map((x) => parseInt(x));
let [SA, SB] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if(LA <= N && N <= LB && SA <= N && N <= SB){
    console.log("possivel");
}else{
    console.log("impossivel");
}
```

### Python 3.9
```python
N = int(input().strip())
LA, LB = [int(x) for x in input().strip().split(' ')]
SA, SB = [int(x) for x in input().strip().split(' ')]

if(LA <= N <= LB and SA <= N <= SB):
    print("possivel")
else:
    print("impossivel")
```