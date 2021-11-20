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

void push(struct pilha *p, char valor)
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
    struct pilha p;
    int N, tam, resposta;
    char expressao[1001];

    scanf("%d\n", &N);

    for (int k = 0; k < N; ++k)
    {
        scanf("%s\n", &expressao);

        resposta = 0;
        inicializa(&p);
        tam = strlen(expressao);

        for (int i = 0; i < tam; ++i)
        {
            if (expressao[i] == '<')
            {
                push(&p, '<');
            }
            else if (expressao[i] == '>')
            {
                if (!empty(&p))
                {
                    ++resposta;
                    pop(&p);
                }
            }
        }

        printf("%d\n", resposta);

        destroi(&p);
    }

    return 0;
}
