#include <stdio.h>
#include <stdlib.h>

struct ListaNo{
    int chave, valor;
    struct ListaNo *anterior, *proximo;
};

void inicializaListaNo(struct ListaNo *ln){
    ln->chave = 0;
    ln->valor = 0;
    ln->anterior = NULL;
    ln->proximo = NULL;
}

void destroiListaNo(struct ListaNo *ln){
    ln->chave = 0;
    ln->valor = 0;
    ln->anterior = NULL;
    ln->proximo = NULL;
}

struct ListaEncadeada{
    struct ListaNo *comeco, *final;
};

void inicializaListaEncadeada(struct ListaEncadeada *le){
    le->comeco = NULL;
    le->final = NULL;
}

void destroiListaEncadeada(struct ListaEncadeada *le){
    struct ListaNo *no = le->comeco;
    while(no != NULL){
        struct ListaNo *removido = no;
        no = no->proximo;
        destroiListaNo(removido);
        free(removido);
    }
    le->comeco = NULL;
    le->final = NULL;
}

void adicionaListaEncadeada(struct ListaEncadeada *le, int chave, int valor){
    struct ListaNo *no = (struct ListaNo *)malloc(sizeof(struct ListaNo));
    inicializaListaNo(no);
    no->chave = chave;
    no->valor = valor;

    if(le->comeco == NULL){
        le->comeco = no;
        le->final = no;
    }else{
        no->anterior = le->final;
        le->final->proximo = no;
        le->final = no;
    }
}

struct Grafo
{
    struct ListaEncadeada *arestas;
};

void inicializaGrafo(struct Grafo *g, int n){
    int i;
    g->arestas = (struct ListaNo *)malloc(n * sizeof(struct ListaEncadeada));
    for(i = 0; i < n; ++i){
        inicializaListaEncadeada(&(g->arestas[i]));
    }
}

void destroiGrafo(struct Grafo *g, int n){
    int i;
    for(i = 0; i < n; ++i){
        destroiListaEncadeada(&(g->arestas[i]));
    }
    free(g->arestas);
}

void adicionaAresta(struct Grafo *g, int u, int v, int peso){
    adicionaListaEncadeada(&(g->arestas[u]), v, peso);
    adicionaListaEncadeada(&(g->arestas[v]), u, peso);
}

struct Aresta
{
    int u, v, peso;
};

int comp(struct Aresta a, struct Aresta b){
    return b.peso - a.peso;
}

struct FilaDePrioridade
{
    int tamanho;
    struct Aresta *arvore;
};

void inicializaFilaDePrioridade(struct FilaDePrioridade *fp, int capacidade){
    fp->tamanho = 0;
    fp->arvore = (struct Aresta*)malloc(capacidade * sizeof(struct Aresta));
}

void destroiFilaDePrioridade(struct FilaDePrioridade *fp){
    fp->tamanho = 0;
    free(fp->arvore);
}

int pai(int i){
    return i/2;
}

int filhoEsquerdo(int i){
    return 2*i;
}

int filhoDireito(int i){
    return 2*i + 1;
}

void corrigeSubindo(struct FilaDePrioridade *fp, int indice){
    if(indice == 1){
        return;
    }
    
    int acima = pai(indice);
    if(comp(fp->arvore[acima], fp->arvore[indice]) < 0){
        struct Aresta temp = fp->arvore[acima];
        fp->arvore[acima] = fp->arvore[indice];
        fp->arvore[indice] = temp;
        corrigeSubindo(fp, acima);
    }
}

void push(struct FilaDePrioridade *fp, struct Aresta valor){
    fp->tamanho += 1;
    fp->arvore[fp->tamanho] = valor;
    corrigeSubindo(fp, fp->tamanho);
}

void corrigeDescendo(struct FilaDePrioridade *fp, int indice){
    int abaixo = filhoEsquerdo(indice);
    if(abaixo > fp->tamanho){
        return;
    }
    if(comp(fp->arvore[indice], fp->arvore[abaixo]) < 0){
        struct Aresta temp = fp->arvore[abaixo];
        fp->arvore[abaixo] = fp->arvore[indice];
        fp->arvore[indice] = temp;
        corrigeDescendo(fp, abaixo);
    }
    
    abaixo = filhoDireito(indice);
    if(abaixo > fp->tamanho){
        return;
    }
    if(comp(fp->arvore[indice], fp->arvore[abaixo]) < 0){
        struct Aresta temp = fp->arvore[abaixo];
        fp->arvore[abaixo] = fp->arvore[indice];
        fp->arvore[indice] = temp;
        corrigeDescendo(fp, abaixo);
    }
}

void pop(struct FilaDePrioridade *fp){
    if(fp->tamanho == 0){
        return;
    }
    
    struct Aresta temp = fp->arvore[1];
    fp->arvore[1] = fp->arvore[fp->tamanho];
    fp->arvore[fp->tamanho] = temp;
    fp->tamanho -= 1;
    
    corrigeDescendo(fp, 1);
}

struct Aresta top(struct FilaDePrioridade *fp){
    return fp->arvore[1];
}

int empty(struct FilaDePrioridade *fp){
    return fp->tamanho == 0;
}

void visitaVertice(int *visitados, struct Grafo *g, struct FilaDePrioridade *fp, int u){
    visitados[u] = 1;

    struct ListaNo *no = g->arestas[u].comeco;
    while(no != NULL){
        int v = no->chave, peso = no->valor;
        if(!visitados[v]){
            struct Aresta aresta;
            aresta.u = u;
            aresta.v = v;
            aresta.peso = peso;
            push(fp, aresta);
        }
        no = no->proximo;
    }
}

int Prim(struct Grafo *g, int n, int m){
    int i;
    int *visitados = (int*)malloc(n * sizeof(int));
    for(i = 0; i < n; ++i){
        visitados[i] = 0;
    }
    struct FilaDePrioridade fp;
    inicializaFilaDePrioridade(&fp, m);

    visitaVertice(visitados, g, &fp, 0);

    int resposta = 0;
    while(!empty(&fp)){
        struct Aresta atual = top(&fp);
        pop(&fp);
        int u = atual.u, v = atual.v, peso = atual.peso;
        if(!visitados[v]){
            resposta += peso;
            visitaVertice(visitados, g, &fp, v);
        }
    }

    destroiFilaDePrioridade(&fp);
    free(visitados);

    return resposta;
}

int main() {
    int n, m, u, v, peso;
    struct Grafo grafo;

    while(scanf("%d %d\n", &n, &m) != EOF){
        if(n == 0 && m == 0){
            break;
        }

        int resposta = 0;
        inicializaGrafo(&grafo, n);
        for(int i = 0; i < m; ++i){
            scanf("%d %d %d\n", &u, &v, &peso);
            adicionaAresta(&grafo, u, v, peso);
            resposta += peso;
        }

        resposta -= Prim(&grafo, n, m);

        printf("%d\n", resposta);

        destroiGrafo(&grafo, n);
    }

    return 0;
}