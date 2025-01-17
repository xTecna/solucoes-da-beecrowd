#include <iostream>
#include <cmath>

using namespace std;

int main(){
    int t, n, m;

    cin >> t;
    for(int i = 0; i < t; ++i){
        cin >> n >> m;
        int a = ceil((n - 2)/3.0);
        int b = ceil((m - 2)/3.0);
        cout << a * b << endl;
    }

    return 0;
}