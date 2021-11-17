int precedencia(char operador)
{
    switch (operador)
    {
    case '+':
    case '-':
        return 1;
    case '*':
    case '/':
        return 2;
    }
}

struct pilha p;
char expressao[301];

inicializa(&p);

tam = strlen(expressao);
for (int i = 0; i < strlen(expressao); ++i)
{
    if (isalpha(expressao[i]) || isdigit(expressao[i]))
    {
        printf("%c", expressao[i]);
    }
    else if (expressao[i] == '(' || expressao[i] == '^')
    {
        push(&p, expressao[i]);
    }
    else if (expressao[i] == ')')
    {
        while (!empty(&p) && top(&p) != '(')
        {
            printf("%c", top(&p));
            pop(&p);
        }

        if (!empty(&p))
            pop(&p);
    }
    else
    {
        while (!empty(&p) && top(&p) != '(' && precedencia(expressao[i]) <= precedencia(top(&p)))
        {
            printf("%c", top(&p));
            pop(&p);
        }

        push(&p, expressao[i]);
    }
}

while (!empty(&p))
{
    printf("%c", top(&p));
    pop(&p);
}
printf("\n");