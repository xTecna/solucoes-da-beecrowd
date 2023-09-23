#include <iostream>
#include <vector>
#include <queue>

using namespace std;

void visitaVertice(vector<bool> &visitados, vector<vector<pair<int, int>>> &grafo, priority_queue<pair<int, int>> &fila, int u){
    visitados[u] = true;

    for(int i = 0; i < grafo[u].size(); ++i){
        pair<int, int> aresta = grafo[u][i];
        if(!visitados[aresta.first]){
            fila.push(pair<int, int>(-aresta.second, aresta.first));
        }
    }
}

int Prim(vector<vector<pair<int, int>>> &grafo, int n){
    int resposta = 0;
    vector<bool> visitados = vector<bool>(n, false);
    priority_queue<pair<int, int>> fila;

    visitaVertice(visitados, grafo, fila, 0);

    while(!fila.empty()){
        pair<int, int> atual = fila.top();
        fila.pop();

        int peso = atual.first, v = atual.second;
        if(!visitados[v]){
            resposta -= peso;
            visitaVertice(visitados, grafo, fila, v);
        }
    }

    return resposta;
}

int main() {
    int n, m, u, v, p;
    vector<vector<pair<int, int>>> grafo;

    while(cin >> n >> m){
        if(n == 0 && m == 0){
            break;
        }

        grafo.assign(n, vector<pair<int, int>>());
        int resposta = 0;
        for(int i = 0; i < m; ++i){
            cin >> u >> v >> p;
            resposta += p;
            grafo[u].push_back(pair<int, int>(v, p));
            grafo[v].push_back(pair<int, int>(u, p));
        }

        resposta -= Prim(grafo, n);

        cout << resposta << endl;

        for(int i = 0; i < n; ++i){
            grafo[i].clear();
        }
        grafo.clear();
    }

    return 0;
}