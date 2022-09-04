#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int T, H, M, O;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> H >> M >> O;
        cout << setw(2) << setfill('0') << H << ":" << setw(2) << setfill('0') << M << " - A porta " << (O ? "abriu" : "fechou") << "!" << endl;
    }

    return 0;
}