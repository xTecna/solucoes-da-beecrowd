#include <iostream>
#include <stack>

using namespace std;

int main()
{
    string expressao;
    stack<char> pilha;
    int N, tam, resposta;

    cin >> N;

    for (int k = 0; k < N; ++k)
    {
        while (!pilha.empty())
        {
            pilha.pop();
        }

        cin >> expressao;

        resposta = 0;
        tam = expressao.length();
        for (int i = 0; i < tam; ++i)
        {
            if (expressao[i] == '<')
            {
                pilha.push('<');
            }
            else if (expressao[i] == '>' && !pilha.empty())
            {
                ++resposta;
                pilha.pop();
            }
        }

        cout << resposta << endl;
    }

    return 0;
}
