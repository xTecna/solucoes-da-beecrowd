# 1196 - WERTYU

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1196)

## Solução

Como não há uma regra numérica específica para o posicionamento das teclas, então somos obrigados a, de alguma maneira, relacionar a letra com a sua respectiva letra à direita manualmente.

Lembrando que os dígitos possíveis são:

* Números de `0` até `9`;
* Os símbolos `-`, `[`, `]`, `\`, `;`, `'`,` /` e `=`;
* Letras maiúsculas de `A` até `Z`.

### Alternativa 1 - Dicionário/Mapa/Sequência de ifs/Switch

A solução mais direta, mas mais chatinha de implementar.

#### C99
```c
#include <string.h>
#include <stdio.h>

char traduz(char caractere){
    switch(caractere){
        case '1':   return '`';
        case '2':   return '1';
        case '3':   return '2';
        case '4':   return '3';
        case '5':   return '4';
        case '6':   return '5';
        case '7':   return '6';
        case '8':   return '7';
        case '9':   return '8';
        case '0':   return '9';
        case '-':   return '0';
        case '=':   return '-';
        case 'W':   return 'Q';
        case 'E':   return 'W';
        case 'R':   return 'E';
        case 'T':   return 'R';
        case 'Y':   return 'T';
        case 'U':   return 'Y';
        case 'I':   return 'U';
        case 'O':   return 'I';
        case 'P':   return 'O';
        case '[':   return 'P';
        case ']':   return '[';
        case '\\':   return ']';
        case 'S':   return 'A';
        case 'D':   return 'S';
        case 'F':   return 'D';
        case 'G':   return 'F';
        case 'H':   return 'G';
        case 'J':   return 'H';
        case 'K':   return 'J';
        case 'L':   return 'K';
        case ';':   return 'L';
        case '\'':   return ';';
        case 'X':   return 'Z';
        case 'C':   return 'X';
        case 'V':   return 'C';
        case 'B':   return 'V';
        case 'N':   return 'B';
        case 'M':   return 'N';
        case ',':   return 'M';
        case '.':   return ',';
        case '/':   return '.';
        default:    return ' ';
    }
}

int main(){
    char frase[1000];

    while(gets(frase) != NULL){
        for(int i = 0; i < strlen(frase); ++i){
            printf("%c", traduz(frase[i]));
        }
        printf("\n");
    }
}
```

#### C++20
```cpp
#include <iostream>
#include <map>

using namespace std;

map<char, char> teclado;

void inicializa(){
    teclado['1'] = '`';
    teclado['2'] = '1';
    teclado['3'] = '2';
    teclado['4'] = '3';
    teclado['5'] = '4';
    teclado['6'] = '5';
    teclado['7'] = '6';
    teclado['8'] = '7';
    teclado['9'] = '8';
    teclado['0'] = '9';
    teclado['-'] = '0';
    teclado['='] = '-';
    teclado['W'] = 'Q';
    teclado['E'] = 'W';
    teclado['R'] = 'E';
    teclado['T'] = 'R';
    teclado['Y'] = 'T';
    teclado['U'] = 'Y';
    teclado['I'] = 'U';
    teclado['O'] = 'I';
    teclado['P'] = 'O';
    teclado['['] = 'P';
    teclado[']'] = '[';
    teclado['\\'] = ']';
    teclado['S'] = 'A';
    teclado['D'] = 'S';
    teclado['F'] = 'D';
    teclado['G'] = 'F';
    teclado['H'] = 'G';
    teclado['J'] = 'H';
    teclado['K'] = 'J';
    teclado['L'] = 'K';
    teclado[';'] = 'L';
    teclado['\''] = ';';
    teclado['X'] = 'Z';
    teclado['C'] = 'X';
    teclado['V'] = 'C';
    teclado['B'] = 'V';
    teclado['N'] = 'B';
    teclado['M'] = 'N';
    teclado[','] = 'M';
    teclado['.'] = ',';
    teclado['/'] = '.';
    teclado[' '] = ' ';
}

int main(){
    string frase;

    inicializa();

    while(getline(cin, frase)){
        for(int i = 0; i < frase.length(); ++i){
            cout << teclado[frase[i]];
        }
        cout << endl;
    }

    return 0;
}
```

#### C#
```cs
using System;
using System.Collections.Generic;
using System.Text;

class URI {
    static Dictionary<char, char> teclado;

