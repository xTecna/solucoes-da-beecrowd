# 1049 - Animal

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1049)

## Solução

Eu acho esse problema super legal para testar seu conhecimento de estruturas condicionais (`if`), mas as soluções em JavaScript e Python mostram outra abordagem muito interessante com dicionários. É possível implementar essa solução em C++, C# e Java também, fica a seu critério.

### C99

```c
#include <string.h>
#include <stdio.h>

int main()
{
    char caracteristicas[3][20];

    for (int i = 0; i < 3; ++i)
    {
        scanf("%s\n", &caracteristicas[i]);
    }

    if (strcmp(caracteristicas[0], "vertebrado") == 0)
    {
        if (strcmp(caracteristicas[1], "ave") == 0)
        {
            if (strcmp(caracteristicas[2], "carnivoro") == 0)
            {
                printf("aguia\n");
            }
            else if (strcmp(caracteristicas[2], "onivoro") == 0)
            {
                printf("pomba\n");
            }
        }
        else if (strcmp(caracteristicas[1], "mamifero") == 0)
        {
            if (strcmp(caracteristicas[2], "onivoro") == 0)
            {
                printf("homem\n");
            }
            else if (strcmp(caracteristicas[2], "herbivoro") == 0)
            {
                printf("vaca\n");
            }
        }
    }
    else if (strcmp(caracteristicas[0], "invertebrado") == 0)
    {
        if (strcmp(caracteristicas[1], "inseto") == 0)
        {
            if (strcmp(caracteristicas[2], "hematofago") == 0)
            {
                printf("pulga\n");
            }
            else if (strcmp(caracteristicas[2], "herbivoro") == 0)
            {
                printf("lagarta\n");
            }
        }
        else if (strcmp(caracteristicas[1], "anelideo") == 0)
        {
            if (strcmp(caracteristicas[2], "hematofago") == 0)
            {
                printf("sanguessuga\n");
            }
            else if (strcmp(caracteristicas[2], "onivoro") == 0)
            {
                printf("minhoca\n");
            }
        }
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
    string caracteristicas[3];

    for (int i = 0; i < 3; ++i)
    {
        cin >> caracteristicas[i];
    }

    if (caracteristicas[0] == "vertebrado")
    {
        if (caracteristicas[1] == "ave")
        {
            if (caracteristicas[2] == "carnivoro")
            {
                cout << "aguia" << endl;
            }
            else if (caracteristicas[2] == "onivoro")
            {
                cout << "pomba" << endl;
            }
        }
        else if (caracteristicas[1] == "mamifero")
        {
            if (caracteristicas[2] == "onivoro")
            {
                cout << "homem" << endl;
            }
            else if (caracteristicas[2] == "herbivoro")
            {
                cout << "vaca" << endl;
            }
        }
    }
    else if (caracteristicas[0] == "invertebrado")
    {
        if (caracteristicas[1] == "inseto")
        {
            if (caracteristicas[2] == "hematofago")
            {
                cout << "pulga" << endl;
            }
            else if (caracteristicas[2] == "herbivoro")
            {
                cout << "lagarta" << endl;
            }
        }
        else if (caracteristicas[1] == "anelideo")
        {
            if (caracteristicas[2] == "hematofago")
            {
                cout << "sanguessuga" << endl;
            }
            else if (caracteristicas[2] == "onivoro")
            {
                cout << "minhoca" << endl;
            }
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string[] caracteristicas = new string[3];

        for(int i = 0; i < 3; ++i){
            caracteristicas[i] = Console.ReadLine();
        }

        if (caracteristicas[0] == "vertebrado")
        {
            if (caracteristicas[1] == "ave")
            {
                if (caracteristicas[2] == "carnivoro")
                {
                    Console.WriteLine("aguia");
                }
                else if (caracteristicas[2] == "onivoro")
                {
                    Console.WriteLine("pomba");
                }
            }
            else if (caracteristicas[1] == "mamifero")
            {
                if (caracteristicas[2] == "onivoro")
                {
                    Console.WriteLine("homem");
                }
                else if (caracteristicas[2] == "herbivoro")
                {
                    Console.WriteLine("vaca");
                }
            }
        }
        else if (caracteristicas[0] == "invertebrado")
        {
            if (caracteristicas[1] == "inseto")
            {
                if (caracteristicas[2] == "hematofago")
                {
                    Console.WriteLine("pulga");
                }
                else if (caracteristicas[2] == "herbivoro")
                {
                    Console.WriteLine("lagarta");
                }
            }
            else if (caracteristicas[1] == "anelideo")
            {
                if (caracteristicas[2] == "hematofago")
                {
                    Console.WriteLine("sanguessuga");
                }
                else if (caracteristicas[2] == "onivoro")
                {
                    Console.WriteLine("minhoca");
                }
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

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        String[] caracteristicas = new String[3];

        for(int i = 0; i < 3; ++i){
            caracteristicas[i] = in.readLine();
        }

        if(caracteristicas[0].equals("vertebrado")){
            if(caracteristicas[1].equals("ave")){
                if(caracteristicas[2].equals("carnivoro")){
                    System.out.println("aguia");
                }else if(caracteristicas[2].equals("onivoro")){
                    System.out.println("pomba");
                }
            }else if(caracteristicas[1].equals("mamifero")){
                if(caracteristicas[2].equals("onivoro")){
                    System.out.println("homem");
                }else if(caracteristicas[2].equals("herbivoro")){
                    System.out.println("vaca");
                }
            }
        }else if(caracteristicas[0].equals("invertebrado")){
            if(caracteristicas[1].equals("inseto")){
                if(caracteristicas[2].equals("hematofago")){
                    System.out.println("pulga");
                }else if(caracteristicas[2].equals("herbivoro")){
                    System.out.println("lagarta");
                }
            }else if(caracteristicas[1].equals("anelideo")){
                if(caracteristicas[2].equals("hematofago")){
                    System.out.println("sanguessuga");
                }else if(caracteristicas[2].equals("onivoro")){
                    System.out.println("minhoca");
                }
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let arvore = {
    "vertebrado": {
        "ave": {
            "carnivoro": "aguia",
            "onivoro": "pomba"
        },
        "mamifero": {
            "onivoro": "homem",
            "herbivoro": "vaca"
        }
    },
    "invertebrado": {
        "inseto": {
            "hematofago": "pulga",
            "herbivoro": "lagarta"
        },
        "anelideo": {
            "hematofago": "sanguessuga",
            "onivoro": "minhoca"
        }
    }
};

let caracteristicas = [];

for (let i = 0; i < 3; ++i) {
    caracteristicas.push(lines.shift().trim());
}

console.log(arvore[caracteristicas[0]][caracteristicas[1]][caracteristicas[2]]);
```

### Python 3.9

```py
arvore = {
    "vertebrado": {
        "ave": {
            "carnivoro": "aguia",
            "onivoro": "pomba"
        },
        "mamifero": {
            "onivoro": "homem",
            "herbivoro": "vaca"
        }
    },
    "invertebrado": {
        "inseto": {
            "hematofago": "pulga",
            "herbivoro": "lagarta"
        },
        "anelideo": {
            "hematofago": "sanguessuga",
            "onivoro": "minhoca"
        }
    }
}

caracteristicas = []

for _ in range(3):
    caracteristicas.append(input())

print(arvore[caracteristicas[0]][caracteristicas[1]][caracteristicas[2]])
```