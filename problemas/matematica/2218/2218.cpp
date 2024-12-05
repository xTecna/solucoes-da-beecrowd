#include <iostream>
#include <cstring>

using namespace std;

int T[50001];

int calcula(int n){
    if(!T[n]){
        T[n] = calcula(n - 1) + n;
    }
    return T[n];
}

int main(){
    int n, m;

    memset(T, 0, sizeof(T));
    T[1] = 2;
    cin >> n;

    for(int i = 0; i < n; ++i){
        cin >> m;
        cout << calcula(m) << endl;
    }

    return 0;
}