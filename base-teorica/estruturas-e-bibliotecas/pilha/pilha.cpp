#include <iostream>
#include <stack>

using namespace std;

int main()
{
    stack<int> pilha;

    pilha.push(10);
    pilha.push(20);
    pilha.push(30);

    while (!pilha.empty())
    {
        cout << pilha.top() << ' ';
        pilha.pop();
    }
    cout << endl;

    return 0;
}