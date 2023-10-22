# 1340 - Eu Posso Adivinhar a Estrutura de Dados!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1340)

## Solução

Esse problema é bem legal porque você pode implementar as três estruturas de dados e ir simulando cada uma das operações em cada estrutura de cada vez. Se a operação 2 daria erro (importante prever antes de fazer a operação) ou não obtiver o elemento esperado pela entrada, então simplesmente paramos de interagir com aquela estrutura de dados específica.

Mesmo que tenhamos descartado todas as estruturas de dados da resposta, ainda precisamos ler a entrada até o final para não confundir casos de teste diferentes.

Confira as páginas de [pilha](../../../base-teorica/estruturas-e-bibliotecas/pilha/README.md), [fila](../../../base-teorica/estruturas-e-bibliotecas/fila/README.md) (uma generalização da fila) e [fila de prioridade](../../../base-teorica/estruturas-e-bibliotecas/fila-de-prioridade/README.md) para entender cada uma das estruturas de dados envolvidas nesse problema.

### C99
```c
#include <stdio.h>
#include <stdlib.h>

struct PilhaNo{
    int valor;
    struct PilhaNo* abaixo;
};

struct Pilha{
    int tamanho;
    struct PilhaNo* topo;
};

void pushPilha(struct Pilha* p, int valor){
    p->tamanho += 1;
    struct PilhaNo* novoTopo = (struct PilhaNo*) malloc(sizeof(struct PilhaNo));

    novoTopo->valor = valor;
    novoTopo->abaixo = p->topo;
    p->topo = novoTopo;
}

void popPilha(struct Pilha* p){
    if(p->tamanho > 0){
        p->tamanho -= 1;
        struct PilhaNo* velhoTopo = p->topo;
        p->topo = velhoTopo->abaixo;
        free(velhoTopo);
    }
}

int topPilha(struct Pilha* p){
    return p->topo->valor;
}

int sizePilha(struct Pilha* p){
    return p->tamanho;
}

int emptyPilha(struct Pilha* p){
    return p->tamanho == 0;
}

void inicializaPilha(struct Pilha* p){
    p->tamanho = 0;
    p->topo = NULL;
}

void destroiPilha(struct Pilha* p){
    while(!emptyPilha(p)){
        popPilha(p);
    }
}

struct FilaNo{
    int valor;
    struct FilaNo* proximo;
};

struct Fila{
    int tamanho;
    struct FilaNo *frente, *tras;
};

void pushFila(struct Fila* f, int valor){
    f->tamanho += 1;
    struct FilaNo* novoNo = (struct FilaNo*) malloc(sizeof(struct FilaNo));
    novoNo->valor = valor;
    novoNo->proximo = NULL;

    if(f->frente == NULL){
        f->frente = novoNo;
    }else{
        f->tras->proximo = novoNo;
    }
    f->tras = novoNo;
}

void popFila(struct Fila* f){
    if(f->tamanho > 0){
        f->tamanho -= 1;
        struct FilaNo* velhaFrente = f->frente;
        f->frente = velhaFrente->proximo;
        free(velhaFrente);
    }
}

int frontFila(struct Fila* f){
    return f->frente->valor;
}

int sizeFila(struct Fila* f){
    return f->tamanho;
}

int emptyFila(struct Fila* f){
    return f->tamanho == 0;
}

void inicializaFila(struct Fila* f){
    f->tamanho = 0;
    f->frente = NULL;
    f->tras = NULL;
}

void destroiFila(struct Fila* f){
    while(!emptyFila(f)){
        popFila(f);
    }
}

int comp(int a, int b){
    return a - b;
}

struct FilaDePrioridadeNo
{
    int valor;
    struct FilaDePrioridadeNo *pai, *esq, *dir;
};

struct FilaDePrioridade
{
    int tamanho;
    struct FilaDePrioridadeNo *topo, *ultimo;
};

void inicializaFilaDePrioridade(struct FilaDePrioridade *fp){
    fp->tamanho = 0;
    fp->topo = NULL;
    fp->ultimo = NULL;
}

void destroiFilaDePrioridadeNo(struct FilaDePrioridadeNo *fpn){
    if(fpn->esq != NULL){
        destroiFilaDePrioridadeNo(fpn->esq);
    }
    if(fpn->dir != NULL){
        destroiFilaDePrioridadeNo(fpn->dir);
    }
    free(fpn);
}

void destroiFilaDePrioridade(struct FilaDePrioridade *fp){
    fp->tamanho = 0;
    if(fp->topo != NULL){
        destroiFilaDePrioridadeNo(fp->topo);
    }
}

void corrigeSubindo(struct FilaDePrioridadeNo *fpn){
    if(fpn->pai == NULL){
        return;
    }
    
    struct FilaDePrioridadeNo *pai = fpn->pai;
    if(comp(pai->valor, fpn->valor) < 0){
        int temp = pai->valor;
        pai->valor = fpn->valor;
        fpn->valor = temp;
        corrigeSubindo(pai);
    }
}

void pushFilaDePrioridade(struct FilaDePrioridade *fp, int valor){
    fp->tamanho += 1;

    struct FilaDePrioridadeNo* novoNo = (struct FilaDePrioridadeNo*)malloc(sizeof(struct FilaDePrioridadeNo));
    novoNo->valor = valor;
    novoNo->esq = NULL;
    novoNo->dir = NULL;

    if(fp->topo == NULL){
    	novoNo->pai = NULL;
        fp->topo = novoNo;
    }else{
    	if(fp->ultimo->pai != NULL && fp->ultimo->pai->dir == NULL){
    		novoNo->pai = fp->ultimo->pai;
    		fp->ultimo->pai->dir = novoNo;
    	}else{
    		novoNo->pai = fp->ultimo;
    		fp->ultimo->esq = novoNo;
    	}
    }
    fp->ultimo = novoNo;
    
    corrigeSubindo(novoNo);
}

void corrigeDescendo(struct FilaDePrioridadeNo *fpn){
    if(fpn->esq != NULL){
        struct FilaDePrioridadeNo *esq = fpn->esq;
        if(comp(fpn->valor, esq->valor) < 0){
            int temp = fpn->valor;
            fpn->valor = esq->valor;
            esq->valor = temp;
            corrigeDescendo(esq);
        }
    }
    
    if(fpn->dir != NULL){
        struct FilaDePrioridadeNo *dir = fpn->dir;
        if(comp(fpn->valor, dir->valor) < 0){
            int temp = fpn->valor;
            fpn->valor = dir->valor;
            dir->valor = temp;
            corrigeDescendo(dir);
        }
    }
}

void popFilaDePrioridade(struct FilaDePrioridade *fp){
    if(fp->tamanho == 0){
        return;
    }
    
    fp->tamanho -= 1;
    
    struct FilaDePrioridadeNo* velhoUltimo = fp->ultimo;
	if(velhoUltimo == fp->topo){
		fp->topo = NULL;
	}else{
    	int temp = fp->topo->valor;
    	fp->topo->valor = velhoUltimo->valor;
    	velhoUltimo->valor = temp;
    	
    	if(velhoUltimo->pai != NULL && velhoUltimo->pai->esq != NULL && velhoUltimo->pai->esq != velhoUltimo){
    		velhoUltimo->pai->dir = NULL;
    		fp->ultimo = velhoUltimo->pai->esq;
    	}else{
    		if(velhoUltimo->pai != NULL){
    			velhoUltimo->pai->esq = NULL;
    		}
    		fp->ultimo = velhoUltimo->pai;
    	}
	}
    free(velhoUltimo);
    
    if(fp->topo != NULL){
    	corrigeDescendo(fp->topo);
    }
}

int topFilaDePrioridade(struct FilaDePrioridade *fp){
    return fp->topo->valor;
}

int emptyFilaDePrioridade(struct FilaDePrioridade *fp){
    return fp->tamanho == 0;
}

int main() {
    int i, n, opcao, elemento;
    struct Pilha p;
    struct Fila f;
    struct FilaDePrioridade fp;

    while(scanf("%d\n", &n) != EOF){
        inicializaPilha(&p);
        inicializaFila(&f);
        inicializaFilaDePrioridade(&fp);

        int pilha = 1, fila = 1, filaDePrioridade = 1;
        for(i = 0; i < n; ++i){
            scanf("%d %d\n", &opcao, &elemento);

            if(opcao == 1){
                if(pilha){
                    pushPilha(&p, elemento);
                }
                if(fila){
                    pushFila(&f, elemento);
                }
                if(filaDePrioridade){
                    pushFilaDePrioridade(&fp, elemento);
                }
            }else{
                if(pilha){
                    if(emptyPilha(&p) || topPilha(&p) != elemento){
                        pilha = 0;
                    }else{
                        popPilha(&p);
                    }
                }
                if(fila){
                    if(emptyFila(&f) || frontFila(&f) != elemento){
                        fila = 0;
                    }else{
                        popFila(&f);
                    }
                }
                if(filaDePrioridade){
                    if(emptyFilaDePrioridade(&fp) || topFilaDePrioridade(&fp) != elemento){
                        filaDePrioridade = 0;
                    }else{
                        popFilaDePrioridade(&fp);
                    }
                }
            }
        }

        if(pilha + fila + filaDePrioridade > 1){
            printf("not sure\n");
        }else if(pilha){
            printf("stack\n");
        }else if(fila){
            printf("queue\n");
        }else if(filaDePrioridade){
            printf("priority queue\n");
        }else{
            printf("impossible\n");
        }

    	destroiPilha(&p);
        destroiFila(&f);
        destroiFilaDePrioridade(&fp);
    }

    return 0;
}
```

