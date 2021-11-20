#include <stdlib.h>
#include <stdio.h>

struct ListaNo
{
    int valor;
    struct ListaNo *prox;
};

struct ListaEncadeada
{
    struct ListaNo *lista;
};

struct TabelaHash
{
    int n;
    struct ListaEncadeada *tabela;
};

void inicializaLista(struct ListaEncadeada *l)
{
    l->lista = NULL;
}

void destroiNo(struct ListaNo *p)
{
    if (p->prox != NULL)
    {
        destroiNo(p->prox);
    }

    free(p);
}

void destroiLista(struct ListaEncadeada *l)
{
    if (l->lista != NULL)
    {
        destroiNo(l->lista);
    }
}

struct ListaNo *adicionaNo(struct ListaNo *p, int valor)
{
    if (p == NULL)
    {
        struct ListaNo *novo = (struct ListaNo *)malloc(sizeof(struct ListaNo));
        novo->valor = valor;
        novo->prox = NULL;

        return novo;
    }
    else
    {
        p->prox = adicionaNo(p->prox, valor);
        return p;
    }
}

void adicionaElemento(struct ListaEncadeada *l, int valor)
{
    if (l == NULL)
    {
        l = (struct ListaEncadeada *)malloc(sizeof(struct ListaEncadeada));
    }

    l->lista = adicionaNo(l->lista, valor);
}

void imprimeLista(struct ListaEncadeada *l)
{
    if (l != NULL)
    {
        struct ListaNo *p = l->lista;

        while (p != NULL)
        {
            printf("%d -> ", p->valor);
            p = p->prox;
        }
    }

    printf("\\\n");
}

void inicializaTabelaHash(struct TabelaHash *tabela, int n)
{
    tabela->n = n;
    tabela->tabela = (struct ListaEncadeada *)malloc(n * sizeof(struct ListaEncadeada));

    for (int i = 0; i < n; ++i)
    {
        inicializaLista(&(tabela->tabela[i]));
    }
}

void destroiTabelaHash(struct TabelaHash *tabela)
{
    for (int i = 0; i < tabela->n; ++i)
    {
        destroiLista(&(tabela->tabela[i]));
    }

    tabela->n = 0;
    free(tabela->tabela);
}

int funcaoHash(struct TabelaHash *tabela, int valor)
{
    return valor % tabela->n;
}

void adicionaElementoTabela(struct TabelaHash *tabela, int valor)
{
    int indice = funcaoHash(tabela, valor);
    adicionaElemento(&(tabela->tabela[indice]), valor);
}

void imprimeTabelaHash(struct TabelaHash *tabela)
{
    for (int i = 0; i < tabela->n; ++i)
    {
        printf("%d -> ", i);
        imprimeLista(&(tabela->tabela[i]));
    }
}

int main()
{
    int N, M, C, numero;
    struct TabelaHash th;

    scanf("%d", &N);

    for (int k = 0; k < N; ++k)
    {
        if (k)
            printf("\n");

        scanf("%d %d", &M, &C);

        inicializaTabelaHash(&th, M);

        for (int i = 0; i < C; ++i)
        {
            scanf("%d", &numero);

            adicionaElementoTabela(&th, numero);
        }

        imprimeTabelaHash(&th);

        destroiTabelaHash(&th);
    }

    return 0;
}
