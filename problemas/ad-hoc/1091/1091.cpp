#include <iostream>

using namespace std;

int main(){
    int K, N, M, X, Y;

    while(cin >> K){
        if(!K)  break;

        cin >> N >> M;

        for(int i = 0; i < K; ++i){
            cin >> X >> Y;

            X -= N, Y -= M;

            if(X > 0){
                if(Y > 0)       cout << "NE" << endl;
                else if(Y < 0)  cout << "SE" << endl;
                else            cout << "divisa" << endl;
            }else if(X < 0){
                if(Y > 0)       cout << "NO" << endl;
                else if(Y < 0)  cout << "SO" << endl;
                else            cout << "divisa" << endl;
            }else               cout << "divisa" << endl;
        }
    }

    return 0;
}
