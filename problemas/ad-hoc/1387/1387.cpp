#include <iostream>

using namespace std;

int main(){
    int L, R;

    while(cin >> L >> R){
        if(!L && !R)    break;

        cout << L + R << endl;
    }

    return 0;
}
