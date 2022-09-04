# 2165 - Tuitando

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2165)

## Solução

Vide problema [2160 - Nome no Formulário](../2160/README.md).

### C99

```c
#include <string.h>
#include <stdio.h>

int main()
{
    char tweet[501];

    gets(tweet);
    printf("%s\n", strlen(tweet) > 140 ? "MUTE" : "TWEET");

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    string tweet;

    getline(cin, tweet);
    cout << (tweet.size() > 140 ? "MUTE" : "TWEET") << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        string tweet = Console.ReadLine();
        Console.WriteLine(tweet.Length > 140 ? "MUTE" : "TWEET");
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

        String tweet = in.readLine();
        System.out.println(tweet.length() > 140 ? "MUTE" : "TWEET");
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let tweet = lines.shift();
console.log(tweet.length > 140 ? 'MUTE' : 'TWEET');
```

### Python 3.9

```py
tweet = input()
print('MUTE' if len(tweet) > 140 else 'TWEET')
```