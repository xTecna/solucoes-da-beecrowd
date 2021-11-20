#include <iostream>
#include <stack>

using namespace std;

int main()
{
    int i, tam;
    string expressao;
    stack<char> pilha;

    while (cin >> expressao)
    {
        while (!pilha.empty())
        {
            pilha.pop();
        }
        tam = expressao.length();

        for (i = 0; i < tam; ++i)
        {
            if (expressao[i] == '(')
            {
                pilha.push('(');
            }
            else if (expressao[i] == ')')
            {
                if (pilha.empty())
                    break;
                else
                    pilha.pop();
            }
        }

        if (i == tam && pilha.empty())
            cout << "correct" << endl;
        else
            cout << "incorrect" << endl;
    }

    return 0;
}