    static void inicializa(){
        teclado = new Dictionary<char, char>();
        teclado['1'] = '`';
        teclado['2'] = '1';
        teclado['3'] = '2';
        teclado['4'] = '3';
        teclado['5'] = '4';
        teclado['6'] = '5';
        teclado['7'] = '6';
        teclado['8'] = '7';
        teclado['9'] = '8';
        teclado['0'] = '9';
        teclado['-'] = '0';
        teclado['='] = '-';
        teclado['W'] = 'Q';
        teclado['E'] = 'W';
        teclado['R'] = 'E';
        teclado['T'] = 'R';
        teclado['Y'] = 'T';
        teclado['U'] = 'Y';
        teclado['I'] = 'U';
        teclado['O'] = 'I';
        teclado['P'] = 'O';
        teclado['['] = 'P';
        teclado[']'] = '[';
        teclado['\\'] = ']';
        teclado['S'] = 'A';
        teclado['D'] = 'S';
        teclado['F'] = 'D';
        teclado['G'] = 'F';
        teclado['H'] = 'G';
        teclado['J'] = 'H';
        teclado['K'] = 'J';
        teclado['L'] = 'K';
        teclado[';'] = 'L';
        teclado['\''] = ';';
        teclado['X'] = 'Z';
        teclado['C'] = 'X';
        teclado['V'] = 'C';
        teclado['B'] = 'V';
        teclado['N'] = 'B';
        teclado['M'] = 'N';
        teclado[','] = 'M';
        teclado['.'] = ',';
        teclado['/'] = '.';
        teclado[' '] = ' ';
    }
    
    static void Main(string[] args) {
        inicializa();

        string frase;
        while((frase = Console.ReadLine()) != null){
            StringBuilder sb = new StringBuilder();
            for(int i = 0; i < frase.Length; ++i){
                sb.Append(teclado[frase[i]]);
            }
            Console.WriteLine(sb.ToString());
        }
    }
}
```

#### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

public class Main {
    public static HashMap<Character, Character> teclado;
    
    public static void inicializa(){
        teclado = new HashMap<Character, Character>();
        teclado.put('1', '`');
        teclado.put('2', '1');
        teclado.put('3', '2');
        teclado.put('4', '3');
        teclado.put('5', '4');
        teclado.put('6', '5');
        teclado.put('7', '6');
        teclado.put('8', '7');
        teclado.put('9', '8');
        teclado.put('0', '9');
        teclado.put('-', '0');
        teclado.put('=', '-');
        teclado.put('W', 'Q');
        teclado.put('E', 'W');
        teclado.put('R', 'E');
        teclado.put('T', 'R');
        teclado.put('Y', 'T');
        teclado.put('U', 'Y');
        teclado.put('I', 'U');
        teclado.put('O', 'I');
        teclado.put('P', 'O');
        teclado.put('[', 'P');
        teclado.put(']', '[');
        teclado.put('\\', ']');
        teclado.put('S', 'A');
        teclado.put('D', 'S');
        teclado.put('F', 'D');
        teclado.put('G', 'F');
        teclado.put('H', 'G');
        teclado.put('J', 'H');
        teclado.put('K', 'J');
        teclado.put('L', 'K');
        teclado.put(';', 'L');
        teclado.put('\'', ';');
        teclado.put('X', 'Z');
        teclado.put('C', 'X');
        teclado.put('V', 'C');
        teclado.put('B', 'V');
        teclado.put('N', 'B');
        teclado.put('M', 'N');
        teclado.put(',', 'M');
        teclado.put('.', ',');
        teclado.put('/', '.');
        teclado.put(' ', ' ');
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        inicializa();

        while(in.ready()){
            String frase = in.readLine();

            String resposta = "";
            for(int i = 0; i < frase.length(); ++i){
                resposta += teclado.get(frase.charAt(i));
            }
            System.out.println(resposta);
        }
    }
}
```

#### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const teclado = {
    '1': '`',
    '2': '1',
    '3': '2',
    '4': '3',
    '5': '4',
    '6': '5',
    '7': '6',
    '8': '7',
    '9': '8',
    '0': '9',
    '-': '0',
    '=': '-',
    'W': 'Q',
    'E': 'W',
    'R': 'E',
    'T': 'R',
    'Y': 'T',
    'U': 'Y',
    'I': 'U',
    'O': 'I',
    'P': 'O',
    '[': 'P',
    ']': '[',
    '\\': ']',
    'S': 'A',
    'D': 'S',
    'F': 'D',
    'G': 'F',
    'H': 'G',
    'J': 'H',
    'K': 'J',
    'L': 'K',
    ';': 'L',
    '\'': ';',
    'X': 'Z',
    'C': 'X',
    'V': 'C',
    'B': 'V',
    'N': 'B',
    'M': 'N',
    ',': 'M',
    '.': ',',
    '/': '.',
    ' ': ' ',
};

