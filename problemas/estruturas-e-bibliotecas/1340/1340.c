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