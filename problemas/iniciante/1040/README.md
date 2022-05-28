# 1040 - Média 3

## [Descrição](https://www.urionlinejudge.com.br/judge/pt/problems/view/1040)

## Solução

O mais importante daqui desse exercício é fazer uma parte de cada vez.

1. Calcular a média e exibi-la na tela, respeitando os pesos de cada prova;
2. Ver se o aluno passou, reprovou ou está em exame, exibindo essa informação na tela;
3. Só ler a próxima nota se o aluno estiver em exame e, se for o caso, exibir essa nota nova também;
4. Ver se o aluno passou ou não com a nova média;
5. Independente do aluno passar ou não, exibir a nova média.

Vamos então esquematizar cada um desses passos no nosso programa.

> Tive alguns problemas de precisão nas linguagens C# e Java 14 e por isso, precisei criar funções extras para ler e imprimir os números com a precisão correta, tratando os números como inteiros durante todo o programa.

### C99

```c
#include <stdio.h>

int main(){
    double nota[4], exame, media;

    for(int i = 0; i < 4; ++i){
        scanf("%lf", &nota[i]);
    }

    media = (2 * nota[0] + 3 * nota[1] + 4 * nota[2] + 1 * nota[3])/10.0;
    printf("Media: %.1lf\n", media);

    if(media >= 7.0){
        printf("Aluno aprovado.\n");
    }else if(media < 5.0){
        printf("Aluno reprovado.\n");
    }else{
        printf("Aluno em exame.\n");

        scanf("%lf", &exame);
        printf("Nota do exame: %.1lf\n", exame);
        
        media = (media + exame)/2.0;
        
        if(media >= 5.0)    printf("Aluno aprovado.\n");
        else                printf("Aluno reprovado.\n");

        printf("Media final: %.1lf\n", media);
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>
#include <vector>

using namespace std;

int main(){
    double media;
    vector<double> nota;

    nota.assign(5, 0);
    for(int i = 0; i < 4; ++i){
        cin >> nota[i];
    }

    media = (2 * nota[0] + 3 * nota[1] + 4 * nota[2] + 1 * nota[3])/10.0;
    cout << "Media: " << setprecision(1) << fixed << media << endl;

    if(media >= 7.0){
        cout << "Aluno aprovado." << endl;
    }else if(media < 5.0){
        cout << "Aluno reprovado." << endl;
    }else{
        cout << "Aluno em exame." << endl;

        cin >> nota[4];
        cout << "Nota do exame: " << setprecision(1) << fixed << nota[4] << endl;
        
        media = (media + nota[4])/2.0;
        
        if(media >= 5.0)    cout << "Aluno aprovado." << endl;
        else                cout << "Aluno reprovado." << endl;

        cout << "Media final: " << setprecision(1) << fixed << media << endl;
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
    static int leDouble(string entrada) {
        List<int> numeros = entrada.Split('.').Select((x) => int.Parse(x)).ToList();
        return numeros[0] * 10 + numeros[1];
    }
    
    static string imprimeDouble(int numero){
        return $"{numero/10}.{numero%10}";
    }
    
    static void Main(string[] args) {
        List<int> notas = Console.ReadLine().Trim().Split(' ').Select((x) => leDouble(x)).ToList();
        
        int media = (2 * notas[0] + 3 * notas[1] + 4 * notas[2] + notas[3])/10;
        
        Console.WriteLine($"Media: {imprimeDouble(media)}");
        if(media >= 70){
            Console.WriteLine("Aluno aprovado.");
        }else if(media < 50){
            Console.WriteLine("Aluno reprovado.");
        }else{
            Console.WriteLine("Aluno em exame.");
            
            int exame = leDouble(Console.ReadLine().Trim());
            media = (media + exame)/2;
            
            Console.WriteLine($"Nota do exame: {imprimeDouble(exame)}");
            if(media >= 50){
                Console.WriteLine("Aluno aprovado.");
            }else{
                Console.WriteLine("Aluno reprovado.");
            }
            Console.WriteLine($"Media final: {imprimeDouble(media)}");
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
    public static int leDouble(String entrada){
        String[] numeros = entrada.split("\\.");
        return Integer.parseInt(numeros[0]) * 10 + Integer.parseInt(numeros[1]);
    }
    
    public static String imprimeDouble(int numero){
        return numero/10 + "." + numero%10;
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        String[] entrada = in.readLine().trim().split(" ");
        int[] notas = new int[4];
        for(int i = 0; i < 4; ++i){
            notas[i] = leDouble(entrada[i]);
        }
        
        int media = (2 * notas[0] + 3 * notas[1] + 4 * notas[2] + notas[3])/10;
        
        System.out.printf("Media: %s\n", imprimeDouble(media));
        if(media >= 70){
            System.out.printf("Aluno aprovado.\n");
        }else if(media < 50){
            System.out.printf("Aluno reprovado.\n");
        }else{
            System.out.printf("Aluno em exame.\n");
            
            int exame = leDouble(in.readLine().trim());
            media = (media + exame)/2;
            
            System.out.printf("Nota do exame: %s\n", imprimeDouble(exame));
            if(media >= 50){
                System.out.printf("Aluno aprovado.\n");
            }else{
                System.out.printf("Aluno reprovado.\n");
            }
            System.out.printf("Media final: %s\n", imprimeDouble(media));
        }
    }
}
```

### JavaScript 12.18

```js
var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let notas = lines.shift().split(' ').map((nota) => parseFloat(nota));

media = (2 * notas[0] + 3 * notas[1] + 4 * notas[2] + notas[3]) / 10;

console.log(`Media: ${media.toFixed(1)}`);

if(media >= 7.0){
  console.log("Aluno aprovado.");
}else if (media < 5.0){
  console.log("Aluno reprovado.");
}else{
  console.log("Aluno em exame.");
  let exame = parseFloat(lines.shift());
  console.log(`Nota do exame: ${exame.toFixed(1)}`);

  media = (media + exame) / 2;

  if(media >= 5.0){
    console.log("Aluno aprovado.");
  }else{
    console.log("Aluno reprovado.");
  }
  
  console.log(`Media final: ${media.toFixed(1)}`);
}
```

#### Python 3.9

```py
nota = [float(x) for x in input().strip().split(' ')]

media = (2 * nota[0] + 3 * nota[1] + 4 * nota[2] + 1 * nota[3])/10

print(f"Media: {media:.1f}")

if(media >= 7.0):
    print("Aluno aprovado.")
elif(media < 5.0):
    print("Aluno reprovado.")
else:
    print("Aluno em exame.")
    
    exame = float(input().strip())
    print(f"Nota do exame: {exame:.1f}")

    media = (media + exame)/2

    if(media >= 5.0):
        print("Aluno aprovado.")
    else:
        print("Aluno reprovado.")
    
    print(f"Media final: {media:.1f}")
```