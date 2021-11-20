# 2381 - Lista de Chamada

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2381)

## Solução

Este problema se resume a encontrar o k-ésimo menor elemento em um vetor, onde o k é dado pelo enunciado. Para este problema em específico temos algumas soluções viáveis com suas respectivas complexidades, mas por questão de simplicidade, aqui só vou colocar a mais simples. Mas só à caráter expositivo, as soluções mais eficientes envolvem heaps e até mesmo um algoritmo linear chamado QuickSelect.

Mas, bem, a solução mais simples é ordenar o vetor e escolher o k-ésimo elemento.

| Complexidades    | Termo assintótico           |
| ---------------- | --------------------------- |
| Tempo            | O(n log n) para a ordenação |
| Espaço adicional | O(1)                        |

Normalmente essa é a primeira maneira que a gente pensa para resolver o problema. São duas simples etapas:

1. Ordenar o vetor;
2. Retornar o k-ésimo elemento do vetor ordenado.

### C99
```c
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int comp(const void* a, const void* b){
	return strcmp((char*)a,(char*)b);
}

int main(void) {
	int K, N, i;
	char alunos[200][50];
	
	scanf("%d %d\n", &N, &K);
	for(i = 0; i < N; ++i){
		scanf("%s", &alunos[i]);
	}
	
	qsort(alunos, N, sizeof(char) * 50, comp);
	
	printf("%s\n", alunos[K - 1]);
	
	return 0;
}
```

### C++17
```cpp
#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

int main() {
	int N, K;
	vector<string> alunos;
	
	cin >> N >> K;
	alunos.assign(N, "");
	for(int i = 0; i < N; ++i){
		cin >> alunos[i];
	}
	
	sort(alunos.begin(), alunos.end());
	
	cout << alunos[K - 1] << endl;
	
	return 0;
}
```

### Java 14
```java
import java.util.Arrays;
import java.util.ArrayList;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main
{
	public static void main (String[] args) throws IOException
	{
		InputStreamReader ir = new InputStreamReader(System.in);
		BufferedReader in = new BufferedReader(ir);
		
		String entrada[] = in.readLine().split(" ");
		int N = Integer.parseInt(entrada[0]);
		int K = Integer.parseInt(entrada[1]);
		
		String alunos[] = new String[N];
		for(int i = 0; i < N; ++i){
			alunos[i] = in.readLine();
		}
		
		Arrays.sort(alunos);
		
		System.out.printf("%s\n", alunos[K - 1]);
	}
}
```

### Python 3.9
```python
N, K = [int(x) for x in input().split(' ')]
alunos = [input() for _ in range(N)]

alunos.sort()

print(alunos[K - 1])
```

### Ruby 2.7
```ruby
N, K = gets.split.map(&:to_i)
alunos = Array.new(N) {gets}

alunos = alunos.sort

puts alunos[K - 1]
```

### C#
```csharp
using System;

class URI {
    
  static void Main() {
    string[] alunos;
    int N, K;
    
    string[] input = System.Console.ReadLine().Trim().Split(' ');
    
    N = Int32.Parse(input[0]);
    K = Int32.Parse(input[1]);
    alunos = new string[N];
    
    for(var i = 0; i < N; ++i){
        alunos[i] = System.Console.ReadLine().Trim();
    }
    
    Array.Sort(alunos);
    
    System.Console.WriteLine(alunos[K - 1]);
  }
  
}
```