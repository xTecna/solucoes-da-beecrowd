#include <iostream>

using namespace std;

int main(){
    string alfabeto;
    int N, deslocamento;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> alfabeto >> deslocamento;

        for(int j = 0; j < alfabeto.length(); ++j){
            alfabeto[j] = ((alfabeto[j] - 'A' - deslocamento + 26) % 26) + 'A';
        }

        cout << alfabeto << endl;
    }

    return 0;
}
