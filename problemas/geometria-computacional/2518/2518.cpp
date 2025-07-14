#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

double area(int degraus, int altura, int comprimento, int largura){
    double alturaRampa = degraus * sqrt(altura * altura + comprimento * comprimento);
    return (alturaRampa * largura)/10000.0;
}

int main(){
    int N, H, C, L;

    while(cin >> N){
        cin >> H >> C >> L;
        cout << setprecision(4) << fixed << area(N, H, C, L) << endl;
    }

    return 0;
}