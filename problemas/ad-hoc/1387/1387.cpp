#include <iostream>

using namespace std;

int main(){
    int filhos, filhas;

    while(cin >> filhos >> filhas){
        if (!filhos && !filhas) break;

        cout << filhos + filhas << endl;
    }

    return 0;
}