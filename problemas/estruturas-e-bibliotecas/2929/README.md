# 2929 - Menor da Pilha

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2929)

## Solução

A ideia daqui é utilizar uma [pilha](../base-teorica/estruturas-e-bibliotecas/pilha.md) que em vez de guardar os elementos à medida que você os coloca e deixar para calcular o mínimo quando precisar, é melhor ir colocando na pilha direto o mínimo entre todos os números da pilha. Como fazer isso? As operações se transformam em:

* `PUSH`: em vez de colocar o elemento na pilha, vê se o elemento é menor que o elemento do topo. Se for, coloca o elemento mesmo, senão **repete** o elemento do topo. É importante repetir o elemento em vez de só ignorar porque é como se você estivesse registrando que o menor elemento continua sendo esse e manter a quantidade correta de elementos para o POP não dar ruim.
* `POP`: funciona exatamente da mesma forma de uma pilha normal.
* `MIN`: olha o topo da pilha, que você já assegurou que é o elemento mínimo da pilha até o momento.

### C99
```c
#include <stdio.h>

int minimos[1000000];

int main(){
    char operacao[4];
    int N, V, minimo, p;

    p = -1;
    scanf("%d\n", &N);
    for(int i = 0; i < N; ++i){
    	scanf("%s", &operacao);

        if(!memcmp(operacao, "PUSH", 4)){
        	scanf("%d\n", &V);

            if(p == -1){
                minimo = V;
            }else{
                minimo = (minimos[p] < V ? minimos[p] : V);
            }

            minimos[++p] = minimo;
        }else if(!memcmp(operacao, "POP", 3)){
            if(p == -1){
            	printf("EMPTY\n");
            }else{
                --p;
            }
        }else{
            if(p == -1){
            	printf("EMPTY\n");
            }else{
            	printf("%d\n", minimos[p]);
            }
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <cstdio>
#include <stack>

using namespace std;

int main(){
    int N, V;
    string operacao;
    stack<int> minimos;
    
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    cin >> N;
    for(int i = 0; i < N; ++i){
        cin >> operacao;

        if(operacao == "PUSH"){
            cin >> V;

            if(minimos.empty()){
                minimos.push(V);
            }else{
            	minimos.push(min(minimos.top(), V));
            }
        }else if(operacao == "POP"){
            if(minimos.empty()){
                cout << "EMPTY" << endl;
            }else{
                minimos.pop();
            }
        }else{
            if(minimos.empty()){
                cout << "EMPTY" << endl;
            }else{
                cout << minimos.top() << endl;
            }
        }
    }

    return 0;
}
```