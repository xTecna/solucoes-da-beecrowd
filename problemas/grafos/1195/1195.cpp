#include <iostream>

using namespace std;

class No
{
    private:
    int valor;

    public:
    No *pai, *esq, *dir;

    No(int valor, No *pai){
        this->valor = valor;
        this->pai = pai;
        this->esq = NULL;
        this->dir = NULL;
    }

    void adiciona(int valor){
        if(valor < this->valor){
            if(this->esq == NULL){
                this->esq = new No(valor, this);
            }else{
                this->esq->adiciona(valor);
            }
        }else if(valor > this->valor){
            if(this->dir == NULL){
                this->dir = new No(valor, this);
            }else{
                this->dir->adiciona(valor);
            }
        }
    }

    No* busca(int valor){
        if(this->valor == valor){
            return this;
        }
        if(valor < this->valor){
            if(this->esq == NULL){
                return NULL;
            }else{
                return this->esq->busca(valor);
            }
        }else{
            if(this->dir == NULL){
                return NULL;
            }else{
                return this->dir->busca(valor);
            }
        }
    }

    void remove(){
        if(this->esq == NULL && this->dir == NULL){
            if(this->pai != NULL){
                if(this->pai->esq == this){
                    this->pai->esq = NULL;
                }else{
                    this->pai->dir = NULL;
                }
            }
            delete this;
        }else if(this->esq == NULL || this->dir == NULL){
            No *filho = this->esq != NULL ? this->esq : this->dir;
            if(this->pai != NULL){
                if(this->pai->esq == this){
                    this->pai->esq = filho;
                }else{
                    this->pai->dir = filho;
                }
            }
            delete this;
        }else{
            No *sucessor = this->dir;
            while(sucessor->esq != NULL){
                sucessor = sucessor->esq;
            }
            this->valor = sucessor->valor;
            sucessor->remove();
        }
    }

    void prefixa(){
        cout << " " << this->valor;
        if(this->esq != NULL){
            this->esq->prefixa();
        }
        if(this->dir != NULL){
            this->dir->prefixa();
        }
    }

    void infixa(){
        if(this->esq != NULL){
            this->esq->infixa();
        }
        cout << " " << this->valor;
        if(this->dir != NULL){
            this->dir->infixa();
        }
    }

    void posfixa(){
        if(this->esq != NULL){
            this->esq->posfixa();
        }
        if(this->dir != NULL){
            this->dir->posfixa();
        }
        cout << " " << this->valor;
    }
};

class ArvoreBinaria
{
    private:
    No *topo;

    public:
    ArvoreBinaria(){
        this->topo = NULL;
    }

    void adiciona(int valor){
        if(this->topo == NULL){
            this->topo = new No(valor, NULL);
        }else{
            this->topo->adiciona(valor);
        }
    }

    bool busca(int valor){
        if(this->topo == NULL){
            return false;
        }
        return this->topo->busca(valor) != NULL;
    }

    void remove(int valor){
        No *no = this->topo->busca(valor);

        if(no != NULL && no->pai == NULL){
            if(no->esq == NULL && no->dir == NULL){
                this->topo = NULL;
            }else if(no->esq == NULL || no->dir == NULL){
                this->topo = no->esq != NULL ? no->esq : no->dir;
            }
        }
        if(no != NULL){
            no->remove();
        }
    }

    void prefixa(){
        if(this->topo != NULL){
            cout << "Pre.:";
            this->topo->prefixa();
            cout << endl;
        }
    }

    void infixa(){
        if(this->topo != NULL){
            cout << "In..:";
            this->topo->infixa();
            cout << endl;
        }
    }

    void posfixa(){
        if(this->topo != NULL){
            cout << "Post:";
            this->topo->posfixa();
            cout << endl;
        }
    }
};

int main() {
    int C, N, x;

    cin >> C;
    for(int k = 1; k <= C; ++k){
        cin >> N;
        
        ArvoreBinaria ab = ArvoreBinaria();
        for(int i = 0; i < N; ++i){
            cin >> x;
            ab.adiciona(x);
        }

        cout << "Case " << k << ":" << endl;
        ab.prefixa();
        ab.infixa();
        ab.posfixa();
        cout << endl;
    }

    return 0;
}