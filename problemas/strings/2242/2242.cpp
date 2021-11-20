#include <iostream>

using namespace std;

bool vogal(char letra){
    switch(letra){
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':   return true;
        default:    return false;
    }
}

int main(){
    int n;
    bool engracada;
    string risada, soVogal;

    cin >> risada;

    soVogal = "";
    for(int i = 0; i < risada.length(); ++i){
        if(vogal(risada[i]))    soVogal += risada[i];
    }

    engracada = true;
    n = soVogal.length();
    for(int i = 0; i < n/2; ++i){
        if(soVogal[i] != soVogal[n - i - 1]){
            engracada = false;
            break;
        }
    }

    cout << (engracada ? 'S' : 'N') << endl;

    return 0;
}
