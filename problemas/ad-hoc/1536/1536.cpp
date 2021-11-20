#include <iostream>

using namespace std;

int main(){
    char x;
    int N, M1, M2, V1, V2;

    cin >> N;
    for(int i = 0; i < N; ++i){
        cin >> M1 >> x >> V2;
        cin >> M2 >> x >> V1;

        if(M1 + V1 == M2 + V2){
            if(V1 == V2)            cout << "Penaltis" << endl;
            else if(V1 > V2)        cout << "Time 1" << endl;
            else                    cout << "Time 2" << endl;
        }else if(M1 + V1 > M2 + V2) cout << "Time 1" << endl;
        else                        cout << "Time 2" << endl;
    }

    return 0;
}
