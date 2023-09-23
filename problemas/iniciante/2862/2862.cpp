#include <iostream>

using namespace std;

int main() {
    int C, N;

    cin >> C;
    for(int i = 0; i < C; ++i){
        cin >> N;

        if(N > 8000){
            cout << "Mais de 8000!" << endl;
        }else{
            cout << "Inseto!" << endl;
        }
    }

    return 0;
}