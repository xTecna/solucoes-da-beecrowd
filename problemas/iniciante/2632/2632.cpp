#include <iostream>
#include <map>

using namespace std;

map<string, int> dano;
map<string, map<int, int>> raio;

void inicializa()
{
    dano["fire"] = 200;
    raio["fire"] = map<int, int>();
    raio["fire"][1] = 20;
    raio["fire"][2] = 30;
    raio["fire"][3] = 50;

    dano["water"] = 300;
    raio["water"] = map<int, int>();
    raio["water"][1] = 10;
    raio["water"][2] = 25;
    raio["water"][3] = 40;

    dano["earth"] = 400;
    raio["earth"] = map<int, int>();
    raio["earth"][1] = 25;
    raio["earth"][2] = 55;
    raio["earth"][3] = 70;

    dano["air"] = 100;
    raio["air"] = map<int, int>();
    raio["air"][1] = 18;
    raio["air"][2] = 38;
    raio["air"][3] = 60;
}

bool dentro(int x1, int y1, int x2, int y2, int xc, int yc, int r)
{
    int xm = max(x1, min(xc, x2));
    int ym = max(y1, min(yc, y2));

    return ((xm - xc) * (xm - xc) + (ym - yc) * (ym - yc)) <= r * r;
}

int resolve(string magia, int nivel, int x1, int y1, int x2, int y2, int xc, int yc)
{
    if (dentro(x1, y1, x2, y2, xc, yc, raio[magia][nivel]))
        return dano[magia];

    return 0;
}

int main()
{
    string magia;
    int T, w, h, x0, y0, N, cx, cy;

    inicializa();

    cin >> T;

    for (int i = 0; i < T; ++i)
    {
        cin >> w >> h >> x0 >> y0;
        cin >> magia >> N >> cx >> cy;

        cout << resolve(magia, N, x0, y0, x0 + w, y0 + h, cx, cy) << endl;
    }

    return 0;
}