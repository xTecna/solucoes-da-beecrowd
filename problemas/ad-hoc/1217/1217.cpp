#include <iostream>
#include <sstream>
#include <iomanip>
#include <vector>

using namespace std;

int main(){
    int N, frutas;
    stringstream fluxo;
    string linha, fruta;
    double V, pesoPorDia, gastoPorDia;

    cin >> N;

    pesoPorDia = 0.0;
    gastoPorDia = 0.0;

    for(int i = 1; i <= N; ++i){
        cin >> V;
        cin.ignore();
        getline(cin, linha);

        frutas = 0;
        fluxo.clear();
        fluxo << linha;
        while(fluxo >> fruta){
            ++frutas;
        }
        
        cout << "day " << i << ": " << frutas << " kg" << endl;

        pesoPorDia += frutas;
        gastoPorDia += V;
    }

    pesoPorDia /= N;
    gastoPorDia /= N;
    
    cout << setprecision(2) << fixed << pesoPorDia << " kg by day" << endl;
    cout << "R$ " << setprecision(2) << fixed << gastoPorDia << " by day" << endl;

    return 0;
}
