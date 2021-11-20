#include <iostream>

using namespace std;

int main(){
    int N;
    string antes, depois;

    cin >> N >> antes >> depois;
    N %= 2;
    if(!N){
        if(antes == depois){
            cout << "Deletion succeeded" << endl;
        }else{
            cout << "Deletion failed" << endl;
        }
    }else{
        int i;
        for(i = 0; i < antes.length(); ++i){
            if(antes[i] == depois[i]){
                cout << "Deletion failed" << endl;
                break;
            }
        }
        if(i == antes.length()) cout << "Deletion succeeded" << endl;
    }

    return 0;
}
