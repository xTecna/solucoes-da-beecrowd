#include <iostream>

using namespace std;

int main(){
    int N;
    string A, B;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> A >> B;

        if(B.length() > A.length()) cout << "nao encaixa" << endl;
        else{
            A = A.substr(A.length() - B.length());
            if(A == B)              cout << "encaixa" << endl;
            else                    cout << "nao encaixa" << endl;
        }
    }

    return 0;
}
