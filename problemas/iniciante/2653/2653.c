#include <string.h>
#include <stdio.h>

struct TrieNo
{
    int fim;

    struct TrieNo *prox[2];
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
    no->fim = 0;
    for (int i = 0; i < 2; ++i)
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
    for (int i = 0; i < 2; ++i)
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
        int indice = palavra[i] - '(';
        if (no->prox[indice] == NULL)
        {
            no->prox[indice] = (struct TrieNo *)malloc(sizeof(struct TrieNo));
            inicializaNo(no->prox[indice]);
        }
        no = no->prox[indice];
    }
    no->fim = 1;
}

struct TrieNo *consultaPalavra(struct Trie *t, char *palavra)
{
    struct TrieNo *no = t->raiz;
    for (int i = 0; i < strlen(palavra); ++i)
    {
        int indice = palavra[i] - '(';
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
    int resposta;
    struct Trie trie;
    char joia[100001];

    resposta = 0;
    inicializa(&trie);
    while (scanf("%s\n", &joia) != EOF)
    {
        struct TrieNo *no = consultaPalavra(&trie, joia);
        if (no == NULL || !(no->fim))
        {
            ++resposta;
            adicionaPalavra(&trie, joia);
        }
    }

    printf("%d\n", resposta);

    return 0;
}