# 1059 - Números Pares

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1059)

## Solução

### Alternativa 1 - Usando while

Usando while, você pode começar o número a ser impresso valendo 2 e ir somando 2 até o número for maior que 100.

#### C99

```c
#include <stdio.h>

int main(){
    int par = 2;

    while(par <= 100){
        printf("%d\n", par);
        par += 2;
    }

    return 0;
}
```

#### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    int par = 2;

    while(par <= 100){
        cout << par << endl;
        par += 2;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int par = 2;
        
        while(par <= 100){
            Console.WriteLine(par);
            par += 2;
        }
    }
}
```

### Java 14

```java
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        int par = 2;
        
        while(par <= 100){
            System.out.printf("%d\n", par);
            par += 2;
        }
    }
}
```

#### JavaScript 12.18

```javascript
let par = 2;

while(par <= 100){
    console.log(par);
    par += 2;
}
```

#### Python 3.9

```python
par = 2

while(par <= 100):
    print(par)
    par += 2
```

### Alternativa 2 - Usando for

Usando for, você pode colocar toda a lógica dentro da instrução for e deixar o lado de dentro apenas para a lógica do que fazer em cada for.

#### C99

```c
#include <stdio.h>

int main(){
    for(int par = 2; par <= 100; par += 2){
        printf("%d\n", par);
    }

    return 0;
}
```

#### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    for(int par = 2; par <= 100; par += 2){
        cout << par << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        for(int par = 2; par <= 100; par += 2){
            Console.WriteLine(par);
        }
    }
}
```

### Java 14

```java
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        for(int par = 2; par <= 100; par += 2){
            System.out.printf("%d\n", par);
        }
    }
}
```

#### JavaScript 12.18

```javascript
for(let par = 2; par <= 100; par += 2){
    console.log(par);
}
```

#### Python 3.9

```python
for i in range(2, 102, 2):
    print(i)
```