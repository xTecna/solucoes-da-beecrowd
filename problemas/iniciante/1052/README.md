# 1052 - Mês

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1052)

## Solução

Vide problema [1050 - DDD](../1050/README.md).

### C99

```c
#include <stdio.h>

int main()
{
    int mes;

    scanf("%d", &mes);

    switch (mes)
    {
    case 1:
        printf("January\n");
        break;
    case 2:
        printf("February\n");
        break;
    case 3:
        printf("March\n");
        break;
    case 4:
        printf("April\n");
        break;
    case 5:
        printf("May\n");
        break;
    case 6:
        printf("June\n");
        break;
    case 7:
        printf("July\n");
        break;
    case 8:
        printf("August\n");
        break;
    case 9:
        printf("September\n");
        break;
    case 10:
        printf("October\n");
        break;
    case 11:
        printf("November\n");
        break;
    case 12:
        printf("December\n");
        break;
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

string nomeEmIngles(int mes){
    switch(mes){
        case 1: return "January";
        case 2: return "February";
        case 3: return "March";
        case 4: return "April";
        case 5: return "May";
        case 6: return "June";
        case 7: return "July";
        case 8: return "August";
        case 9: return "September";
        case 10: return "October";
        case 11: return "November";
        case 12: return "December";
    }
}

int main(){
    int mes;
    
    cin >> mes;
    
    cout << nomeEmIngles(mes) << endl;
    
    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string[] meses = new string[12] {
            "January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
        };
        
        int mes = int.Parse(Console.ReadLine());
        
        Console.WriteLine(meses[mes - 1]);
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
        
        String[] meses = new String[]{
            "January", "February", "March", "April", "May", "June",
            "July", "August", "September", "October", "November", "December"
        };
        int mes = Integer.parseInt(in.readLine());
        
        System.out.printf("%d\n", meses[mes - 1]);
    }
}
```

### JavaScript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const meses = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

let mes = parseInt(lines.shift());

console.log(meses[mes - 1]);
```

### Python 3.9

```py
meses = ['January', 'February', 'March', 'April', 'May', 'June',
         'July', 'August', 'September', 'October', 'November', 'December']
mes = int(input())

print(meses[mes - 1])
```