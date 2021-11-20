#include <iostream>

using namespace std;

int main()
{
    int N, Ax, Ay, Bx, By, Cx, Cy, Dx, Dy, Rx, Ry;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> Ax >> Ay >> Bx >> By >> Cx >> Cy >> Dx >> Dy >> Rx >> Ry;

        cout << (int)(Ax <= Rx && Dx <= Rx &&
                      Rx <= Bx && Rx <= Cx &&
                      Ay <= Ry && By <= Ry &&
                      Ry <= Cy && Ry <= Dy)
             << endl;
    }

    return 0;
}
