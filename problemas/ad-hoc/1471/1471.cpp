#include <iostream>
#include <set>

using namespace std;

int main(){
    int N, R, x;
    set<int> naoSobreviventes;

    while(cin >> N >> R){
        for(int i = 1; i <= N; ++i){
            naoSobreviventes.insert(i);
        }

        for(int i = 0; i < R; ++i){
            cin >> x;
            naoSobreviventes.erase(x);
        }

        if(naoSobreviventes.size() == 0){
            cout << '*' << endl;
        }else{
            for(set<int>::iterator it = naoSobreviventes.begin(); it != naoSobreviventes.end(); ++it){
                cout << *it << ' ';
            }
            cout << endl;
        }
    }

    return 0;
}
