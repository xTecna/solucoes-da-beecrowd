#include <iostream>

using namespace std;

int main(){
    int N, LA, LB, SA, SB;

    cin >> N >> LA >> LB >> SA >> SB;

    if(LA <= N && N <= LB && SA <= N && N <= SB){
        cout << "possivel" << endl;
    }else{
        cout << "impossivel" << endl;
    }

    return 0;
}
