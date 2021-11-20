#include <iostream>

using namespace std;

int main(){
    int Q, D, P, L;

    while(cin >> Q){
        if(!Q)  break;

        cin >> D >> P;

        L = (Q * D * P)/(P - Q);

        cout << L << " pagina";
        if(L > 1)   cout << "s";
        cout << endl;
    }

    return 0;
}
