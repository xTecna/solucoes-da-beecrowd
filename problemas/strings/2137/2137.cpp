#include <algorithm>
#include <iostream>

using namespace std;

int main(){
    int N;
    string livros[1001];

    while(cin >> N){
        for(int i = 0; i < N; ++i){
            cin >> livros[i];
        }

        sort(livros, livros + N);

        for(int i = 0; i < N; ++i){
            cout << livros[i] << endl;
        }
    }

    return 0;
}
