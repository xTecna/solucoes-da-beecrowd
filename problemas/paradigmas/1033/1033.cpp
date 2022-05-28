#include <iostream>
#include <vector>

using namespace std;

int b;

class Matriz
{
public:
    int n, m;
    vector<vector<int>> M;

    Matriz(int n, int m)
    {
        M.assign(n, vector<int>(m, 0));
        this->n = n;
        this->m = m;
    }

    const Matriz operator*(const Matriz &outra)
    {
        Matriz resposta = Matriz(this->m, outra.n);

        for (int i = 0; i < this->n; ++i)
        {
            for (int j = 0; j < outra.m; ++j)
            {
                for (int k = 0; k < this->m; ++k)
                {
                    resposta.M[i][j] += this->M[i][k] * outra.M[k][j];
                    resposta.M[i][j] %= b;
                }
            }
        }

        return resposta;
    }
};

Matriz potencia(Matriz base, int expoente)
{
    if (expoente == 1)
    {
        return base;
    }
    else if (expoente % 2)
    {
        return base * potencia(base, expoente - 1);
    }
    else
    {
        Matriz pot = potencia(base, expoente / 2);
        return pot * pot;
    }
}

int main()
{
    int T, n;

    T = 0;
    while (cin >> n >> b)
    {
        if (n == 0 && b == 0)
        {
            break;
        }

        Matriz A = Matriz(3, 3);
        A.M[0][0] = 1;
        A.M[0][1] = 1;
        A.M[0][2] = 1;
        A.M[1][0] = 1;
        A.M[1][1] = 0;
        A.M[1][2] = 0;
        A.M[2][0] = 0;
        A.M[2][1] = 0;
        A.M[2][2] = 1;

        Matriz B = Matriz(3, 1);
        B.M[0][0] = 1;
        B.M[1][0] = 1;
        B.M[2][0] = 1;

        cout << "Case " << ++T << ": " << n << " " << b << " ";
        if (n < 2)
        {
            cout << 1 << endl;
        }
        else
        {
            Matriz An1 = potencia(A, n - 1);
            Matriz R = An1 * B;

            cout << R.M[0][0] << endl;
        }
    }

    return 0;
}