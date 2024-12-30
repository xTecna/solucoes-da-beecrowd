#include <iostream>

using namespace std;

int main(){
    int N;

    while(cin >> N){
        int asteriscos = 1;
        int espacos = N/2;
        while(espacos >= 0){
            for(int i = 0; i < espacos; ++i){
                cout << ' ';
            }
            for(int i = 0; i < asteriscos; ++i){
                cout << '*';
            }
            cout << endl;
            espacos -= 1;
            asteriscos += 2;
        }
        espacos = N/2;
        for(int i = 0; i < espacos; ++i){
            cout << ' ';
        }
        cout << '*' << endl;
        espacos -= 1;
        for(int i = 0; i < espacos; ++i){
            cout << ' ';
        }
        for(int i = 0; i < 3; ++i){
            cout << '*';
        }
        cout << endl << endl;
    }

    return 0;
}