#include <iostream>

using namespace std;

int main(){
    int X1, Y1, X2, Y2;

    while(cin >> X1 >> Y1 >> X2 >> Y2){
        if(!X1 && !Y1 && !X2 && !Y2)    break;

        if(X1 == X2 && Y1 == Y2){
            cout << 0 << endl;
        }else if(X1 == X2 || Y1 == Y2 || abs(X1 - X2) == abs(Y1 - Y2)){
            cout << 1 << endl;
        }else{
            cout << 2 << endl;
        }
    }

    return 0;
}
