#include <iostream>

using namespace std;

int valor(char simbolo){
    switch(simbolo){
        case '-':   return 0;
        case '*':   return 1;
    }
}

int converte(string numero)
{
    int potencia = 1, resposta = 0;
    
    for(int i = numero.length() - 1; i > -1; --i){
        resposta += valor(numero[i]) * potencia;
        potencia *= 2;
    }
    
    return resposta;
}

int main()
{
    int soma = 0;
    string linha;

    while (getline(cin, linha))
    {
        if (linha == "caw caw")
        {
            cout << soma << endl;
            soma = 0;
        }
        else
        {
            soma += converte(linha);
        }
    }

    return 0;
}