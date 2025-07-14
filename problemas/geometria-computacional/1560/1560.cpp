#include <cmath>
#include <iostream>
using namespace std;

struct Ponto{
	int x;
	int y;
	
	Ponto(){
		x = y = 0;
	}
	
	Ponto(int a, int b){
		x = a;
		y = b;
	}
};

long long int area(Ponto p1, Ponto p2, Ponto p3){
	return (long long int) abs(p1.x * (p2.y - p3.y) + p2.x * (p3.y - p1.y) + p3.x * (p1.y - p2.y));
}

bool PontoInterior(Ponto p1, Ponto p2, Ponto p3, Ponto p){
	long long int a123, a12, a13, a23;
	
	a123 = area(p1, p2, p3);
	a12 = area(p1, p2, p);
	a13 = area(p1, p, p3);
	a23 = area(p, p2, p3);
	
	return (a123 == a12 + a13 + a23);
}

int main() {
	int N, M, X, Y;
	Ponto pretos[100];
	Ponto brancos[100];
	unsigned long long int energia_atual, energia_total;
	
	while (cin >> N >> M){
		energia_total = 0;
		
		for (int i = 0; i < N; ++i){
			cin >> X >> Y;
			pretos[i] = Ponto(X, Y);
		}
		
		for (int i = 0; i < M; ++i){
			cin >> X >> Y;
			brancos[i] = Ponto(X, Y);
		}
		
		for (int i = 0; i < N; ++i){
			for (int j = i + 1; j < N; ++j){
				for (int k = j + 1; k < N; ++k){
					energia_atual = 0;
					
					for (int m = 0; m < M; ++m){
						if (PontoInterior(pretos[i], pretos[j], pretos[k], brancos[m])){
							energia_atual += 1;
						}
					}
					
					energia_total += energia_atual * energia_atual;
				}
			}
		}
		
		cout << energia_total << endl;
	}
	
	return 0;
}