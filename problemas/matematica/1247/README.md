# 1247 - Guarda Costeira

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1247)

## Solução

O caminho que o ladrão precisa fazer é uma reta até um ponto a 12 milhas náuticas de distância com velocidade constante de $VF$ nós (unidade de velocidade correspondente a uma milha náutica por hora).

Já o caminho do guarda é um caminho inclinado, onde a distância a ser percorrida é equivalente à hipotenusa de um triângulo envolvendo as $12$ milhas do ladrão e a distância de $D$ milhas náuticas entre o guarda e o ladrão como catetos. Logo, a distância a ser percorrida pelo guarda é $\sqrt{144 + D^{2}}$ com velocidade constante de $VG$ nós.

Com isso, o que precisamos fazer é apenas comparar o tempo que cada um leva para percorrer suas respectivas distâncias: se o ladrão chega em menos tempo, ele escapa; caso contrário, o guarda consegue prendê-lo. Logo, o que queremos checar é que se a expressão $\frac{12}{VF} < \frac{\sqrt{144 + D^{2}}}{VG}$ é verdadeira então o ladrão consegue escapar.

### C99
```c
#include <stdio.h>
#include <math.h>

int main()
{
    int D, VF, VG;
    double distanciaGuarda, tempoFugitivo, tempoGuarda;

    while (scanf("%d %d %d", &D, &VF, &VG) != EOF)
    {
        tempoFugitivo = 12.0 / VF;
        distanciaGuarda = sqrt(144 + D * D);
        tempoGuarda = distanciaGuarda / VG;

        printf("%c\n", tempoFugitivo < tempoGuarda ? 'N' : 'S');
    }

    return 0;
}
```

### C++20
```cpp
#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int D, VF, VG;
    double distanciaGuarda, tempoFugitivo, tempoGuarda;

    while (cin >> D >> VF >> VG)
    {
        tempoFugitivo = 12.0 / VF;
        distanciaGuarda = sqrt(144 + (D * D));
        tempoGuarda = distanciaGuarda / VG;

        cout << (char)(tempoFugitivo < tempoGuarda ? 'N' : 'S') << endl;
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
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<int> DVFVG = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int D = DVFVG[0];
            int VF = DVFVG[1];
            int VG = DVFVG[2];

            if(12.0/VF >= Math.Sqrt(144 + (D * D))/VG){
                Console.WriteLine("S");
            }else{
                Console.WriteLine("N");
            }
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] DVFVG = in.readLine().trim().split(" ");
            int D = Integer.parseInt(DVFVG[0]);
            int VF = Integer.parseInt(DVFVG[1]);
            int VG = Integer.parseInt(DVFVG[2]);

            if(12.0/VF >= Math.sqrt(144 + (D * D))/VG){
                System.out.println("S");
            }else{
                System.out.println("N");
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [D, VF, VG] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let tempoFugitivo = 12 / VF;
    let distanciaGuarda = Math.sqrt(144 + D * D);
    let tempoGuarda = distanciaGuarda / VG;

    console.log(`${tempoFugitivo < tempoGuarda ? 'N' : 'S'}`);
}
```

### Python 3.9
```py
import math

while True:
    try:
        D, VF, VG = [int(x) for x in input().strip().split(' ')]

        tempoFugitivo = 12/VF
        distanciaGuarda = math.sqrt(144 + D * D)
        tempoGuarda = distanciaGuarda/VG

        print('N' if tempoFugitivo < tempoGuarda else 'S')
    except EOFError:
        break
```