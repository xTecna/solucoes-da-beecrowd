# 1045 - Tipos de Triângulos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1045)

## Solução

Primeiro, verifique se é possível formar triângulo, caso contrário todas as outras verificações se tornam inúteis. Só verificando que é de fato possível formar triângulo que então se faz o resto das verificações, agrupando em `RETANGULO`/`OBTUSANGULO`/`ACUTANGULO` e `EQUILATERO`/`ISOSCELES`.

### C99

```c
#include <stdio.h>

void swap(double *a, double *b)
{
    double temp = *a;
    *a = *b;
    *b = temp;
}

int main()
{
    double A, B, C;

    scanf("%lf %lf %lf", &A, &B, &C);

    if (B > A)
        swap(&A, &B);
    if (C > B)
    {
        swap(&B, &C);
        if (B > A)
            swap(&A, &B);
    }

    if (A >= B + C)
    {
        printf("NAO FORMA TRIANGULO\n");
    }
    else
    {
        if (A * A == B * B + C * C)
            printf("TRIANGULO RETANGULO\n");
        else if (A * A > B * B + C * C)
            printf("TRIANGULO OBTUSANGULO\n");
        else
            printf("TRIANGULO ACUTANGULO\n");

        if (A == B && B == C)
            printf("TRIANGULO EQUILATERO\n");
        else if (A == B || A == C || B == C)
            printf("TRIANGULO ISOSCELES\n");
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
    double A, B, C, temp;

    cin >> A >> B >> C;

    if (B > A)
    {
        temp = A;
        A = B;
        B = temp;
    }
    if (C > A)
    {
        temp = A;
        A = C;
        C = temp;
    }

    double A2, B2maisC2;

    A2 = A * A;
    B2maisC2 = (B * B) + (C * C);

    if (A >= B + C)
    {
        cout << "NAO FORMA TRIANGULO" << endl;
    }
    else
    {
        if (A2 > B2maisC2)
        {
            cout << "TRIANGULO OBTUSANGULO" << endl;
        }
        else if (A2 < B2maisC2)
        {
            cout << "TRIANGULO ACUTANGULO" << endl;
        }
        else
        {
            cout << "TRIANGULO RETANGULO" << endl;
        }

        if ((A == B) && (B == C))
        {
            cout << "TRIANGULO EQUILATERO" << endl;
        }
        else if ((A == B) || (A == C) || (C == B))
        {
            cout << "TRIANGULO ISOSCELES" << endl;
        }
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
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).OrderByDescending((x) => x).ToList();
        double A = entrada[0];
        double B = entrada[1];
        double C = entrada[2];
        
        if(A >= B + C){
            Console.WriteLine("NAO FORMA TRIANGULO");
        }else{
            if(A * A == B * B + C * C){
                Console.WriteLine("TRIANGULO RETANGULO");
            }else if(A * A > B * B + C * C){
                Console.WriteLine("TRIANGULO OBTUSANGULO");
            }else{
                Console.WriteLine("TRIANGULO ACUTANGULO");
            }
            
            if(A == B && B == C){
                Console.WriteLine("TRIANGULO EQUILATERO");
            }else if(A == B || A == C || B == C){
                Console.WriteLine("TRIANGULO ISOSCELES");
            }
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
        
        double[] numeros = new double[3];
        for(int i = 0; i < 3; ++i){
            numeros[i] = Double.parseDouble(entrada[i]);
        }
        Arrays.sort(numeros);
        
        double A = numeros[2];
        double B = numeros[1];
        double C = numeros[0];
        
        if(A >= B + C){
            System.out.println("NAO FORMA TRIANGULO");
        }else{
            if(A * A == B * B + C * C){
                System.out.println("TRIANGULO RETANGULO");
            }else if(A * A > B * B + C * C){
                System.out.println("TRIANGULO OBTUSANGULO");
            }else{
                System.out.println("TRIANGULO ACUTANGULO");
            }
            
            if(A == B && B == C){
                System.out.println("TRIANGULO EQUILATERO");
            }else if(A == B || A == C || B == C){
                System.out.println("TRIANGULO ISOSCELES");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let lados = lines.shift().split(' ').map((x) => parseFloat(x));
lados.sort((a, b) => b - a);
let [A, B, C] = lados;

if (A >= B + C)
    console.log('NAO FORMA TRIANGULO');
else {
    if (A * A === B * B + C * C)
        console.log('TRIANGULO RETANGULO');
    else if (A * A > B * B + C * C)
        console.log('TRIANGULO OBTUSANGULO');
    else
        console.log('TRIANGULO ACUTANGULO');

    if (A === B && B === C)
        console.log('TRIANGULO EQUILATERO');
    else if (A === B || A === C || B === C)
        console.log('TRIANGULO ISOSCELES');
}
```

### Python 3.9

```py
lados = [float(x) for x in input().split(' ')]
lados.sort(reverse=True)
A, B, C = lados

if(A >= B + C):
    print('NAO FORMA TRIANGULO')
else:
    if(A * A == B * B + C * C):
        print('TRIANGULO RETANGULO')
    elif(A * A > B * B + C * C):
        print('TRIANGULO OBTUSANGULO')
    else:
        print('TRIANGULO ACUTANGULO')

    if(A == B == C):
        print('TRIANGULO EQUILATERO')
    elif(A == B or A == C or B == C):
        print('TRIANGULO ISOSCELES')
```