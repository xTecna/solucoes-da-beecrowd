#include <string.h>
#include <stdlib.h>
#include <stdio.h>

struct TrieNo
{
    int qtd;
    int maxPalavra;

    struct TrieNo *prox[26];
};

struct Trie
{
    struct TrieNo *raiz;
};

int max(int a, int b)
{
    return a > b ? a : b;
}

void inicializaNo(struct TrieNo *no)
{
    no->qtd = 0;
    no->maxPalavra = 0;
    for (int i = 0; i < 26; ++i)
    {
        no->prox[i] = NULL;
    }
}

void inicializa(struct Trie *t)
{
    t->raiz = (struct TrieNo *)malloc(sizeof(struct TrieNo));
    inicializaNo(t->raiz);
}

void destroiNo(struct TrieNo *no)
{
    for (int i = 0; i < 26; ++i)
    {
        if (no->prox[i] != NULL)
        {
            destroiNo(no->prox[i]);
        }
    }
    free(no);
}

void destroi(struct Trie *t)
{
    destroiNo(t->raiz);
}

void adicionaPalavra(struct Trie *t, char *palavra)
{
    struct TrieNo *no = t->raiz;
    int n = strlen(palavra);
    for (int i = 0; i < n; ++i)
    {
        int indice = palavra[i] - 'a';
        if (no->prox[indice] == NULL)
        {
            no->prox[indice] = (struct TrieNo *)malloc(sizeof(struct TrieNo));
            inicializaNo(no->prox[indice]);
        }
        no = no->prox[indice];
        no->qtd += 1;
        no->maxPalavra = max(no->maxPalavra, n);
    }
}

struct TrieNo *consultaPalavra(struct Trie *t, char *palavra)
{
    struct TrieNo *no = t->raiz;
    for (int i = 0; i < strlen(palavra); ++i)
    {
        int indice = palavra[i] - 'a';
        if (no->prox[indice] == NULL)
        {
            return NULL;
        }
        no = no->prox[indice];
    }

    return no;
}

int main()
{
    int N, Q;
    struct Trie *trie;
    char palavra[101];

    while (scanf("%d\n", &N) != EOF)
    {
        inicializa(&trie);

        for (int i = 0; i < N; ++i)
        {
            scanf("%s\n", &palavra);
            adicionaPalavra(&trie, palavra);
        }

        scanf("%d\n", &Q);
        for (int i = 0; i < Q; ++i)
        {
            scanf("%s\n", &palavra);
            struct TrieNo *p = consultaPalavra(&trie, palavra);

            if (p == NULL)
            {
                printf("-1\n");
            }
            else
            {
                printf("%d %d\n", p->qtd, p->maxPalavra);
            }
        }

        destroi(&trie);
    }

    return 0;
}