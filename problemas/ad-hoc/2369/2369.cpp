#include <iostream>

using namespace std;

int main(){
    int N, resposta;

    cin >> N;
    if(N > 100){
        cout << (N - 100) * 5 + 167 << endl;
    }else if (N > 30){
        cout << (N - 30) * 2  + 27 << endl;
    }else if (N > 10){
        cout << N - 3 << endl;
    }else{
        cout << 7 << endl;
    }

    return 0;
}