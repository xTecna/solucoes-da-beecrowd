#include <iostream>

using namespace std;

int main(){
    int P1, C1, P2, C2, diferenca;

    cin >> P1 >> C1 >> P2 >> C2;

    diferenca = P2 * C2 - P1 * C1;

    if(diferenca < 0){
        cout << -1 << endl;
    }else if(diferenca > 0){
        cout << 1 << endl;
    }else{
        cout << 0 << endl;
    }

    return 0;
}
