# 1239 - Atalhos Bloggo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1239)

## Solução

Aqui não precisamos nos preocupar com código HTML inválido, não precisamos nos preocupar com aba aberta sem fechar, vivemos no mais puro paraíso. Com isso, o que precisamos fazer é só substituir os underlines por tags itálico e os asteriscos por tags negrito, guardando em uma variável se já abrimos uma tag dessas antes ou não. Essa variável é consultada antes de colocarmos a tag e o valor dela troca sempre após colocarmos a tag apropriada.

Um detalhe interessante para as linguagens JavaScript e Python é que eu não uso o replace indiscriminadamente porque alguns dos underlines abrem e outros fecham, mesma coisa para os asteriscos, então precisa-se trocar com certo critério.

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char frase[51];
    int n, negrito, italico;

    while(gets(frase) != NULL){
        negrito = 0;
        italico = 0;
        n = strlen(frase);
        for(int i = 0; i < n; ++i){
            if(frase[i] == '_'){
                printf("%s", italico ? "</i>" : "<i>");
                italico = 1 - italico;
            }else if(frase[i] == '*'){
                printf("%s", negrito ? "</b>" : "<b>");
                negrito = 1 - negrito;
            }else{
                printf("%c", frase[i]);
            }
        }
        printf("\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int n;
    string frase;
    bool negrito, italico;

    while(getline(cin, frase)){
        negrito = false;
        italico = false;
        n = frase.length();
        for(int i = 0; i < n; ++i){
            if(frase[i] == '_'){
                cout << (italico ? "</i>" : "<i>");
                italico = !italico;
            }else if(frase[i] == '*'){
                cout << (negrito ? "</b>" : "<b>");
                negrito = !negrito;
            }else{
                cout << frase[i];
            }
        }
        cout << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const replaceAll = (frase, simbolo, tagAberta, tagFechada) => {
    let novaFrase = frase.replace(simbolo, tagAberta);
    let aberta = true;
    while(novaFrase !== frase){
        frase = novaFrase;
        novaFrase = frase.replace(simbolo, aberta ? tagFechada : tagAberta);
        aberta = !aberta;
    }

    return frase;
}

while(lines.length){
    let frase = lines.shift();

    frase = replaceAll(frase, '_', '<i>', '</i>');
    frase = replaceAll(frase, '*', '<b>', '</b>');

    console.log(frase);
}
```

### Python 3.9
```python
def replaceAll(frase, simbolo, tagAberta, tagFechada):
    novaFrase = frase.replace(simbolo, tagAberta, 1)
    aberta = True
    while(novaFrase != frase):
        frase = novaFrase
        novaFrase = frase.replace(simbolo, tagFechada if aberta else tagAberta, 1)
        aberta = not aberta

    return frase

while True:
    try:
        frase = input()

        frase = replaceAll(frase, '_', '<i>', '</i>')
        frase = replaceAll(frase, '*', '<b>', '</b>')

        print(frase)
    except EOFError:
        break
```