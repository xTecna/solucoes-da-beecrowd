#include <cmath>
#include <iostream>

using namespace std;

const double EPSILON = 0.000000001;

bool igual(double a, double b){
	return fabs(a - b) <= EPSILON;
}

class Ponto{
	public:
	double x;
	double y;
	
	Ponto(){
		x = 0;
		y = 0;
	}
	
	Ponto(double a, double b){
		x = a;
		y = b;
	}
};

class Reta{
	public:
	double a;
	double b;
	double c;
	
	Reta(){
		a = 0.0;
		b = 0.0;
		c = 0.0;
	}
	
	Reta(double x, double y, double z){
		a = x;
		b = y;
		c = z;
	}
	
	Reta(Ponto p1, Ponto p2){
		if (p1.x == p2.x){
			a = 1;
			b = 0;
			c = -p1.x;
		}else{
			b = 1;
			a = -(p1.y - p2.y)/(p1.x - p2.x);
			c = -(a * p1.x) - b * p1.y;
		}
	}
};

bool pontosColineares(Ponto p1, Ponto p2, Ponto p3){
	return p1.x * (p2.y - p3.y) - p2.x * (p1.y - p3.y) + p3.x * (p1.y - p2.y) == 0;
}

Ponto metadeSegmento(Ponto p1, Ponto p2){
	return Ponto((p1.x + p2.x)/2, (p1.y + p2.y)/2);
}

Reta pontoTangenteParaReta(Ponto p, double tang){
	Reta r;
	r.a = -tang;
	r.b = 1;
	r.c = -(r.a * p.x + r.b * p.y);
	return r;
}

Reta perpendicular(Ponto p, Reta r){
	if (abs(r.b) <= EPSILON)	return Reta(0, 1, -p.y);
	if (abs(r.a) <= EPSILON)	return Reta(1, 0, -p.x);
	return pontoTangenteParaReta(p, 1/r.a);
}

Ponto intersecao(Reta r1, Reta r2){
	Ponto p;
	p.x = (r2.b * r1.c - r1.b * r2.c)/(r2.a * r1.b - r1.a * r2.b);
	if (fabs(r1.b) > EPSILON){
		p.y = -(r1.a * p.x + r1.c)/r1.b;
	}else{
		p.y = -(r2.a * p.x + r2.c)/r2.b;
	}
	if (fabs(p.x) < EPSILON)	p.x = 0;
	if (fabs(p.y) < EPSILON)	p.y = 0;
	return p;
}

double distancia(Ponto p1, Ponto p2){
	return sqrt(((p1.x - p2.x) * (p1.x - p2.x)) + ((p1.y - p2.y) * (p1.y - p2.y)));
}

int main() {
	int N, resposta, resposta_atual;
	double X, Y;
	Ponto pontos[100];
	
	while (cin >> N){
		if (!N)	break;
		if (N == 1)	resposta = 1;
		else		resposta = 2;
		
		for (int i = 0; i < N; ++i){
			cin >> X >> Y;
			pontos[i] = Ponto(X, Y);
		}
		
		for (int i = 0; i < N; ++i){
			Ponto p1 = pontos[i];
			for (int j = i + 1; j < N; ++j){
				Ponto p2 = pontos[j];
				for (int k = j + 1; k < N; ++k){
					Ponto p3 = pontos[k];
					
					if (pontosColineares(p1, p2, p3))	continue;
					
					Ponto pc = intersecao(perpendicular(metadeSegmento(p1, p2), Reta(p1, p2)),
										  perpendicular(metadeSegmento(p1, p3), Reta(p1, p3)));
					double raio = distancia(p1, pc);
					
					resposta_atual = 3;
					for (int m = k + 1; m < N; ++m){
						Ponto p = pontos[m];
						if (igual(distancia(p, pc), raio)){
							++resposta_atual;
						}
					}
					
					if (resposta_atual > resposta){
						resposta = resposta_atual;
					}
				}
			}
		}
		
		cout << resposta << endl;
	}
	
	return 0;
}