#include <iostream>

using namespace std;

int main()
{
    string tweet;

    getline(cin, tweet);
    cout << (tweet.size() > 140 ? "MUTE" : "TWEET") << endl;

    return 0;
}