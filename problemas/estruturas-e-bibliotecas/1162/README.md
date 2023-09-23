# 1162 - Organizador de Vagões

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1162)

## Solução

O processo de ordenação descrito envolve fazer trocas entre dois elementos consecutivos até que todos os elementos estejam ordenados, o que é precisamente o processo de ordenação do [InsertionSort](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#insertionsort). Logo, tudo o que precisamos fazer é contar o número que vezes que uma troca de posição entre elementos acontece no InsertionSort.

> O processo de ordenação também pode descrever o BubbleSort, mas não testei se os resultados são equivalentes.

> Infelizmente não temos a solução desse em Python.

### C99
```c
#include <stdio.h>

int comp(int a, int b)
{
    return a - b;
}

void swap(int *a, int *b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

int insertionSort(int *V, int n)
{
    int trocas = 0;

    for (int i = 1; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]) < 0)
        {
            swap(&V[j], &V[k]);
            ++trocas;
            --j, --k;
        }
    }

    return trocas;
}

int main()
{
    int N, L, vagoes[50];

    scanf("%d", &N);

    for (int k = 0; k < N; ++k)
    {
        scanf("%d", &L);

        for (int i = 0; i < L; ++i)
        {
            scanf("%d", &vagoes[i]);
        }

        printf("Optimal train swapping takes %d swaps.\n", insertionSort(vagoes, L));
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

bool comp(int a, int b)
{
    return a < b;
}

template <class T>
int insertionSort(vector<T> &V)
{
    int trocas = 0, n = V.size();

    for (int i = 0; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]))
        {
            swap(V[k], V[j]);
            ++trocas;
            --j, --k;
        }
    }

    return trocas;
}

int main()
{
    int N, L;
    vector<int> vagoes;

    cin >> N;

    for (int k = 0; k < N; ++k)
    {
        cin >> L;

        vagoes.assign(L, 0);
        for (int i = 0; i < L; ++i)
        {
            cin >> vagoes[i];
        }

        cout << "Optimal train swapping takes " << insertionSort(vagoes) << " swaps." << endl;
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
    static int comp(int a, int b){
        return a - b;
    }
    
    static int insertionSort(ref List<int> V){
        int trocas = 0;
        
        for(int i = 1; i < V.Count; ++i){
            int j = i, k = j - 1;
            while(k > -1 && comp(V[j], V[k]) < 0){
                int temp = V[j];
                V[j] = V[k];
                V[k] = temp;
                ++trocas;
                --j;
                --k;
            }
        }
        
        return trocas;
    }
    
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        
        for(int k = 0; k < N; ++k){
            int L = int.Parse(Console.ReadLine());
            List<int> vagoes = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            
            Console.WriteLine($"Optimal train swapping takes {insertionSort(ref vagoes)} swaps.");
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;

public class Main {
    public static int comp(int a, int b){
        return a - b;
    }

    public static int insertionSort(ArrayList<Integer> V){
        int trocas = 0;

        for(int i = 1; i < V.size(); ++i){
            int j = i, k = j - 1;
            while(k > -1 && comp(V.get(j), V.get(k)) < 0){
                Collections.swap(V, j, k);
                ++trocas;
                --j;
                --k;
            }
        }

        return trocas;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());

        for(int k = 0; k < N; ++k){
            int L = Integer.parseInt(in.readLine());
            String[] V = in.readLine().trim().split(" ");
            ArrayList<Integer> vagoes = new ArrayList<Integer>();
            for(int i = 0; i < L; ++i){
                vagoes.add(Integer.parseInt(V[i]));
            }

            System.out.printf("Optimal train swapping takes %d swaps.\n", insertionSort(vagoes));
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => a - b;

const insertionSort = (V) => {
    let trocas = 0;

    for (let i = 1; i < V.length; ++i){
        let j = i, k = j - 1;

        while(k > -1 && comp(V[j], V[k]) < 0){
            [V[k], V[j]] = [V[j], V[k]];
            ++trocas;
            --j, --k;
        }
    }

    return trocas;
};

let N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    let L = parseInt(lines.shift());

    let vagoes = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(`Optimal train swapping takes ${insertionSort(vagoes)} swaps.`);
}
```