#include <string.h>
#include <stdlib.h>
#include <stdio.h>

struct pilhaNo
{
    char valor;
    struct pilhaNo *abaixo;
};

struct pilha
{
    int tamanho;
    struct pilhaNo *topo;
};

void push(struct pilha *p, int valor)
{
    p->tamanho += 1;
    struct pilhaNo *novoTopo = (struct pilhaNo *)malloc(sizeof(struct pilhaNo));

    novoTopo->valor = valor;
    novoTopo->abaixo = p->topo;
    p->topo = novoTopo;
}

void pop(struct pilha *p)
{
    if (p->tamanho > 0)
    {
        p->tamanho -= 1;
        struct pilhaNo *velhoTopo = p->topo;
        p->topo = p->topo->abaixo;
        free(velhoTopo);
    }
}

char top(struct pilha *p)
{
    return p->topo->valor;
}

int size(struct pilha *p)
{
    return p->tamanho;
}

int empty(struct pilha *p)
{
    return p->tamanho == 0;
}

void inicializa(struct pilha *p)
{
    p->tamanho = 0;
    p->topo = NULL;
}

void destroi(struct pilha *p)
{
    while (!empty(p))
    {
        pop(p);
    }
}

int main()
{
    int i, tam;
    struct pilha p;
    char expressao[1001];

    while (scanf("%s\n", &expressao) != EOF)
    {
        inicializa(&p);
        tam = strlen(expressao);

        for (i = 0; i < tam; ++i)
        {
            if (expressao[i] == '(')
            {
                push(&p, '(');
            }
            else if (expressao[i] == ')')
            {
                if (empty(&p))
                    break;
                else
                    pop(&p);
            }
        }

        if (i == tam && empty(&p))
            printf("correct\n");
        else
            printf("incorrect\n");

        destroi(&p);
    }

    return 0;
}
