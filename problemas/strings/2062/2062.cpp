#include <iostream>

using namespace std;

int main(){
    int N;
    string palavra;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> palavra;

        if(i)   cout << ' ';
        if(palavra.length() == 3){
            if(palavra[0] == 'O' && palavra[1] == 'B')
                cout << "OBI";
            else if(palavra[0] == 'U' && palavra[1] == 'R')
                cout << "URI";
            else
                cout << palavra;
        }else{
            cout << palavra;
        }
    }
    cout << endl;

    return 0;
}
