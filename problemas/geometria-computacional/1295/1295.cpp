#include <algorithm>
#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

class Ponto{
    public:
    double x;
    double y;

    Ponto(){
        this->x = 0.0;
        this->y = 0.0;
    }

    Ponto(double x, double y){
        this->x = x;
        this->y = y;
    }
};

bool compX(Ponto p1, Ponto p2){
    if(p1.x == p2.x)    return p1.y < p2.y;
    else                return p1.x < p2.x;
}

double distancia(Ponto p1, Ponto p2){
    return sqrt((p1.x - p2.x) * (p1.x - p2.x) + (p1.y - p2.y) * (p1.y - p2.y));
}

double ParMaisProximoPequeno(Ponto* P, int n){
    double minDist = 10000.0;
    for(int i = 0; i < n; ++i){
        for(int j = i + 1; j < n; ++j){
            double dist = distancia(P[i], P[j]);
            if(dist < minDist){
                minDist = dist;
            }
        }
    }
    return minDist;
}

double ParMaisProximoRec(Ponto* P, int n){
    if(n <= 3){
        return ParMaisProximoPequeno(P, n);
    }

    int meio = n/2;
    Ponto pontoMeio = P[meio];

    double distEsq = ParMaisProximoRec(P, meio);
    double distDir = ParMaisProximoRec(P + meio, n - meio);

    double d = min(distEsq, distDir);
    
    Ponto meiao[n];
    int j = 0;
    for(int i = 0; i < n; ++i){
        if(abs(P[i].x - pontoMeio.x) < d){
            meiao[j++] = P[i];
        }
    }

    return min(d, ParMaisProximoPequeno(meiao, j));
}

double ParMaisProximo(Ponto* P, int n){
    sort(P, P + n, compX);
    return ParMaisProximoRec(P, n);
}

int main(){
    int N;
    Ponto* P;
    double X, Y;

    while(cin >> N){
        if(!N)  break;

        P = new Ponto[N];

        for(int i = 0;i < N; ++i){
            cin >> X >> Y;
            P[i] = Ponto(X, Y);
        }

        double resposta = ParMaisProximo(P, N);
        if(resposta > 9999.9999){
            cout << "INFINITY" << endl;
        }else{
            cout << setprecision(4) << fixed << resposta << endl;
        }
    }

    return 0;
}