#include <stdio.h>
#include <stdlib.h>

struct UniaoBusca
{
    int n;
    int *P, *ranking;
};

void inicializa(struct UniaoBusca *UB, int n){
    UB->n = n;
    UB->P = (int*)malloc(n * sizeof(int));
    UB->ranking = (int*)malloc(n * sizeof(int));
    for(int i = 0; i < n; ++i){
        UB->P[i] = i;
    }
}

void destroi(struct UniaoBusca *UB){
    UB->n = 0;
    free(UB->P);
    free(UB->ranking);
}

int encontraConjunto(struct UniaoBusca *UB, int i){
    if(UB->P[i] == i){
        return i;
    }
    UB->P[i] = encontraConjunto(UB, UB->P[i]);
    return UB->P[i];
}

int mesmoConjunto(struct UniaoBusca *UB, int i, int j){
    return encontraConjunto(UB, i) == encontraConjunto(UB, j);
}

void uneConjuntos(struct UniaoBusca *UB, int i, int j){
    if (!mesmoConjunto(UB, i, j)){
        int x = encontraConjunto(UB, i), y = encontraConjunto(UB, j);
        if(UB->ranking[x] > UB->ranking[y]){
            UB->P[y] = x;
        }else{
            UB->P[x] = y;
            if(UB->ranking[x] == UB->ranking[y]){
                UB->ranking[y]++;
            }
        }
    }
}

struct Aresta
{
    int u, v, peso;
};

int comp(const void *a, const void *b){
    return ((const struct Aresta*)a)->peso - ((const struct Aresta*)b)->peso;
}

int Kruskal(struct Aresta *grafo, int n, int m){
    int i, resposta = 0;
    qsort(grafo, m, sizeof(struct Aresta), comp);

    struct UniaoBusca ub;
    inicializa(&ub, n);
    for(i = 0; i < m; ++i){
        struct Aresta atual = grafo[i];
        if(!mesmoConjunto(&ub, atual.u, atual.v)){
            resposta += atual.peso;
            uneConjuntos(&ub, atual.u, atual.v);
        }
    }
    destroi(&ub);

    return resposta;
}

int main() {
    int i, n, m, u, v, p;
    struct Aresta *grafo;

    while(scanf("%d %d\n", &n, &m) != EOF){
        if(n == 0 && m == 0){
            break;
        }
        
        struct Aresta *grafo = (struct Aresta *)malloc(m * sizeof(struct Aresta));

        int resposta = 0;
        for(i = 0; i < m; ++i){
            scanf("%d %d %d\n", &u, &v, &p);
            grafo[i].u = u;
            grafo[i].v = v;
            grafo[i].peso = p;
            resposta += grafo[i].peso;
        }
        resposta -= Kruskal(grafo, n, m);

        printf("%d\n", resposta);

        free(grafo);
    }

    return 0;
}