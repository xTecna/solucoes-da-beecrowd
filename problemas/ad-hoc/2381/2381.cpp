#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

int main() {
	int N, K;
	vector<string> alunos;
	
	cin >> N >> K;
	alunos.assign(N, "");
	for(int i = 0; i < N; ++i){
		cin >> alunos[i];
	}
	
	sort(alunos.begin(), alunos.end());
	
	cout << alunos[K - 1] << endl;
	
	return 0;
}
