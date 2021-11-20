#include <iostream>
#include <cctype>

using namespace std;

int main(){
    int n;
    bool maiuscula;
    string sentenca;

    while(getline(cin, sentenca)){
        maiuscula = true;

        for(int i = 0; i < sentenca.length(); ++i){
            if(!isalpha(sentenca[i]))   continue;

            if(maiuscula)   sentenca[i] = toupper(sentenca[i]);
            else            sentenca[i] = tolower(sentenca[i]);

            maiuscula = !maiuscula;
        }

        cout << sentenca << endl;
    }

    return 0;
}