while(lines.length){
    let frase = lines.shift();

    let resposta = frase.split('').map((x) => teclado[x]).join('');
    console.log(resposta);
}
```

#### Python 3.9
```py
teclado = {
    '1': '`',
    '2': '1',
    '3': '2',
    '4': '3',
    '5': '4',
    '6': '5',
    '7': '6',
    '8': '7',
    '9': '8',
    '0': '9',
    '-': '0',
    '=': '-',
    'W': 'Q',
    'E': 'W',
    'R': 'E',
    'T': 'R',
    'Y': 'T',
    'U': 'Y',
    'I': 'U',
    'O': 'I',
    'P': 'O',
    '[': 'P',
    ']': '[',
    '\\': ']',
    'S': 'A',
    'D': 'S',
    'F': 'D',
    'G': 'F',
    'H': 'G',
    'J': 'H',
    'K': 'J',
    'L': 'K',
    ';': 'L',
    '\'': ';',
    'X': 'Z',
    'C': 'X',
    'V': 'C',
    'B': 'V',
    'N': 'B',
    'M': 'N',
    ',': 'M',
    '.': ',',
    '/': '.',
    ' ': ' ',
}

while True:
    try:
        frase = input()

        resposta = ''.join([teclado[x] for x in frase])
        print(resposta)
    except EOFError:
        break
```

### Alternativa 2 - Dois vetores

Para essa solução, podemos colocar o layout do teclado físico em um vetor e um outro vetor apenas para situar onde está cada letra (este pode ser formado com um for, não precisa fazer na mão). Com isso, a solução envolve achar a posição da letra neste vetor do teclado e só precisar fazer posição - 1.

#### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    char frase[1000];
    int posicoes[255];
    char* teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";

    for(int i = 0; i < 48; ++i){
        posicoes[teclado[i]] = i;
    }

    while(gets(frase) != NULL){
        for(int i = 0; i < strlen(frase); ++i){
            if(frase[i] == ' ') printf(" ");
            else                printf("%c", teclado[posicoes[frase[i]] - 1]);
        }
        printf("\n");
    }

    return 0;
}
```

#### C++20
```cpp
#include <iostream>

using namespace std;

int main(){
    int posicoes[255];
    string frase, teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";

    for(int i = 0; i < 48; ++i){
        posicoes[teclado[i]] = i;
    }

    while(getline(cin, frase)){
        for(int i = 0; i < frase.length(); ++i){
            if(frase[i] == ' ') cout << ' ';
            else                cout << teclado[posicoes[frase[i]] - 1];
        }
        cout << endl;
    }

    return 0;
}
```

#### C#
```cs
using System;
using System.Text;

class URI {    
    static void Main(string[] args) {
        string teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";

        int[] posicoes = new int[255];
        for(int i = 0; i < teclado.Length; ++i){
            posicoes[teclado[i]] = i;
        }

        string frase;
        while((frase = Console.ReadLine()) != null){
            StringBuilder sb = new StringBuilder();
            for(int i = 0; i < frase.Length; ++i){
                if(frase[i] == ' '){
                    sb.Append(' ');
                }else{
                    sb.Append(teclado[posicoes[frase[i]] - 1]);
                }
            }
            Console.WriteLine(sb.ToString());
        }
    }
}
```

#### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;

public class Main {    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";

        int[] posicoes = new int[255];
        for(int i = 0; i < teclado.length(); ++i){
            posicoes[teclado.charAt(i)] = i;
        }

        while(in.ready()){
            String frase = in.readLine();

            String resposta = "";
            for(int i = 0; i < frase.length(); ++i){
                if(frase.charAt(i) == ' '){
                    resposta += ' ';
                }else{
                    resposta += teclado.charAt(posicoes[frase.charAt(i)] - 1);
                }
            }
            System.out.println(resposta);
        }
    }
}
```

#### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";
const posicoes = [];
teclado.split('').forEach((x, i) => posicoes[x] = i);

while(lines.length){
    let frase = lines.shift();

    let resposta = frase.split('').map((x) => {
        if(x === ' ')   return ' ';
        else            return teclado[posicoes[x] - 1];
    }).join('');
    console.log(resposta);
}
```

#### Python 3.9
```py
teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./"
posicoes = {}
for i, tecla in enumerate(teclado):
    posicoes[tecla] = i

while True:
    try:
        frase = input()

        resposta = ''.join([teclado[posicoes[x] - 1] if x != ' ' else ' ' for x in frase])
        print(resposta)
    except EOFError:
        break
```