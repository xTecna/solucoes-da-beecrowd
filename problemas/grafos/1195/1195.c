#include <stdio.h>
#include <stdlib.h>

struct No
{
    int valor;
    struct No *pai, *esq, *dir;
};

struct ArvoreBinaria
{
    struct No* topo;
};

void inicializaNo(struct No *no){
    no->valor = 0;
    no->pai = NULL;
    no->esq = NULL;
    no->dir = NULL;
}

void destroiNo(struct No *no){
    if(no == NULL){
        return;
    }
    no->valor = 0;
    no->pai = NULL;
    destroiNo(no->esq);
    destroiNo(no->dir);
    free(no);
}

void inicializaArvoreBinaria(struct ArvoreBinaria *ab){
    ab->topo = NULL;
}

void destroiArvoreBinaria(struct ArvoreBinaria *ab){
    destroiNo(ab->topo);
}

struct No* adicionaNo(struct No *no, int valor){
    if(no == NULL){
        no = (struct No*)malloc(sizeof(struct No));
        inicializaNo(no);
        no->valor = valor;
    }else{
        if(valor < no->valor){
            no->esq = adicionaNo(no->esq, valor);
            if(no->esq != NULL){
                no->esq->pai = no;
            }
        }else if(valor > no->valor){
            no->dir = adicionaNo(no->dir, valor);
            if(no->dir != NULL){
                no->dir->pai = no;
            }
        }
    }
    
    return no;
}

void adicionaArvoreBinaria(struct ArvoreBinaria *ab, int valor){
    ab->topo = adicionaNo(ab->topo, valor);
}

struct No* buscaNo(struct No *no, int valor){
    if(no == NULL){
        return NULL;
    }else if(valor < no->valor){
        return buscaNo(no->esq, valor);
    }else if(valor == no->valor){
        return no;
    }else{
        return buscaNo(no->dir, valor);
    }
}

int buscaArvoreBinaria(struct ArvoreBinaria *ab, int valor){
    return buscaNo(ab->topo, valor) != NULL;
}

void removeNo(struct No *no){
    if(no == NULL){
        return;
    }
    
    struct No* pai = no->pai;
    if(no->esq == NULL && no->dir == NULL){
        if(pai != NULL){
            if(pai->esq == no){
                pai->esq = NULL;
            }else{
                pai->dir = NULL;
            }
        }
        destroiNo(no);
    }else if(no->esq == NULL || no->dir == NULL){
        struct No *filho = no->esq != NULL ? no->esq : no->dir;
        if(pai != NULL){
            if(pai->esq == no){
                pai->esq = filho;
            }else{
                pai->dir = filho;
            }
        }
        destroiNo(no);
    }else{
        struct No* sucessor = no->dir;
        while(sucessor->esq != NULL){
            sucessor = sucessor->esq;
        }
        no->valor = sucessor->valor;
        removeNo(sucessor);
    }
}

void removeArvoreBinaria(struct ArvoreBinaria* ab, int valor){
    struct No* no = buscaNo(ab->topo, valor);

    if(no != NULL && no->pai == NULL){
        if(no->esq == NULL && no->dir == NULL){
            ab->topo = NULL;
        }else if(no->esq == NULL || no->dir == NULL){
            ab->topo = no->esq != NULL ? no->esq : no->dir;
        }
    }
    removeNo(no);
}

void prefixaNo(struct No* no){
    if(no == NULL){
        return;
    }

    printf(" %d", no->valor);
    prefixaNo(no->esq);
    prefixaNo(no->dir);
}

void prefixaArvoreBinaria(struct ArvoreBinaria* ab){
    printf("Pre.:");
    prefixaNo(ab->topo);
    printf("\n");
}

void infixaNo(struct No* no){
    if(no == NULL){
        return;
    }
    
    infixaNo(no->esq);
    printf(" %d", no->valor);
    infixaNo(no->dir);
}

void infixaArvoreBinaria(struct ArvoreBinaria* ab){
    printf("In..:");
    infixaNo(ab->topo);
    printf("\n");
}

void posfixaNo(struct No* no){
    if(no == NULL){
        return;
    }
    
    posfixaNo(no->esq);
    posfixaNo(no->dir);
    printf(" %d", no->valor);
}

void posfixaArvoreBinaria(struct ArvoreBinaria* ab){
    printf("Post:");
    posfixaNo(ab->topo);
    printf("\n");
}

int main()
{
    int i, k, C, N, x;
    struct ArvoreBinaria ab;
    
    scanf("%d\n", &C);
    for(k = 1; k <= C; ++k){
        scanf("%d\n", &N);
        
        inicializaArvoreBinaria(&ab);
        for(i = 0; i < N; ++i){
            scanf("%d", &x);
            adicionaArvoreBinaria(&ab, x);
        }
        
        printf("Case %d:\n", k);
        prefixaArvoreBinaria(&ab);
        infixaArvoreBinaria(&ab);
        posfixaArvoreBinaria(&ab);
        printf("\n");
        
        destroiArvoreBinaria(&ab);
    }

    return 0;
}
