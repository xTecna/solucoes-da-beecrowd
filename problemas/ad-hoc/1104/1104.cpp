#include <algorithm>
#include <iostream>
#include <set>

using namespace std;

int main(){
    int A, B, carta;
    set<int> alice, beatriz, uniao;

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

        uniao.clear();
        set_union(alice.begin(), alice.end(), beatriz.begin(), beatriz.end(), inserter(uniao, uniao.end()));

        cout << min(uniao.size() - beatriz.size(), uniao.size() - alice.size()) << endl;
    }

    return 0;
}
