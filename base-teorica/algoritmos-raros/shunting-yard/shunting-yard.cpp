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

string expressao;
stack<char> pilha;

tam = expressao.length();
for (int i = 0; i < tam; ++i)
{
    if (isalpha(expressao[i]) || isdigit(expressao[i]))
    {
        cout << expressao[i];
    }
    else if (expressao[i] == '(' || expressao[i] == '^')
    {
        pilha.push(expressao[i]);
    }
    else if (expressao[i] == ')')
    {
        while (!pilha.empty() && pilha.top() != '(')
        {
            cout << pilha.top();
            pilha.pop();
        }

        if (!pilha.empty())
            pilha.pop();
    }
    else
    {
        while (!pilha.empty() && pilha.top() != '(' && precedencia(expressao[i]) <= precedencia(pilha.top()))
        {
            cout << pilha.top();
            pilha.pop();
        }

        pilha.push(expressao[i]);
    }
}

while (!pilha.empty())
{
    cout << pilha.top();
    pilha.pop();
}
cout << endl;