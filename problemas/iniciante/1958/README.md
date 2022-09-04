# 1958 - Notação Científica

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1958)

## Solução

Veja os formatos utilizados em cada solução para ver como formatar um número em notação científica. A maioria das soluções envolve o uso da letra `E` para especificar formato científico com `.4` para casas decimais e `+` para explicitar que o sinal é obrigatório para qualquer número.

> Não temos solução para este problema em C# nem em Java Script 12.18 por enquanto.

### C99

```c
#include <stdio.h>

int main()
{
    double X;

    scanf("%lf", &X);
    printf("%+.4E\n", X);

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
    cout << scientific << showpos << setprecision(4) << uppercase << X << endl;

    return 0;
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        double X = Double.parseDouble(in.readLine());
        System.out.printf("%+.4E\n", X);
    }
}
```

### Python 3.9

```py
print(f'{float(input()):+.4E}')
```