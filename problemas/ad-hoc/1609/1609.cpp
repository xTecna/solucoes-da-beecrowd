#include <iostream>
#include <set>

using namespace std;

int main(){
    set<int> distintos;
    int T, N, carneirinho;

    cin >> T;

    for(int i = 0; i < T; ++i){
        cin >> N;

        distintos.clear();

        for(int j = 0; j < N; ++j){
            cin >> carneirinho;
            distintos.insert(carneirinho);
        }

        cout << distintos.size() << endl;
    }

    return 0;
}
