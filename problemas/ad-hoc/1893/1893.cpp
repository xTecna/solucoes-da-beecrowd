#include <iostream>

using namespace std;

int main(){
    int ontem, hoje;

    cin >> ontem >> hoje;

    if(hoje < 3)            cout << "nova" << endl;
    else if(hoje > 96)      cout << "cheia" << endl;
    else if(ontem > hoje)   cout << "minguante" << endl;
    else                    cout << "crescente" << endl;

    return 0;
}
