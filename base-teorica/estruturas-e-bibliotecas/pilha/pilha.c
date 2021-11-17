struct pilhaNo
{
    int valor;
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

int top(struct pilha *p)
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