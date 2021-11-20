#include <iostream>
#include <map>

using namespace std;

int main(){
    int n, x;
    map<int, int> frequencias;

    cin >> n;

    for(int i = 0; i < n; ++i){
        cin >> x;

        if(frequencias.count(x))    ++frequencias[x];
        else                        frequencias[x] = 1;
    }

    for(map<int, int>::iterator it = frequencias.begin(); it != frequencias.end(); ++it){
        cout << it->first << " aparece " << it->second << " vez(es)" << endl;
    }

    return 0;
}
