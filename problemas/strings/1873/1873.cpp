#include <iostream>

using namespace std;

int main(){
    int C;
    string rajesh, sheldon;

    cin >> C;
    for(int i = 0; i < C; ++i){
        cin >> rajesh >> sheldon;

        if(rajesh == sheldon){
            cout << "empate" << endl;
        }else if(rajesh == "pedra"){
            if(sheldon == "tesoura" || sheldon == "lagarto")
                cout << "rajesh" << endl;
            else
                cout << "sheldon" << endl;
        }else if(rajesh == "papel"){
            if(sheldon == "pedra" || sheldon == "spock")
                cout << "rajesh" << endl;
            else
                cout << "sheldon" << endl;
        }else if(rajesh == "tesoura"){
            if(sheldon == "papel" || sheldon == "lagarto")
                cout << "rajesh" << endl;
            else
                cout << "sheldon" << endl;
        }else if(rajesh == "lagarto"){
            if(sheldon == "papel" || sheldon == "spock")
                cout << "rajesh" << endl;
            else
                cout << "sheldon" << endl;
        }else if(sheldon == "pedra" || sheldon == "tesoura")
            cout << "rajesh" << endl;
        else
            cout << "sheldon" << endl;
    }

    return 0;
}
