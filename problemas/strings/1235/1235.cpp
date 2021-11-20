#include <algorithm>
#include <iostream>

using namespace std;

int main(){
    int N;
    string frase;

    cin >> N;
    cin.ignore();

    for(int i = 0; i < N; ++i){
        getline(cin, frase);

        reverse(frase.begin(), frase.begin() + frase.length()/2);
        reverse(frase.begin() + frase.length()/2, frase.end());

        cout << frase << endl;
    }

    return 0;
}
