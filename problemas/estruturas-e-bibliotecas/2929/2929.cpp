#include <iostream>
#include <cstdio>
#include <stack>

using namespace std;

int main(){
    int N, V;
    string operacao;
    stack<int> minimos;
    
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);

    cin >> N;
    for(int i = 0; i < N; ++i){
        cin >> operacao;

        if(operacao == "PUSH"){
            cin >> V;

            if(minimos.empty()){
                minimos.push(V);
            }else{
            	minimos.push(min(minimos.top(), V));
            }
        }else if(operacao == "POP"){
            if(minimos.empty()){
                cout << "EMPTY" << endl;
            }else{
                minimos.pop();
            }
        }else{
            if(minimos.empty()){
                cout << "EMPTY" << endl;
            }else{
                cout << minimos.top() << endl;
            }
        }
    }

    return 0;
}
