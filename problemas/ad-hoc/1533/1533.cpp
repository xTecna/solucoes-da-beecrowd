#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

bool comp(pair<int, int> a, pair<int, int> b){
    return a.first > b.first;
}

int main(){
    int N;
    vector<pair<int, int> > suspeitos;

    while(cin >> N){
        if(!N)  break;

        suspeitos.assign(N, pair<int, int>());
        for(int i = 0; i < N; ++i){
            cin >> suspeitos[i].first;
            suspeitos[i].second = i + 1;
        }

        sort(suspeitos.begin(), suspeitos.end(), comp);

        cout << suspeitos[1].second << endl;
    }

    return 0;
}
