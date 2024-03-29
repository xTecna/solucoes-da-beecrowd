# 1178 - Preenchimento de Vetor III

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1178)

## Solução

Fazer um _loop_ que repete 100 vezes o seguinte processo:

* Imprime o valor de `N`
* Divide `N` por 2

> Infelizmente não temos códigos disponíveis nas linguagens C# e JavaScript 12.18 por problemas de arredondamento.

### C99

```c
#include <stdio.h>

int main()
{
    double X;

    scanf("%lf", &X);

    for (int i = 0; i < 100; ++i)
    {
        printf("N[%d] = %.4lf\n", i, X);
        X /= 2;
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double X;

    cin >> X;

    for (int i = 0; i < 100; ++i)
    {
        cout << "N[" << i << "] = " << setprecision(4) << fixed << X << endl;
        X /= 2;
    }

    return 0;
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

        double N = Double.parseDouble(in.readLine());
        for(int i = 0; i < 100; ++i){
            System.out.printf("N[%d] = %.4f\n", i, N);
            N /= 2.0;
        }
    }
}
```

### Python 3.9

```py
X = float(input())

for i in range(100):
    print(f'N[{i}] = {X:.4f}')
    X /= 2
```