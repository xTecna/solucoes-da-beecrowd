#include <iostream>
#include <algorithm>
#include <vector>

using namespace std;

class UniaoBusca
{
    private:
    vector<int> P, ranking;
    
    public:
    UniaoBusca(int n){
        ranking.assign(n, 0);
        P.assign(n, 0);
        for(int i = 0; i < n; ++i){
            P[i] = i;
        }
    }
    
    int encontraConjunto(int i){
        if(P[i] == i){
            return i;
        }
        P[i] = encontraConjunto(P[i]);
        return P[i];
    }
    
    bool mesmoConjunto(int i, int j){
        return encontraConjunto(i) == encontraConjunto(j);
    }
    
    void uneConjuntos(int i, int j){
        if(!mesmoConjunto(i, j)){
            int x = encontraConjunto(i), y = encontraConjunto(j);
            if(ranking[x] > ranking[y]){
                P[y] = x;
            }else{
                P[x] = y;
                if(ranking[x] == ranking[y]){
                    ranking[y]++;
                }
            }
        }
    }
};

int Kruskal(vector<pair<int, pair<int, int>>> &grafo, int n, int m){
    int resposta = 0;
    sort(grafo.begin(), grafo.end());

    UniaoBusca ub = UniaoBusca(n);
    for(int i = 0; i < m; ++i){
        pair<int, pair<int, int>> atual = grafo[i];
        if(!ub.mesmoConjunto(atual.second.first, atual.second.second)){
            resposta += atual.first;
            ub.uneConjuntos(atual.second.first, atual.second.second);
        }
    }

    return resposta;
}

int main() {
    int n, m, u, v, p;
    vector<pair<int, pair<int, int>>> grafo;

    while(cin >> n >> m){
        if(n == 0 && m == 0){
            break;
        }

        grafo.assign(m, pair<int, pair<int, int>>(0, pair<int, int>(0, 0)));
        int resposta = 0;
        for(int i = 0; i < m; ++i){
            cin >> grafo[i].second.first >> grafo[i].second.second >> grafo[i].first;
            resposta += grafo[i].first;
        }

        resposta -= Kruskal(grafo, n, m);

        cout << resposta << endl;
    }

    return 0;
}