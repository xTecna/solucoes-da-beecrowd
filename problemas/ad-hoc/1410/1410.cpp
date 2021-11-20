#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main(){
    int A, D;
    vector<int> atacantes;
    vector<int> defensores;

    while(cin >> A >> D){
        if(!A && !D)    break;
        
        atacantes.assign(A, 0);
        defensores.assign(D, 0);

        for(int i = 0; i < A; ++i){
            cin >> atacantes[i];
        }
        for(int i = 0; i < D; ++i){
            cin >> defensores[i];
        }

        sort(atacantes.begin(), atacantes.end());
        sort(defensores.begin(), defensores.end());

        cout << (char) (atacantes[0] < defensores[1] ? 'Y' : 'N') << endl;
    }

    return 0;
}
