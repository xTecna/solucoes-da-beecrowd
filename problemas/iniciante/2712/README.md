# 2712 - Rodízio Veicular

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2712)

## Solução

Para todas as linguagens que ofereciam suporte a expressões regulares, utilizei-as para validar as placas. As linguagens C e C++ oferecem soluções que não usam expressões regulares.

### C99

```c
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int valido(char *placa)
{
    if (strlen(placa) != 8)
    {
        return 0;
    }

    for (int i = 0; i < 3; ++i)
    {
        if (!isupper(placa[i]))
        {
            return 0;
        }
    }

    if (placa[3] != '-')
    {
        return 0;
    }

    for (int i = 4; i < 8; ++i)
    {
        if (!isdigit(placa[i]))
        {
            return 0;
        }
    }

    return 1;
}

char *diaDaSemana(char *placa)
{
    switch (digitoFinal)
    {
    case '1':
    case '2':
        return "MONDAY";
    case '3':
    case '4':
        return "TUESDAY";
    case '5':
    case '6':
        return "WEDNESDAY";
    case '7':
    case '8':
        return "THURSDAY";
    case '9':
    case '0':
        return "FRIDAY";
    }
}

int main()
{
    int N;
    char S[101];

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%[^\n]\n", &S);

        if (valido(S))
        {
            printf("%s\n", diaDaSemana(S));
        }
        else
        {
            printf("FAILURE\n");
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <string>
#include <cctype>

using namespace std;

bool valido(string placa)
{
    if (placa.length() != 8)
    {
        return false;
    }

    for (int i = 0; i < 3; ++i)
    {
        if (!isupper(placa[i]))
        {
            return false;
        }
    }

    if (placa[3] != '-')
    {
        return false;
    }

    for (int i = 4; i < 8; ++i)
    {
        if (!isdigit(placa[i]))
        {
            return false;
        }
    }

    return true;
}

string diaDaSemana(string placa)
{
    switch (placa[7])
    {
    case '1':
    case '2':
        return "MONDAY";
    case '3':
    case '4':
        return "TUESDAY";
    case '5':
    case '6':
        return "WEDNESDAY";
    case '7':
    case '8':
        return "THURSDAY";
    case '9':
    case '0':
        return "FRIDAY";
    }
}

int main()
{
    int N;
    string S;

    cin >> N;
    cin.ignore();
    for (int i = 0; i < N; ++i)
    {
        getline(cin, S);

        if (valido(S))
        {
            cout << diaDaSemana(S) << endl;
        }
        else
        {
            cout << "FAILURE" << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Text.RegularExpressions;

class URI {
    static Regex regex = new Regex("^([A-Z]{3})-([0-9]{4})$");

    static bool valido(string placa){
        return regex.Match(placa).Success;
    }

    static string diaDaSemana(string placa){
        switch(placa[7]){
            case '1':
            case '2':   return "MONDAY";
            case '3':
            case '4':   return "TUESDAY";
            case '5':
            case '6':   return "WEDNESDAY";
            case '7':
            case '8':   return "THURSDAY";
            case '9':
            case '0':   return "FRIDAY";
        }
        return "FAILURE";
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            string S = Console.ReadLine();

            if(!valido(S)){
                Console.WriteLine("FAILURE");
            }else{
                Console.WriteLine(diaDaSemana(S));
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
import java.util.regex.*;

public class Main {
    public static Pattern regex = Pattern.compile("^([A-Z]{3})-([0-9]{4})$");

    public static boolean valido(String placa) {
        return regex.matcher(placa).find();
    }

    public static String diaDaSemana(String placa) {
        switch (placa.charAt(7)) {
            case '1':
            case '2':
                return "MONDAY";
            case '3':
            case '4':
                return "TUESDAY";
            case '5':
            case '6':
                return "WEDNESDAY";
            case '7':
            case '8':
                return "THURSDAY";
            case '9':
            case '0':
                return "FRIDAY";
        }
        return "FAILURE";
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            String S = in.readLine();

            if (!valido(S)) {
                System.out.println("FAILURE");
            } else {
                System.out.println(diaDaSemana(S));
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const valido = (placa) => placa.match(/^([A-Z]{3})-([0-9]{4})$/g) !== null;
const diaDaSemana = (placa) => {
    switch (placa[7]) {
        case '1':
        case '2': return 'MONDAY';
        case '3':
        case '4': return 'TUESDAY';
        case '5':
        case '6': return 'WEDNESDAY';
        case '7':
        case '8': return 'THURSDAY';
        case '9':
        case '0': return 'FRIDAY';
    }
};

let N = parseInt(lines.shift().trim());
for (let i = 0; i < N; ++i) {
    let S = lines.shift().trim();

    if (!valido(S)) {
        console.log('FAILURE');
    } else {
        console.log(diaDaSemana(S));
    }
}
```

### Python 3.9

```py
import re


def valido(placa):
    return re.search('^([A-Z]{3})-([0-9]{4})$', placa) != None


def diaDaSemana(placa):
    ultimoDigito = int(placa[7])

    if(1 <= ultimoDigito <= 2):
        return 'MONDAY'
    if(3 <= ultimoDigito <= 4):
        return 'TUESDAY'
    if(5 <= ultimoDigito <= 6):
        return 'WEDNESDAY'
    if(7 <= ultimoDigito <= 8):
        return 'THURSDAY'
    return 'FRIDAY'


N = int(input())
for _ in range(N):
    S = input()

    if(not valido(S)):
        print('FAILURE')
    else:
        print(diaDaSemana(S))
```