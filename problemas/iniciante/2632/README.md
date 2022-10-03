# 2632 - Magic and Sword

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2632)

## Solução

Aqui o melhor a fazer é separar todo o comportamento possível do algoritmo, desde saber qual é o dano e o raio de uma determinada magia de determinado nível até saber se um círculo pode colidir com um retângulo.

Para verificar se um círculo de raio $R$ com centro em $(x_{C}, y_{C})$ colide com um retângulo com $w$ de largura, $h$ de altura e canto inferior esquerdo em $(x_{R}, y_{R})$, primeiro precisamos tirar o ponto do retângulo mais próximo do círculo e depois verificamos se esse ponto está dentro do círculo ou não. Para sabermos a coordenada $(x_{P}, y_{P})$ pertencente ao retângulo e que seja o mais próxima possível do círculo, temos que $x_{P} = \max(x_{R}, \min(x_{C}, x_{R} + w))$ e $y_{P} = \max(y_{R}, \min(y_{C}, y_{R} + h))$.

A fórmula funciona porque você pode pensar nos seguintes casos (esses exemplos abaixo são dados em relação ao eixo $x$, um raciocínio análogo cabe para o eixo $y$):

* Se o centro do círculo estiver antes do retângulo, então $x_{P} = x_{R}$, ou seja, o ponto mais próximo é o ponto mais à esquerda do retângulo, o que é verdade.
* Se o centro do círculo estiver no meio do retângulo, então $x_{P} = x_{C}$, o que é verdade.
* Se o centro do círculo estiver na frente do retângulo, então $x_{P} = x_{R} + w$, o que realmente configura o ponto mais próximo do círculo.


### C99

