#include <cmath>
#include <iomanip>
#include <iostream>
using namespace std;

int main() {
    double m1, m2, m3, s, t;
    
    while(cin >> m1 >> m2 >> m3){
        s = (m1 + m2 + m3)/2;
        
        if (s > 0 && m1 < s && m2 < s && m3 < s){
            t = (4.0/3.0) * sqrt(s * (s - m1) * (s - m2) * (s - m3));
        }else{
            t = -1;
        }
        
        cout << fixed << setprecision(3) << t << endl;
    }
    
    return 0;
}