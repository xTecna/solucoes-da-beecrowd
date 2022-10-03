# 2724 - Ajude Patatatitu

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2724)

## Solução

Para verificar se cada composto que Juvenal quer fazer é perigoso ou não, fazer uma pesquisa textual apenas não basta, você precisa fazer algumas outras verificações. Vamos supor que temos um tal composto perigoso `X` que você consegue encontrar textualmente em `Y`. Para saber se esse é realmente representa `X`, precisamos ver o caractere que vem logo após `X` em `Y`.

* Se `X` termina em número e o que vem depois é outro número, então não é exatamente o mesmo composto, não tem perigo (caso onde procuramos `Fe2` e achamos `Fe28`, por exemplo);
* Se `X` termina com uma letra maiúscula e o que vem depois é uma letra minúscula, então também não é o mesmo composto, não tem perigo (caso onde procuramos `F` e achamos `Fe`, por exemplo);
* Se `X` termina com uma letra minúsculo e o que vem depois é um número, então também é o mesmo composto, não tem perigo (caso onde procuramos `Fe` e achamos `Fe3`, por exemplo).

Se não há caractere à frente para ver ou em qualquer outro caso que não sejam os citados acima, encontramos nosso composto perigoso, então podemos sair de todos os _loops_ envolvidos e retornar o resultado.

### C99

