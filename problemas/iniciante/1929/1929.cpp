#include <iostream>

using namespace std;

bool fazTriangulo(int a, int b, int c)
{
    return (abs(b - c) < a && a < b + c && abs(a - c) < b && b < a + c && abs(a - b) < c && c < a + b);
}

int main()
{
    int A, B, C, D;

    cin >> A >> B >> C >> D;

    bool resposta = fazTriangulo(A, B, C) || fazTriangulo(A, B, D) || fazTriangulo(A, C, D) || fazTriangulo(B, C, D);

    cout << (resposta ? 'S' : 'N') << endl;

    return 0;
}