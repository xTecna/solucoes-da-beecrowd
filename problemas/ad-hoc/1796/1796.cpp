#include <iostream>

using namespace std;

int main(){
    int Q, V, satisfatorio;

    satisfatorio = 0;
    cin >> Q;
    for(int i = 0; i < Q; ++i){
        cin >> V;
        if(!V)  ++satisfatorio;
    }

    cout << (char) (satisfatorio > Q/2 ? 'Y': 'N') << endl;

    return 0;
}
