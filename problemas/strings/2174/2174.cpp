#include <iostream>
#include <set>

using namespace std;

int main(){
    int N;
    string S;
    set<string> pomekons;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> S;
        
        pomekons.insert(S);
    }

    cout << "Falta(m) " << 151 - pomekons.size() << " pomekon(s)." << endl;

    return 0;
}
