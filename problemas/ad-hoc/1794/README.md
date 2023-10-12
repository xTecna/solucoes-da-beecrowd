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

### C#
```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        List<int> L = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
        List<int> S = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        if(L[0] <= N && N <= L[1] && S[0] <= N && N <= S[1]){
            Console.WriteLine("possivel");
        }else{
            Console.WriteLine("impossivel");
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        
        String[] L = in.readLine().trim().split(" ");
        int LA = Integer.parseInt(L[0]);
        int LB = Integer.parseInt(L[1]);

        String[] S = in.readLine().trim().split(" ");
        int SA = Integer.parseInt(S[0]);
        int SB = Integer.parseInt(S[1]);

        if(LA <= N && N <= LB && SA <= N && N <= SB){
            System.out.println("possivel");
        }else{
            System.out.println("impossivel");
        }
    }
}
```

### JavaScript 12.18
```js
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
```py
N = int(input().strip())
LA, LB = [int(x) for x in input().strip().split(' ')]
SA, SB = [int(x) for x in input().strip().split(' ')]

if(LA <= N <= LB and SA <= N <= SB):
    print("possivel")
else:
    print("impossivel")
```