```c
#include <string.h>
#include <stdio.h>
#include <ctype.h>

int main()
{
    int N, T, U;
    char formula[51];
    char perigosos[51][51];

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        if (i > 0)
        {
            printf("\n");
        }

        scanf("%d\n", &T);
        for (int j = 0; j < T; ++j)
        {
            scanf("%s\n", &perigosos[j]);
        }

        scanf("%d\n", &U);
        for (int j = 0; j < U; ++j)
        {
            scanf("%s\n", &formula);

            int perigoso = 0;
            for (int k = 0; !perigoso && k < T; ++k)
            {
                char *pos = strstr(formula, perigosos[k]);
                while (pos != NULL)
                {
                    int frente = (pos - formula) + strlen(perigosos[k]);

                    if (frente < strlen(formula))
                    {
                        char daFrente = formula[frente - 1];
                        char maisNaFrente = formula[frente];

                        if ((isdigit(daFrente) && !isdigit(maisNaFrente)) || (isupper(daFrente) && isupper(maisNaFrente)) || (islower(frente) && isupper(maisNaFrente)))
                        {
                            perigoso = 1;
                            break;
                        }
                    }
                    else
                    {
                        perigoso = 1;
                        break;
                    }

                    pos = strstr(pos + 1, perigosos[k]);
                }
            }

            printf("%s\n", perigoso ? "Abortar" : "Prossiga");
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <algorithm>
#include <iostream>
#include <vector>
#include <cctype>

using namespace std;

int main()
{
    int N, T, U;
    string formula;
    vector<string> perigosos;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        if (i > 0)
        {
            cout << endl;
        }

        cin >> T;
        perigosos.assign(T, "");
        for (int j = 0; j < T; ++j)
        {
            cin >> perigosos[j];
        }

        cin >> U;
        for (int j = 0; j < U; ++j)
        {
            cin >> formula;

            bool perigoso = false;
            for (int k = 0; !perigoso && k < T; ++k)
            {
                int pos = formula.find(perigosos[k]);
                while (pos != string::npos)
                {
                    int frente = pos + perigosos[k].length();

                    if (frente < formula.length())
                    {
                        char daFrente = formula[frente - 1];
                        char maisNaFrente = formula[frente];

                        if ((isdigit(daFrente) && !isdigit(maisNaFrente)) || (isupper(daFrente) && isupper(maisNaFrente)) || (islower(daFrente) && isupper(maisNaFrente)))
                        {
                            perigoso = true;
                            break;
                        }
                    }
                    else
                    {
                        perigoso = true;
                        break;
                    }

                    pos = formula.find(perigosos[k], pos + 1);
                }
            }

            cout << (perigoso ? "Abortar" : "Prossiga") << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            if(i > 0){
                Console.WriteLine("");
            }

            int T = int.Parse(Console.ReadLine());
            string[] perigosos = new string[T];
            for(int j = 0; j < T; ++j){
                perigosos[j] = Console.ReadLine().Trim();
            }

            int U = int.Parse(Console.ReadLine());
            for(int j = 0; j < U; ++j){
                string formula = Console.ReadLine().Trim();

                bool perigoso = false;
                for(int k = 0; !perigoso && k < T; ++k){
                    int pos = formula.IndexOf(perigosos[k]);
                    while(pos != -1){
                        int frente = pos + perigosos[k].Length;

                        if (frente < formula.Length){
                            char daFrente = formula[frente - 1];
                            char maisNaFrente = formula[frente];

                            if ((Char.IsDigit(daFrente) && !Char.IsDigit(maisNaFrente)) || (Char.IsUpper(daFrente) && Char.IsUpper(maisNaFrente)) || (Char.IsLower(daFrente) && Char.IsUpper(maisNaFrente))){
                                perigoso = true;
                                break;
                            }
                        }else{
                            perigoso = true;
                            break;
                        }

                        pos = formula.IndexOf(perigosos[k], pos + 1);
                    }
                }

                Console.WriteLine(perigoso ? "Abortar" : "Prossiga");
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

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            if (i > 0) {
                System.out.println("");
            }

            int T = Integer.parseInt(in.readLine());
            String[] perigosos = new String[T];
            for (int j = 0; j < T; ++j) {
                perigosos[j] = in.readLine().trim();
            }

            int U = Integer.parseInt(in.readLine());
            for (int j = 0; j < U; ++j) {
                String formula = in.readLine().trim();

                boolean perigoso = false;
                for (int k = 0; !perigoso && k < T; ++k) {
                    int pos = formula.indexOf(perigosos[k]);
                    while (pos != -1) {
                        int frente = pos + perigosos[k].length();

                        if (frente < formula.length()) {
                            char daFrente = formula.charAt(frente - 1);
                            char maisNaFrente = formula.charAt(frente);

                            if ((Character.isDigit(daFrente) && !Character.isDigit(maisNaFrente))
                                    || (Character.isUpperCase(daFrente) && Character.isUpperCase(maisNaFrente))
                                    || (Character.isLowerCase(daFrente) && Character.isUpperCase(maisNaFrente))) {
                                perigoso = true;
                                break;
                            }
                        } else {
                            perigoso = true;
                            break;
                        }

                        pos = formula.indexOf(perigosos[k], pos + 1);
                    }
                }

                System.out.println(perigoso ? "Abortar" : "Prossiga");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const isDigit = (letra) => /[0-9]/.test(letra);
const isUpper = (letra) => /[A-Z]/.test(letra);
const isLower = (letra) => /[a-z]/.test(letra);

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    if (i > 0) {
        console.log('');
    }

    let T = parseInt(lines.shift());
    let perigosos = [];
    for (let j = 0; j < T; ++j) {
        perigosos.push(lines.shift().trim());
    }

    let U = parseInt(lines.shift());
    for (let j = 0; j < U; ++j) {
        let formula = lines.shift().trim();

        let perigoso = false;
        for (let k = 0; !perigoso && k < T; ++k) {
            let pos = formula.indexOf(perigosos[k]);
            while (pos !== -1) {
                let frente = pos + perigosos[k].length;

                if (frente < formula.length) {
                    let daFrente = formula[frente - 1];
                    let maisNaFrente = formula[frente];

                    if ((isDigit(daFrente) && !isDigit(maisNaFrente)) || (isUpper(daFrente) && isUpper(maisNaFrente)) || (isLower(daFrente) && isUpper(maisNaFrente))) {
                        perigoso = true;
                        break;
                    }
                } else {
                    perigoso = true;
                    break;
                }

                pos = formula.indexOf(perigosos[k], pos + 1);
            }
        }

        console.log(perigoso ? "Abortar" : "Prossiga");
    }
}
```

### Python 3.9

```py
N = int(input())
for i in range(N):
    if(i > 0):
        print('')

    T = int(input())
    perigosos = []
    for _ in range(T):
        perigosos.append(input().strip())

    U = int(input())
    for _ in range(U):
        formula = input().strip()

        perigoso = False
        for ativo in perigosos:
            pos = formula.find(ativo)
            while (pos != -1):
                frente = pos + len(ativo)

                if(frente < len(formula)):
                    daFrente = formula[frente - 1]
                    maisNaFrente = formula[frente]

                    if((daFrente.isdigit() and not maisNaFrente.isdigit()) or (daFrente.isupper() and maisNaFrente.isupper()) or (daFrente.islower() and maisNaFrente.isupper())):
                        perigoso = True
                        break
                else:
                    perigoso = True
                    break

                pos = formula.find(ativo, pos + 1)

            if(perigoso):
                break

        print('Abortar' if perigoso else 'Prossiga')
```