### C++20
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

### C#
```cs
using System;
using System.Collections.Generic;

class FilaDePrioridade {
    private List<Tuple<int, int>> arvore;

    public FilaDePrioridade(){
        this.arvore = new List<Tuple<int, int>>();
        this.arvore.Add(new Tuple<int, int>(0, 0));
    }

    private int pai(int i){
        return i/2;
    }

    private int filhoEsquerdo(int i){
        return 2*i;
    }

    private int filhoDireito(int i){
        return 2*i + 1;
    }

    private int comp(Tuple<int, int> a, Tuple<int, int> b){
        return a.Item2 - b.Item2;
    }

    private void corrigeSubindo(int indice){
        if(indice == 1){
            return;
        }

        int acima = this.pai(indice);
        if(this.comp(this.arvore[acima], this.arvore[indice]) < 0){
            Tuple<int, int> temp = this.arvore[acima];
            this.arvore[acima] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeSubindo(acima);
        }
    }

    public void push(Tuple<int, int> valor){
        this.arvore.Add(valor);
        this.corrigeSubindo(this.arvore.Count - 1);
    }

    private void corrigeDescendo(int indice){
        int abaixo = this.filhoEsquerdo(indice);
        if(abaixo >= this.arvore.Count){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            Tuple<int, int> temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }

        abaixo = this.filhoDireito(indice);
        if(abaixo >= this.arvore.Count){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            Tuple<int, int> temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }
    }

    public void pop(){
        if(this.arvore.Count <= 1){
            return;
        }

        Tuple<int, int> temp = this.arvore[1];
        this.arvore[1] = this.arvore[this.arvore.Count - 1];
        this.arvore[this.arvore.Count - 1] = temp;
        this.arvore.RemoveAt(this.arvore.Count - 1);
        this.corrigeDescendo(1);
    }

    public Tuple<int, int> top(){
        return this.arvore[1];
    }

    public bool empty(){
        return this.arvore.Count == 1;
    }
}

class URI {
    static void Main(string[] args) {
    	string entrada;
    	
    	while((entrada = Console.ReadLine()) != null){
    		int n = int.Parse(entrada);
    		
    		Stack<int> pilha = new Stack<int>();
    		Queue<int> fila = new Queue<int>();
    		FilaDePrioridade filaDePrioridade = new FilaDePrioridade();
    		bool p = true, f = true, fp = true;
    		for(int i = 0; i < n; ++i){
    			string[] partes = Console.ReadLine().Trim().Split(' ');
    			int elemento = int.Parse(partes[1]);
    			if(partes[0] == "1"){
    				if(p){
    					pilha.Push(elemento);
    				}
    				if(f){
    					fila.Enqueue(elemento);
    				}
    				if(fp){
    					filaDePrioridade.push(new Tuple<int, int>(elemento, elemento));
    				}
    			}else{
    				if(p){
    					if(pilha.Count == 0 || pilha.Peek() != elemento){
    						p = false;
    					}else{
    						pilha.Pop();
    					}
    				}
    				if(f){
    					if(fila.Count == 0 || fila.Peek() != elemento){
    						f = false;
    					}else{
    						fila.Dequeue();
    					}
    				}
    				if(fp){
    					if(filaDePrioridade.empty() || filaDePrioridade.top().Item1 != elemento){
    						fp = false;
    					}else{
    						filaDePrioridade.pop();
    					}
    				}
    			}
    		}
    		
    		if(p && !f && !fp){
    			Console.WriteLine("stack");
    		}else if(!p && f && !fp){
    			Console.WriteLine("queue");
    		}else if(!p && !f && fp){
    			Console.WriteLine("priority queue");
    		}else if(!p && !f && !fp){
    			Console.WriteLine("impossible");
    		}else{
    			Console.WriteLine("not sure");
    		}
    	}
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Stack;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int n = Integer.parseInt(in.readLine());

            Stack<Integer> pilha = new Stack<Integer>();
            Queue<Integer> fila = new LinkedList<Integer>();
            PriorityQueue<Integer> filaDePrioridade = new PriorityQueue<Integer>();
            boolean p = true, f = true, fp = true;
            for(int i = 0; i < n; ++i){
                String[] partes = in.readLine().trim().split(" ");

                int elemento = Integer.parseInt(partes[1]);
                if(partes[0].equals("1")){
                    if(p){
                        pilha.push(elemento);
                    }
                    if(f){
                        fila.add(elemento);
                    }
                    if(fp){
                        filaDePrioridade.add(-elemento);
                    }
                }else{
                    if(p){
                        if(pilha.empty() || pilha.peek() != elemento){
                            p = false;
                        }else{
                            pilha.pop();
                        }
                    }
                    if(f){
                        if(fila.isEmpty() || fila.peek() != elemento){
                            f = false;
                        }else{
                            fila.remove();
                        }
                    }
                    if(fp){
                        if(filaDePrioridade.isEmpty() || filaDePrioridade.peek() != -elemento){
                            fp = false;
                        }else{
                            filaDePrioridade.remove();
                        }
                    }
                }
            }

            if(p && !f && !fp){
                System.out.println("stack");
            }else if(!p && f && !fp){
                System.out.println("queue");
            }else if(!p && !f && fp){
                System.out.println("priority queue");
            }else if(!p && !f && !fp){
                System.out.println("impossible");
            }else{
                System.out.println("not sure");
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

class Pilha {
    constructor() {
        this.pilha = [];
    }

    push(valor) {
        this.pilha.push(valor);
    }

    pop() {
        this.pilha.pop();
    }

    top() {
        return this.pilha[this.pilha.length - 1];
    }

    size() {
        return this.pilha.length;
    }

    empty() {
        return this.pilha.length === 0;
    }
}

class FilaNo {
    constructor(valor) {
        this.valor = valor;
        this.proximo = null;
    }
}

class Fila {
    constructor() {
        this.tamanho = 0;
        this.frente = null;
        this.tras = null;
    }

    push(valor) {
        this.tamanho += 1;
        let novoNo = new FilaNo(valor);
        if(this.frente === null){
            this.frente = novoNo;
        }else{
            this.tras.proximo = novoNo;
        }
        this.tras = novoNo;
    }

    pop() {
        this.tamanho -= 1;
        this.frente = this.frente.proximo;
    }

    front() {
        return this.frente.valor;
    }

    size() {
        return this.tamanho;
    }

    empty() {
        return this.tamanho === 0;
    }
}

class FilaDePrioridade {
    constructor() {
        this.arvore = [[0, 0]];
    }

    pai(i) {
        return Math.floor(i/2);
    }

    filhoEsquerdo(i){
        return 2*i;
    }

    filhoDireito(i){
        return 2*i + 1;
    }

    comp(a, b){
        return a[1] - b[1];
    }

    corrigeSubindo(indice){
        if(indice === 1){
            return;
        }

        let acima = this.pai(indice);
        if(this.comp(this.arvore[acima], this.arvore[indice]) < 0){
            let temp = this.arvore[acima];
            this.arvore[acima] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeSubindo(acima);
        }
    }

    push(valor){
        this.arvore.push(valor);
        this.corrigeSubindo(this.arvore.length - 1);
    }

    corrigeDescendo(indice){
        let abaixo = this.filhoEsquerdo(indice);
        if(abaixo >= this.arvore.length){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            let temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }

        abaixo = this.filhoDireito(indice);
        if(abaixo >= this.arvore.length){
            return;
        }
        if(this.comp(this.arvore[indice], this.arvore[abaixo]) < 0){
            let temp = this.arvore[abaixo];
            this.arvore[abaixo] = this.arvore[indice];
            this.arvore[indice] = temp;
            this.corrigeDescendo(abaixo);
        }
    }

    pop(){
        if(this.arvore.length <= 1){
            return;
        }

        let temp = this.arvore[1];
        this.arvore[1] = this.arvore[this.arvore.length - 1];
        this.arvore[this.arvore.length - 1] = temp;
        this.arvore.pop();
        this.corrigeDescendo(1);
    }

    top(){
        return this.arvore[1];
    }

    empty(){
        return this.arvore.length === 1;
    }
}

while(lines.length){
    let n = parseInt(lines.shift().trim());

    let pilha = new Pilha();
    let fila = new Fila();
    let filaDePrioridade = new FilaDePrioridade();
    let [p, f, fp] = [true, true, true];
    for(let i = 0; i < n; ++i){
        let [opcao, elemento] = lines.shift().trim().split(' ').map(x => parseInt(x));

        if(opcao === 1){
            if(p){
                pilha.push(elemento);
            }
            if(f){
                fila.push(elemento);
            }
            if(fp){
                filaDePrioridade.push([elemento, elemento]);
            }
        }else{
            if(p){
                if(pilha.empty() || pilha.top() !== elemento){
                    p = false;
                }else{
                    pilha.pop();
                }
            }
            if(f){
                if(fila.empty() || fila.front() !== elemento){
                    f = false;
                }else{
                    fila.pop();
                }
            }
            if(fp){
                if(filaDePrioridade.empty() || filaDePrioridade.top()[1] !== elemento){
                    fp = false;
                }else{
                    filaDePrioridade.pop();
                }
            }
        }
    }

    if(p && !f && !fp){
        console.log("stack");
    }else if(!p && f && !fp){
        console.log("queue");
    }else if(!p && !f && fp){
        console.log("priority queue");
    }else if(!p && !f && !fp){
        console.log("impossible");
    }else{
        console.log("not sure");
    } 
}
```

### Python 3.9
```py
import collections
import queue

while True:
    try:
        n = int(input())

        pilha = collections.deque()
        fila = collections.deque()
        filaDePrioridade = queue.PriorityQueue()
        [p, f, fp] = [True, True, True]
        for _ in range(n):
            [opcao, elemento] = [int(x) for x in input().strip().split(' ')]

            if opcao == 1:
                if p:
                    pilha.append(elemento)
                if f:
                    fila.append(elemento)
                if fp:
                    filaDePrioridade.put(-elemento)
            else:
                if p:
                    if len(pilha) == 0 or pilha[-1] != elemento:
                        p = False
                    else:
                        pilha.pop()
                if f:
                    if len(fila) == 0 or fila[0] != elemento:
                        f = False
                    else:
                        fila.popleft()
                if fp and (filaDePrioridade.empty() or filaDePrioridade.get() != -elemento):
                        fp = False

        if p and not f and not fp:
            print('stack')
        elif not p and f and not fp:
            print('queue')
        elif not p and not f and fp:
            print('priority queue')
        elif not p and not f and not fp:
            print('impossible')
        else:
            print('not sure')
    except EOFError:
        break
```