#include <iostream>

using namespace std;

int main(){
    int X[5], Y[5];
    bool compativel;

    for(int i = 0; i < 5; ++i){
        cin >> X[i];
    }
    for(int i = 0; i < 5; ++i){
        cin >> Y[i];
    }

    compativel = true;
    for(int i = 0; i < 5; ++i){
        if(X[i] == Y[i]){
            compativel = false;
            break;
        }
    }

    cout << (compativel ? 'Y' : 'N') << endl;

    return 0;
}
