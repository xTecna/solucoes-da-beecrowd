# 1148 - Países em Guerra

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1148)

## Solução

Já que o número de cidades é pequeno e temos várias consultas para o mesmo mapa, podemos usar o algoritmo de _Floyd-Warshall_ para determinar todos eles e podermos fazer as consultas em $O(1)$. Única coisa a se lembrar é que para todo par de vértices $u$ e $v$ que possuem ambas arestas entre si possuem caminhos de custo sempre zero, então é importante ajustar isso antes de começar o _Floyd-Warshall_.

> Os códigos em C# e Python estão dando _Time Limit Exceeded_, então não temos esses códigos disponíveis ainda.

### C99
```c
#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

long long int min(long long int a, long long int b) {
    return a < b ? a : b;
}

void FloydWarshall(long long int **grafo, int N) {
    for (int k = 1; k <= N; ++k) {
        for (int i = 1; i <= N; ++i) {
            for (int j = 1; j <= N; ++j) {
                grafo[i][j] = min(grafo[i][j], grafo[i][k] + grafo[k][j]);
            }
        }
    }
}

int main(void) {
    long long int **grafo;
    int N, E, X, Y, H, K, O, D;

    while (scanf("%d %d\n", &N, &E) != EOF) {
        if (N == 0 && E == 0) {
            break;
        }

        grafo = (long long int **)malloc((N + 1) * sizeof(long long int *));
        for (int i = 1; i <= N; ++i) {
            grafo[i] = (long long int *)malloc((N + 1) * sizeof(long long int));
            for (int j = 1; j <= N; ++j) {
                grafo[i][j] = INT_MAX;
            }
        }

        for (int i = 0; i < E; ++i) {
            scanf("%d %d %d\n", &X, &Y, &H);
            grafo[X][Y] = H;
        }

        for (int i = 1; i <= N; ++i) {
            for (int j = i; j <= N; ++j) {
                if (grafo[i][j] != INT_MAX && grafo[j][i] != INT_MAX) {
                    grafo[i][j] = 0;
                    grafo[j][i] = 0;
                }
            }
        }

        FloydWarshall(grafo, N);

        scanf("%d\n", &K);
        for (int i = 0; i < K; ++i) {
            scanf("%d %d\n", &O, &D);

            if (grafo[O][D] == INT_MAX) {
                printf("Nao e possivel entregar a carta\n");
            } else {
                printf("%lld\n", grafo[O][D]);
            }
        }
        printf("\n");

        for (int i = 1; i <= N; ++i) {
            free(grafo[i]);
        }
        free(grafo);
    }

    return 0;
}
```

### C++20
```cpp
#include <climits>
#include <iostream>
#include <vector>

using namespace std;

void FloydWarshall(vector<vector<long long int>> &grafo, int N) {
	for (int k = 1; k <= N; ++k) {
		for (int i = 1; i <= N; ++i) {
      		for (int j = 1; j <= N; ++j) {
        		grafo[i][j] = min(grafo[i][j], grafo[i][k] + grafo[k][j]);
      		}
    	}
  	}
}

int main() {
	int N, E;
	vector<vector<long long int>> grafo;

	while (cin >> N >> E) {
		if (N == 0 && E == 0) {
			break;
		}

		grafo.assign(N + 1, vector<long long int>());
		for (int i = 1; i <= N; ++i) {
			grafo[i].assign(N + 1, INT_MAX);
		}

		int X, Y, H;
		for (int i = 0; i < E; ++i) {
			cin >> X >> Y >> H;
			grafo[X][Y] = H;
		}

		for (int i = 1; i <= N; ++i) {
			for (int j = i; j <= N; ++j) {
				if (grafo[i][j] != INT_MAX && grafo[j][i] != INT_MAX) {
					grafo[i][j] = 0;
					grafo[j][i] = 0;
				}
			}
		}

		FloydWarshall(grafo, N);

		int K, O, D;
		cin >> K;
		for (int i = 0; i < K; ++i) {
			cin >> O >> D;

			if (grafo[O][D] == INT_MAX) {
				cout << "Nao e possivel entregar a carta" << endl;
			} else {
				cout << grafo[O][D] << endl;
			}
		}
		cout << endl;
	}

    return 0;
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void FloydWarshall(long[][] grafo, int N){
        for(int k = 1; k <= N; ++k){
            for(int i = 1; i <= N; ++i){
                for(int j = 1; j <= N; ++j){
                    grafo[i][j] = Math.min(grafo[i][j], grafo[i][k] + grafo[k][j]);
                }
            }
        }
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            String[] NE = in.readLine().trim().split(" ");
            int N = Integer.parseInt(NE[0]);
            int E = Integer.parseInt(NE[1]);

            if(N == 0 && E == 0){
                break;
            }

            long[][] grafo = new long[N + 1][N + 1];
            for(int i = 1; i <= N; ++i){
                for(int j = 1; j <= N; ++j){
                    grafo[i][j] = Integer.MAX_VALUE;
                }
            }

            for(int i = 0; i < E; ++i){
                String[] XYH = in.readLine().trim().split(" ");
                int X = Integer.parseInt(XYH[0]);
                int Y = Integer.parseInt(XYH[1]);
                int H = Integer.parseInt(XYH[2]);

                grafo[X][Y] = H;
            }

            for(int i = 1; i <= N; ++i){
                for(int j = i; j <= N; ++j){
                    if(grafo[i][j] != Integer.MAX_VALUE && grafo[j][i] != Integer.MAX_VALUE){
                        grafo[i][j] = 0;
                        grafo[j][i] = 0;
                    }
                }
            }

            FloydWarshall(grafo, N);

            int K = Integer.parseInt(in.readLine());
            for(int i = 0; i < K; ++i){
                String[] OD = in.readLine().trim().split(" ");
                int O = Integer.parseInt(OD[0]);
                int D = Integer.parseInt(OD[1]);

                if(grafo[O][D] == Integer.MAX_VALUE){
                    System.out.println("Nao e possivel entregar a carta");
                }else{
                    System.out.println(grafo[O][D]);
                }
            }
            System.out.println("");
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const limit = 2147483647;

const FloydWarshall = (grafo, N) => {
    for(let k = 1; k <= N; ++k){
        for(let i = 1; i <= N; ++i){
            for(let j = 1; j <= N; ++j){
                grafo[i][j] = Math.min(grafo[i][j], grafo[i][k] + grafo[k][j]);
            }
        }
    }
}

let p = 0;
while(p < lines.length){
    let [N, E] = lines[p++].trim().split(' ').map(x => parseInt(x));

    if(N === 0 && E === 0){
        break;
    }

    let grafo = [[]];
    for(let i = 1; i <= N; ++i){
        grafo.push([]);
        for(let j = 0; j <= N; ++j){
            grafo[i].push(limit);
        }
    }

    for(let i = 0; i < E; ++i){
        let [X, Y, H] = lines[p++].trim().split(' ').map(x => parseInt(x));
        grafo[X][Y] = H;
    }

    for(let i = 1; i <= N; ++i){
        for(let j = i; j <= N; ++j){
            if(grafo[i][j] !== limit && grafo[j][i] !== limit){
                grafo[i][j] = 0;
                grafo[j][i] = 0;
            }
        }
    }

    FloydWarshall(grafo, N);

    let K = parseInt(lines[p++]);
    for(let i = 0; i < K; ++i){
        let [O, D] = lines[p++].trim().split(' ').map(x => parseInt(x));

        if(grafo[O][D] === limit){
            console.log('Nao e possivel entregar a carta');
        }else{
            console.log(grafo[O][D]);
        }
    }
    console.log('');
}
```