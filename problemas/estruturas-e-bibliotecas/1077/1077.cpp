#include <iostream>
#include <cctype>
#include <stack>

using namespace std;

int precedencia(char operador){
    switch(operador){
        case '+':
        case '-':   return 1;
        case '*':
        case '/':   return 2;
    }
}

int main(){
    int N, tam;
    string expressao;
    stack<char> pilha;

    cin >> N;

    for(int k = 0; k < N; ++k){
        cin >> expressao;

        tam = expressao.length();
        for(int i = 0; i < tam; ++i){
            if(isalpha(expressao[i]) || isdigit(expressao[i])){
                cout << expressao[i];
            }else if(expressao[i] == '(' || expressao[i] == '^'){
                pilha.push(expressao[i]);
            }else if(expressao[i] == ')'){
                while(!pilha.empty() && pilha.top() != '('){
                    cout << pilha.top();
                    pilha.pop();
                }

                if(!pilha.empty())  pilha.pop();
            }else{
                while(!pilha.empty() && pilha.top() != '(' && precedencia(expressao[i]) <= precedencia(pilha.top())){
                    cout << pilha.top();
                    pilha.pop();
                }

                pilha.push(expressao[i]);
            }
        }

        while(!pilha.empty()){
            cout << pilha.top();
            pilha.pop();
        }
        cout << endl;
    }

    return 0;
}
