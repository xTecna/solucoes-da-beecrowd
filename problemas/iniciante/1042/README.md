# 1042 - Sort Simples

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1042)

## Solução

Podemos simplesmente colocar estes valores em um vetor e ordená-los usando o método naturalmente de ordenação ou usando um dos métodos apresentados na página [Ordenação](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md).

> Seja qual for a solução, lembre-se de guardar a ordem original da entrada em outras variáveis.

### Alternativa 1 - Transformando em vetor e ordenando com `sort()`

Esta abordagem é mais simples, só é um pouco menos performática, mas a diferença é bem pouquinha mesmo.

#### C99

```c
#include <stdlib.h>
#include <stdio.h>

int comp(const void* a, const void* b){
    return *(int*)a - *(int*)b;
}

int main(){
    int v[3], V[3];

    for(int i = 0; i < 3; ++i){
        scanf("%d", &V[i]);
        v[i] = V[i];
    }

    qsort(v, 3, sizeof(int), comp);

    for(int i = 0; i < 3; ++i){
        printf("%d\n", v[i]);
    }
    printf("\n");
    for(int i = 0; i < 3; ++i){
        printf("%d\n", V[i]);
    }

    return 0;
}
```

#### C++17

```cpp
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main(){
    vector<int> v, V;

    V.assign(3, 0); v.assign(3, 0);
    for(int i = 0; i < 3; ++i){
        cin >> V[i];
        v[i] = V[i];
    }

    sort(v.begin(), v.end());

    for(int i = 0; i < 3; ++i){
        cout << v[i] << endl;
    }
    cout << endl;
    for(int i = 0; i < 3; ++i){
        cout << V[i] << endl;
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
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        List<int> original = new List<int>(entrada);
        
        entrada.Sort();
        
        foreach(var numero in entrada){
            Console.WriteLine(numero);
        }
        Console.WriteLine("");
        foreach(var numero in original){
            Console.WriteLine(numero);
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        int[] numeros = new int[3];
        int[] original = new int[3];
        for(int i = 0; i < 3; ++i){
            numeros[i] = Integer.parseInt(entrada[i]);
            original[i] = numeros[i];
        }
        
        Arrays.sort(numeros);
        
        for(int i = 0; i < 3; ++i){
            System.out.printf("%d\n", numeros[i]);
        }
        System.out.printf("\n");
        for(int i = 0; i < 3; ++i){
            System.out.printf("%d\n", original[i]);
        }
    }
}
```

#### JavaScript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => a - b;

let V = lines.shift().trim().split(' ').map((x) => parseInt(x));
let v = [...V];

v.sort(comp);

for(let i = 0; i < 3; ++i){
    console.log(v[i]);
}
console.log();
for(let i = 0; i < 3; ++i){
    console.log(V[i]);
}
```

#### Python 3.9

```py
V = [int(x) for x in input().strip().split(' ')]
v = V[:]

v.sort()

for i in range(3):
    print(v[i])
print()
for i in range(3):
    print(V[i])
```

### Alternativa 2 - Usando InsertionSort

Um método eficiente e fácil de implementar que podemos usar é o InsertionSort, onde podemos proceder da seguinte maneira:

1. Verificar se o segundo elemento é menor que o primeiro. Se for, trocar as posições de ambos;
2. Verificar se o terceiro elemento é menor que o segundo. Se for, trocar as posições de ambos;
3. Se no passo anterior, se os elementos foram trocados, então verificar novamente se o agora segundo elemento é menor que o primeiro e se for, trocar as posições de ambos.

#### C99

```c
#include <stdio.h>

void swap(int* a, int* b){
    int aux = *a;
    *a = *b;
    *b = aux;
}

int main(){
    int a, b, c, A, B, C;

    scanf("%d %d %d", &A, &B, &C);
    a = A, b = B, c = C;

    if(b < a)   swap(&a, &b);

    if(c < b){
        swap(&b, &c);
        if(b < a)   swap(&a, &b);
    }

    printf("%d\n%d\n%d\n\n%d\n%d\n%d\n", a, b, c, A, B, C);

    return 0;
}
```

#### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int a, b, c, A, B, C;

    cin >> A >> B >> C;
    a = A, b = B, c = C;

    if(b < a)   swap(a, b);
    if(c < b){
        swap(b, c);
        if(b < a)   swap(a, b);
    }

    cout << a << endl << b << endl << c << endl;
    cout << endl;
    cout << A << endl << B << endl << C << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void swap(List<int> lista, int a, int b){
        int tmp = lista[a];
        lista[a] = lista[b];
        lista[b] = tmp;
    }
    
    static void Main(string[] args) {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        List<int> original = new List<int>(entrada);
        
        if(entrada[1] < entrada[0])
            swap(entrada, 1, 0);
        if(entrada[2] < entrada[1]){
            swap(entrada, 2, 1);
            if(entrada[1] < entrada[0])
                swap(entrada, 1, 0);
        }
        
        foreach(var numero in entrada){
            Console.WriteLine(numero);
        }
        Console.WriteLine("");
        foreach(var numero in original){
            Console.WriteLine(numero);
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
    public static void swap(int[] vetor, int a, int b){
        int temp = vetor[a];
        vetor[a] = vetor[b];
        vetor[b] = temp;
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        int[] numeros = new int[3];
        int[] original = new int[3];
        for(int i = 0; i < 3; ++i){
            numeros[i] = Integer.parseInt(entrada[i]);
            original[i] = numeros[i];
        }
        
        if(numeros[1] < numeros[0])
            swap(numeros, 1, 0);
        if(numeros[2] < numeros[1]){
            swap(numeros, 2, 1);
            if(numeros[1] < numeros[0])
                swap(numeros, 1, 0);
        }
        
        for(int i = 0; i < 3; ++i){
            System.out.printf("%d\n", numeros[i]);
        }
        System.out.printf("\n");
        for(int i = 0; i < 3; ++i){
            System.out.printf("%d\n", original[i]);
        }
    }
}
```

#### JavaScript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));
let [a, b, c] = [A, B, C];

if(b < a)   [a, b] = [b, a];
if(c < b){
    [b, c] = [c, b];
    if(b < a)   [a, b] = [b, a];
}

console.log(a);
console.log(b);
console.log(c);

console.log();

console.log(A);
console.log(B);
console.log(C);
```

#### Python 3.9

```py
A, B, C = [int(x) for x in input().strip().split(' ')]
a, b, c = A, B, C

if(b < a):
    a, b = b, a
if(c < b):
    b, c = c, b
    if(b < a):
        a, b = b, a

print(a)
print(b)
print(c)
print()
print(A)
print(B)
print(C)
```