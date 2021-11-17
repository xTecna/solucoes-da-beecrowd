# 1041 - Coordenadas de um Ponto

## [Descrição](https://www.urionlinejudge.com.br/judge/pt/problems/view/1041)

## Solução

A abordagem que eu usei aqui foi uma baseada em mais ou menos como nós faríamos para identificar um quadrante na vida real. Primeiro testamos a coordenada X e depois a coordenada Y e respondemos de acordo. Há diversas formas diferentes de montar as estruturas de condicionais deste problema (eu mesma resolvi de uma maneira completamente diferente dessa abaixo quando resolvi o exercício pela primeira vez). Tente pensar na forma que faz mais sentido para você.

### C99

```c
#include <stdio.h>

int main(){
    double x, y;

    scanf("%lf %lf", &x, &y);

    if(x > 0.0){
        if(y > 0.0)         printf("Q1\n");
        else if(y < 0.0)    printf("Q4\n");
        else                printf("Eixo X\n");
    }else if(x < 0.0){
        if(y > 0.0)         printf("Q2\n");
        else if(y < 0.0)    printf("Q3\n");
        else                printf("Eixo X\n");
    }else{
        if(y > 0.0)         printf("Eixo Y\n");
        else if(y < 0.0)    printf("Eixo Y\n");
        else                printf("Origem\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main(){
    double x, y;

    cin >> x >> y;

    if(x > 0.0){
        if(y > 0.0)         cout << "Q1" << endl;
        else if(y < 0.0)    cout << "Q4" << endl;
        else                cout << "Eixo X" << endl;
    }else if(x < 0.0){
        if(y > 0.0)         cout << "Q2" << endl;
        else if(y < 0.0)    cout << "Q3" << endl;
        else                cout << "Eixo X" << endl;
    }else{
        if(y > 0.0)         cout << "Eixo Y" << endl;
        else if(y < 0.0)    cout << "Eixo Y" << endl;
        else                cout << "Origem" << endl;
    }

    return 0;
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [x, y] = lines.shift().trim().split(" ").map((x) => parseFloat(x));

if (x > 0.0) {
  if (y > 0.0)       console.log("Q1");
  else if (y < 0.0)  console.log("Q4");
  else               console.log("Eixo X");
} else if (x < 0.0) {
  if (y > 0.0)       console.log("Q2");
  else if (y < 0.0)  console.log("Q3");
  else               console.log("Eixo X");
} else {
  if (y > 0.0)       console.log("Eixo Y");
  else if (y < 0.0)  console.log("Eixo Y");
  else               console.log("Origem");
}
```

#### Python 3.9

```python
x, y = [float(x) for x in input().strip().split(' ')]

if(x > 0.0):
    if(y > 0.0):
        print("Q1")
    elif(y < 0.0):
        print("Q4")
    else:
        print("Eixo X")
elif(x < 0.0):
    if(y > 0.0):
        print("Q2")
    elif(y < 0.0):
        print("Q3")
    else:
        print("Eixo X")
else:
    if(y > 0.0):
        print("Eixo Y")
    elif(y < 0.0):
        print("Eixo Y")
    else:
        print("Origem")
```