#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    bool first;
    int N, maior;
    string linhas[51];

    first = true;
    while(cin >> N){
        if(!N)  break;

        if(first)   first = false;
        else        cout << endl;

        maior = 0;
        for(int i = 0; i < N; ++i){
            cin >> linhas[i];
            maior = maior < linhas[i].length() ? linhas[i].length() : maior;
        }

        for(int i = 0; i < N; ++i){
            cout << setw(maior) << setfill(' ') << right << linhas[i] << endl;
        }
    }

    return 0;
}
