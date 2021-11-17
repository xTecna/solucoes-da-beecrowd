#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double A, B, C, media;

    cin >> A >> B >> C;

    media = (2 * A + 3 * B + 5 * C) / 10.0;

    cout << "MEDIA = " << setprecision(1) << fixed << media << endl;

    return 0;
}