#include <iostream>

using namespace std;

int sobrevivente(int n, int k){
    if(n == 1)  return 0;
    return (sobrevivente(n - 1, k) + k) % n;
}

int main(){
    int NC, n, k;

    cin >> NC;

    for(int i = 1; i <= NC; ++i){
        cin >> n >> k;

        cout << "Case " << i << ": " << sobrevivente(n, k) + 1 << endl;
    }

    return 0;
}
