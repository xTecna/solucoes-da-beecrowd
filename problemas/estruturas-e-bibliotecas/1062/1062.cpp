#include <iostream>
#include <stack>

using namespace std;

int main(){
    int N, x;
    stack<int> A, estacao, B;

    while(cin >> N){
        if(!N)  break;

        while(cin >> x){
            if(!x){
                cout << endl;
                break;
            }

            while(!A.empty())       A.pop();
            while(!estacao.empty()) estacao.pop();
            while(!B.empty())       B.pop();

            A.push(x);
            B.push(1);
            for(int i = 2; i <= N; ++i){
                cin >> x;

                A.push(x);
                B.push(i);
            }

            while(!A.empty() || !estacao.empty() || !B.empty()){
                if(!A.empty() && !B.empty() && A.top() == B.top()){
                    A.pop();
                    B.pop();
                }else if(!estacao.empty() && !B.empty() && estacao.top() == B.top()){
                    estacao.pop();
                    B.pop();
                }else if(!A.empty()){
                    estacao.push(A.top());
                    A.pop();
                }else{
                    break;
                }
            }

            if(A.empty() && estacao.empty() && B.empty()){
                cout << "Yes" << endl;
            }else{
                cout << "No" << endl;
            }
        }
    }

    return 0;
}
