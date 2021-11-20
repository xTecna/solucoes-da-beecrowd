#include <stdlib.h>
#include <stdio.h>

struct dequeNo
{
    int valor;
    struct dequeNo *anterior, *proximo;
};

struct deque
{
    int tamanho;
    struct dequeNo *frente, *tras;
};

void push_front(struct deque *d, int valor)
{
    d->tamanho += 1;
    struct dequeNo *novaFrente = (struct dequeNo *)malloc(sizeof(struct dequeNo));

    novaFrente->valor = valor;
    novaFrente->proximo = d->frente;
    if (d->frente != NULL)
        d->frente->anterior = novaFrente;
    d->frente = novaFrente;
    if (d->tras == NULL)
        d->tras = d->frente;
}

void push_back(struct deque *d, int valor)
{
    d->tamanho += 1;
    struct dequeNo *novoTras = (struct dequeNo *)malloc(sizeof(struct dequeNo));

    novoTras->valor = valor;
    novoTras->anterior = d->tras;
    if (d->tras != NULL)
        d->tras->proximo = novoTras;
    d->tras = novoTras;
    if (d->frente == NULL)
        d->frente = d->tras;
}

void pop_front(struct deque *d)
{
    if (d->tamanho > 0)
    {
        d->tamanho -= 1;
        struct dequeNo *velhaFrente = d->frente;
        d->frente = d->frente->proximo;
        free(velhaFrente);
    }
}

void pop_back(struct deque *d)
{
    if (d->tamanho > 0)
    {
        d->tamanho -= 1;
        struct dequeNo *velhoTras = d->tras;
        d->tras = d->tras->anterior;
        free(velhoTras);
    }
}

int front(struct deque *d)
{
    return d->frente->valor;
}

int back(struct deque *d)
{
    return d->tras->valor;
}

int size(struct deque *d)
{
    return d->tamanho;
}

int empty(struct deque *d)
{
    return d->tamanho == 0;
}

void inicializa(struct deque *d)
{
    d->tamanho = 0;
    d->frente = NULL;
    d->tras = NULL;
}

void destroi(struct deque *d)
{
    while (!empty(d))
    {
        pop_front(d);
    }
}

int main()
{
    int n, first;
    struct deque cartas;

    while (scanf("%d", &n))
    {
        if (!n)
            break;

        inicializa(&cartas);

        for (int i = 1; i <= n; ++i)
        {
            push_back(&cartas, i);
        }

        first = 1;
        printf("Discarded cards: ");
        while (size(&cartas) > 1)
        {
            if (!first)
                printf(", ");
            else
                first = 0;

            printf("%d", front(&cartas));

            pop_front(&cartas);
            push_back(&cartas, front(&cartas));
            pop_front(&cartas);
        }
        printf("\nRemaining card: %d\n", front(&cartas));

        destroi(&cartas);
    }

    return 0;
}
