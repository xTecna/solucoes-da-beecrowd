# 1340 - Eu Posso Adivinhar a Estrutura de Dados!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1340)

## Solução

Esse problema é bem legal porque você pode implementar as três estruturas de dados e ir simulando cada uma das operações em cada estrutura de cada vez. Se a operação 2 daria erro (importante prever antes de fazer a operação) ou não obtiver o elemento esperado pela entrada, então simplesmente paramos de interagir com aquela estrutura de dados específica.

Mesmo que tenhamos descartado todas as estruturas de dados da resposta, ainda precisamos ler a entrada até o final para não confundir casos de teste diferentes.

> O heap implementado na biblioteca em Python ordena do menor para o maior elemento. Logo, tivemos que colocar os elementos com valor negativo para que a ordem fosse a mesma pedida no enunciado.

### C++17
```cpp
#include <iostream>
#include <stack>
#include <queue>

using namespace std;

int main()
{
    bool p, f, fp;
    queue<int> fila;
    stack<int> pilha;
    int n, operacao, numero;
    priority_queue<int> filaPrioridade;

    while (cin >> n)
    {
        while (!pilha.empty())
            pilha.pop();
        while (!fila.empty())
            fila.pop();
        while (!filaPrioridade.empty())
            filaPrioridade.pop();

        p = true, f = true, fp = true;
        for (int i = 0; i < n; ++i)
        {
            cin >> operacao >> numero;

            if (operacao == 1)
            {
                if (p)
                    pilha.push(numero);
                if (f)
                    fila.push(numero);
                if (fp)
                    filaPrioridade.push(numero);
            }
            else
            {
                if (p)
                {
                    if (pilha.empty() || pilha.top() != numero)
                        p = false;
                    else
                        pilha.pop();
                }

                if (f)
                {
                    if (fila.empty() || fila.front() != numero)
                        f = false;
                    else
                        fila.pop();
                }

                if (fp)
                {
                    if (filaPrioridade.empty() || filaPrioridade.top() != numero)
                        fp = false;
                    else
                        filaPrioridade.pop();
                }
            }
        }

        if (p && !f && !fp)
            cout << "stack" << endl;
        else if (!p && f && !fp)
            cout << "queue" << endl;
        else if (!p && !f && fp)
            cout << "priority queue" << endl;
        else if (!p && !f && !fp)
            cout << "impossible" << endl;
        else
            cout << "not sure" << endl;
    }

    return 0;
}
```

### Python 3.9
```python
from collections import deque
import heapq

while True:
    try:
        n = int(input())

        pilha = deque()
        fila = deque()
        filaPrioridade = []

        p, f, fp = True, True, True
        for _ in range(n):
            operacao, numero = [int(x) for x in input().strip().split(' ')]

            if(operacao == 1):
                if(p):
                    pilha.append(numero)
                if(f):
                    fila.append(numero)
                if(fp):
                    heapq.heappush(filaPrioridade, -numero)
            else:
                if(p and (len(pilha) == 0 or pilha.pop() != numero)):
                    p = False
                if(f and (len(fila) == 0 or fila.popleft() != numero)):
                    f = False
                if(fp and (len(filaPrioridade) == 0 or -heapq.heappop(filaPrioridade) != numero)):
                    fp = False

        if(p and not f and not fp):
            print('stack')
        elif(not p and f and not fp):
            print('queue')
        elif(not p and not f and fp):
            print('priority queue')
        elif(not p and not f and not fp):
            print('impossible')
        else:
            print('not sure')
    except EOFError:
        break

```