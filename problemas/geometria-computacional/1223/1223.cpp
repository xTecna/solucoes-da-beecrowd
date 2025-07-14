#include <iostream>
#include <iomanip>
#include <vector>
#include <cmath>

using namespace std;

class Ponto
{
public:
    double x, y;

    Ponto()
    {
        this->x = 0;
        this->y = 0;
    }

    Ponto(double x, double y)
    {
        this->x = x;
        this->y = y;
    }
};

class Reta
{
public:
    double m, b;
    Ponto p1, p2;

    Reta()
    {
        this->m = 0;
        this->b = 0;
        this->p1 = Ponto();
        this->p2 = Ponto();
    }

    Reta(double m, double b, Ponto p1, Ponto p2)
    {
        this->m = m;
        this->b = b;
        this->p1 = p1;
        this->p2 = p2;
    }

    Reta(Ponto p1, Ponto p2)
    {
        this->m = (p1.y - p2.y) / (p1.x - p2.x);
        this->b = p1.y - m * p1.x;
        this->p1 = p1;
        this->p2 = p2;
    }

    Reta perpendicular(Ponto p)
    {
        double m = -1 / this->m;
        return Reta(m, p.y - m * p.x, p, p);
    }
};

Ponto interseccao(Reta r1, Reta r2)
{
    double x = (r2.b - r1.b) / (r1.m - r2.m);
    return Ponto(x, r1.m * x + r1.b);
}

double distancia(Ponto p1, Ponto p2)
{
    return sqrt((p1.x - p2.x) * (p1.x - p2.x) + (p1.y - p2.y) * (p1.y - p2.y));
}

double distanciaPontoReta(Ponto p, Reta r, bool esquerda)
{
    Reta perp = r.perpendicular(p);
    Ponto inter = interseccao(r, perp);

    if (esquerda && inter.x >= r.p2.x && inter.y >= r.p2.y)
    {
        return distancia(inter, p);
    }
    if (!esquerda && inter.x <= r.p2.x && inter.y >= r.p2.y)
    {
        return distancia(inter, p);
    }

    return min(distancia(r.p1, p), distancia(r.p2, p));
}

int main()
{
    Ponto p1, p2;
    double resposta;
    vector<Reta> aletas;
    int N, largura, altura;

    while (cin >> N)
    {
        resposta = 1000.0;
        aletas.assign(N, Reta());

        cin >> largura >> altura;

        for (int i = 0; i < N; ++i)
        {
            cin >> p1.y >> p2.x >> p2.y;

            p1.x = i % 2 ? largura : 0;
            aletas[i] = Reta(p1, p2);
        }

        for (int i = 0; i < N - 1; ++i)
        {
            Reta reta = aletas[i];

            if (i % 2)
                resposta = min(resposta, reta.p2.x);
            else
                resposta = min(resposta, largura - reta.p2.x);

            resposta = min(resposta, distanciaPontoReta(reta.p2, aletas[i + 1], !(i % 2)));
        }

        if ((N - 1) % 2)
            resposta = min(resposta, aletas[N - 1].p2.x);
        else
            resposta = min(resposta, largura - aletas[N - 1].p2.x);

        cout << setprecision(2) << fixed << resposta << endl;
    }

    return 0;
}