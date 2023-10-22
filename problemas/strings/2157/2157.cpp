#include <iostream>
#include <sstream>

using namespace std;

int main() {
    int C;

    cin >> C;
    for (int k = 0; k < C; ++k) {
        int B, E;
        cin >> B >> E;

        stringstream ss;
        for (int i = B; i <= E; ++i) {
            ss << i;
        }

        string s;
        ss >> s;
        int tamanho = s.length();
        for (int i = tamanho - 1; i > -1; --i) {
            s += s[i];
        }

        cout << s << endl;
    }

    return 0;
}