```c
#include <string.h>
#include <stdio.h>

int dano(char *magia)
{
    if (strcmp(magia, "fire") == 0)
        return 200;
    if (strcmp(magia, "water") == 0)
        return 300;
    if (strcmp(magia, "earth") == 0)
        return 400;
    if (strcmp(magia, "air") == 0)
        return 100;
}

int raio(char *magia, int nivel)
{
    if (strcmp(magia, "fire") == 0)
    {
        switch (nivel)
        {
        case 1:
            return 20;
        case 2:
            return 30;
        case 3:
            return 50;
        }
    }
    else if (strcmp(magia, "water") == 0)
    {
        switch (nivel)
        {
        case 1:
            return 10;
        case 2:
            return 25;
        case 3:
            return 40;
        }
    }
    else if (strcmp(magia, "earth") == 0)
    {
        switch (nivel)
        {
        case 1:
            return 25;
        case 2:
            return 55;
        case 3:
            return 70;
        }
    }
    else if (strcmp(magia, "air") == 0)
    {
        switch (nivel)
        {
        case 1:
            return 18;
        case 2:
            return 38;
        case 3:
            return 60;
        }
    }
}

int dentro(int x1, int y1, int x2, int y2, int xc, int yc, int r)
{
    int xm = xc < x2 ? xc : x2;
    int ym = yc < y2 ? yc : y2;

    xm = x1 > xm ? x1 : xm;
    ym = y1 > ym ? y1 : ym;

    return ((xm - xc) * (xm - xc) + (ym - yc) * (ym - yc)) <= r * r;
}

int resolve(char *magia, int nivel, int x1, int y1, int x2, int y2, int xc, int yc)
{
    if (dentro(x1, y1, x2, y2, xc, yc, raio(magia, nivel)))
        return dano(magia);

    return 0;
}

int main()
{
    char magia[10];
    int T, w, h, x0, y0, N, cx, cy;

    scanf("%d", &T);

    for (int i = 0; i < T; ++i)
    {
        scanf("%d %d %d %d\n", &w, &h, &x0, &y0);
        scanf("%s %d %d %d\n", &magia, &N, &cx, &cy);

        printf("%d\n", resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy));
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <map>

using namespace std;

map<string, int> dano;
map<string, map<int, int>> raio;

void inicializa()
{
    dano["fire"] = 200;
    raio["fire"] = map<int, int>();
    raio["fire"][1] = 20;
    raio["fire"][2] = 30;
    raio["fire"][3] = 50;

    dano["water"] = 300;
    raio["water"] = map<int, int>();
    raio["water"][1] = 10;
    raio["water"][2] = 25;
    raio["water"][3] = 40;

    dano["earth"] = 400;
    raio["earth"] = map<int, int>();
    raio["earth"][1] = 25;
    raio["earth"][2] = 55;
    raio["earth"][3] = 70;

    dano["air"] = 100;
    raio["air"] = map<int, int>();
    raio["air"][1] = 18;
    raio["air"][2] = 38;
    raio["air"][3] = 60;
}

bool dentro(int x1, int y1, int x2, int y2, int xc, int yc, int r)
{
    int xm = max(x1, min(xc, x2));
    int ym = max(y1, min(yc, y2));

    return ((xm - xc) * (xm - xc) + (ym - yc) * (ym - yc)) <= r * r;
}

int resolve(string magia, int nivel, int x1, int y1, int x2, int y2, int xc, int yc)
{
    if (dentro(x1, y1, x2, y2, xc, yc, raio[magia][nivel]))
        return dano[magia];

    return 0;
}

int main()
{
    string magia;
    int T, w, h, x0, y0, N, cx, cy;

    inicializa();

    cin >> T;

    for (int i = 0; i < T; ++i)
    {
        cin >> w >> h >> x0 >> y0;
        cin >> magia >> N >> cx >> cy;

        cout << resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Linq;
using System.Collections.Generic;

class URI {
  static Dictionary<string, int> dano { get; set; }
    static Dictionary<string, int[]> raio { get; set; }

    static void inicializa(){
        dano = new Dictionary<string, int>();
        dano.Add("fire", 200);
        dano.Add("water", 300);
        dano.Add("earth", 400);
        dano.Add("air", 100);

        raio = new Dictionary<string, int[]>();
        raio.Add("fire", new int[] {0, 20, 30, 50});
        raio.Add("water", new int[] {0, 10, 25, 40});
        raio.Add("earth", new int[] {0, 25, 55, 70});
        raio.Add("air", new int[] {0, 18, 38, 60});
    }

    static bool dentro(int x1, int y1, int x2, int y2, int xc, int yc, int r){
        int xm = Math.Max(x1, Math.Min(xc, x2));
        int ym = Math.Max(y1, Math.Min(yc, y2));

        return ((xm - xc) * (xm - xc) + (ym - yc) * (ym - yc)) <= r * r;
    }

    static int resolve(string magia, int nivel, int x1, int y1, int x2, int y2, int xc, int yc){
        if(dentro(x1, y1, x2, y2, xc, yc, raio[magia][nivel]))
            return dano[magia];
        return 0;
    }

    static void Main(string[] args) {
        inicializa();
        
        int T = int.Parse(Console.ReadLine());
        for(int k = 0; k < T; ++k){
            List<int> dimensoes = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
            int w = dimensoes[0];
            int h = dimensoes[1];
            int x0 = dimensoes[2];
            int y0 = dimensoes[3];

            string[] dim_magia = Console.ReadLine().Trim().Split(' ');
            string magia = dim_magia[0];
            int N = int.Parse(dim_magia[1]);
            int cx = int.Parse(dim_magia[2]);
            int cy = int.Parse(dim_magia[3]);

            Console.WriteLine(resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy));
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;

public class Main {
    public static HashMap<String, Integer> dano;
    public static HashMap<String, ArrayList<Integer>> raio;

    public static void inicializa() {
        dano = new HashMap<String, Integer>();
        dano.put("fire", 200);
        dano.put("water", 300);
        dano.put("earth", 400);
        dano.put("air", 100);

        raio = new HashMap<String, ArrayList<Integer>>();
        raio.put("fire", new ArrayList<Integer>(Arrays.asList(0, 20, 30, 50)));
        raio.put("water", new ArrayList<Integer>(Arrays.asList(0, 10, 25, 40)));
        raio.put("earth", new ArrayList<Integer>(Arrays.asList(0, 25, 55, 70)));
        raio.put("air", new ArrayList<Integer>(Arrays.asList(0, 18, 38, 60)));
    }

    public static boolean dentro(int x1, int y1, int x2, int y2, int xc, int yc, int r) {
        int xm = Math.max(x1, Math.min(xc, x2));
        int ym = Math.max(y1, Math.min(yc, y2));

        return ((xm - xc) * (xm - xc) + (ym - yc) * (ym - yc)) <= r * r;
    }

    public static int resolve(String magia, int nivel, int x1, int y1, int x2, int y2, int xc, int yc) {
        if (dentro(x1, y1, x2, y2, xc, yc, raio.get(magia).get(nivel)))
            return dano.get(magia);
        return 0;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        inicializa();

        int T = Integer.parseInt(in.readLine());
        for (int k = 0; k < T; ++k) {
            String[] entrada = in.readLine().trim().split(" ");
            int w = Integer.parseInt(entrada[0]);
            int h = Integer.parseInt(entrada[1]);
            int x0 = Integer.parseInt(entrada[2]);
            int y0 = Integer.parseInt(entrada[3]);

            entrada = in.readLine().trim().split(" ");
            String magia = entrada[0];
            int N = Integer.parseInt(entrada[1]);
            int cx = Integer.parseInt(entrada[2]);
            int cy = Integer.parseInt(entrada[3]);

            System.out.println(resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const inicializa = () => {
    let dano = {};
    let raio = {};

    dano["fire"] = 200;
    raio["fire"] = {};
    raio["fire"][1] = 20;
    raio["fire"][2] = 30;
    raio["fire"][3] = 50;

    dano["water"] = 300;
    raio["water"] = {};
    raio["water"][1] = 10;
    raio["water"][2] = 25;
    raio["water"][3] = 40;

    dano["earth"] = 400;
    raio["earth"] = {};
    raio["earth"][1] = 25;
    raio["earth"][2] = 55;
    raio["earth"][3] = 70;

    dano["air"] = 100;
    raio["air"] = {};
    raio["air"][1] = 18;
    raio["air"][2] = 38;
    raio["air"][3] = 60;

    return [dano, raio];
};

const dentro = (x1, y1, x2, y2, xc, yc, r) => {
    const xm = Math.max(x1, Math.min(xc, x2));
    const ym = Math.max(y1, Math.min(yc, y2));

    return ((xm - xc) * (xm - xc) + (ym - yc) * (ym - yc)) <= r * r;
};

const [dano, raio] = inicializa();

const resolve = (magia, nivel, x1, y1, x2, y2, xc, yc) => {
    if (dentro(x1, y1, x2, y2, xc, yc, raio[magia][nivel]))
        return dano[magia];
    return 0;
};

let T = parseInt(lines.shift());

for (let i = 0; i < T; ++i) {
    let [w, h, x0, y0] = lines.shift().trim().split(' ').map(x => parseInt(x));
    let [magia, N, cx, cy] = lines.shift().trim().split(' ');
    [N, cx, cy] = [N, cx, cy].map((x) => parseInt(x));

    console.log(resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy));
}
```

### Python 3.9

```py
dano = {
    "fire": 200,
    "water": 300,
    "earth": 400,
    "air": 100
}

raio = {
    "fire": {
        1: 20,
        2: 30,
        3: 50
    },
    "water": {
        1: 10,
        2: 25,
        3: 40
    },
    "earth": {
        1: 25,
        2: 55,
        3: 70
    },
    "air": {
        1: 18,
        2: 38,
        3: 60
    }
}


def dentro(x1, y1, x2, y2, xc, yc, r):
    xm = max(x1, min(xc, x2))
    ym = max(y1, min(yc, y2))

    return ((xm - xc)**2 + (ym - yc)**2) <= r * r


def resolve(magia, nivel, x1, y1, x2, y2, xc, yc):
    if(dentro(x1, y1, x2, y2, xc, yc, raio[magia][nivel])):
        return dano[magia]

    return 0


T = int(input())

for _ in range(T):
    w, h, x0, y0 = [int(x) for x in input().strip().split(' ')]
    magia, N, cx, cy = input().strip().split(' ')
    N, cx, cy = [int(x) for x in [N, cx, cy]]

    print(resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy))
```