#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    string nome;
    int media, pessoas, distancia;

    media = 0, pessoas = 0;
    while(getline(cin, nome)){
        cin >> distancia;
        cin.ignore();

        media += distancia;
        ++pessoas;
    }

    cout << setprecision(1) << fixed << (double) media/pessoas << endl;

    return 0;
}
