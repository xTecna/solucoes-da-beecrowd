#include <algorithm>
#include <iostream>
#include <set>

using namespace std;

int main(){
    int A, B, carta;
    set<int> alice, beatriz, ambas;

    while(cin >> A >> B){
        if(!A && !B)    break;

        alice.clear();
        for(int i = 0; i < A; ++i){
            cin >> carta;
            alice.insert(carta);
        }

        beatriz.clear();
        for(int i = 0; i < B; ++i){
            cin >> carta;
            beatriz.insert(carta);
        }

        ambas.clear();
        set_union(alice.begin(), alice.end(), beatriz.begin(), beatriz.end(), inserter(ambas, ambas.end()));

        cout << min(ambas.size() - beatriz.size(), ambas.size() - alice.size()) << endl;
    }

    return 0;
}