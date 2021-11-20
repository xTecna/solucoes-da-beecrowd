#include <iostream>
#include <cstring>
#include <cmath>

using namespace std;

int main(){
    char L;
    int N, M, pares;
    int sapatos[61][2];

    while(cin >> N){
        memset(sapatos, 0, sizeof(sapatos));

        for(int i = 0; i < N; ++i){
            cin >> M >> L;

            ++sapatos[M][L == 'E'];
        }

        pares = 0;
        for(int i = 30; i < 61; ++i){
            pares += min(sapatos[i][0], sapatos[i][1]);
        }

        cout << pares << endl;
    }

    return 0;
}
