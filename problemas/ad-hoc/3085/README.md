# 3085 - O Grande Dia

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3085)

## Solução

A simulação deste problema, perguntando a cada passo se a pessoa chegou no destino ou se ela foi longe demais, é o suficiente para resolvê-lo. Como cada cálculo que fazemos é feito em tempo constante, então tal solução é bastante eficiente, com complexidade O(n). Além disso, a simulação também é necessária por dois motivos: precisamos saber onde que é detectada a armadilha e imprimir apropriadamente; e também precisamos interromper as instruções se chegarmos na competição antes das instruções acabarem.

> Aqui usei variáveis inteiras para representar a distância de um ponto a outro para facilitar a comparação entre distâncias, que pode se provar problemática para variáveis do tipo `double`. Neste caso, não precisamos tirar a raiz quadrada da distância euclidiana, mas com isso, precisamos elevar ao quadrado nosso limite `k`.

### Alternativa 1 - Orientação a Objetos para facilitar na organização

O segredo todo está em como organizar seu código. No meu caso, escolhi representar em classes em todas as linguagens que permitiam tal representação, a fim de encapsular o comportamento de mover-se e verificar se já chegou ou passou dos limites dentro de um único objeto.

#### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

class Ponto{
    int x;
    int y;

    int dist(Ponto outro){
        return (this->x - outro.x)*(this->x - outro.x) +
               (this->y - outro.y)*(this->y - outro.y);
    }

    public:
    Ponto(){
        x = 0;
        y = 0;
    }

    Ponto(int x, int y){
        this->x = x;
        this->y = y;
    }

    void move(char direcao){
        switch(direcao){
            case 'C':   this->y += 1;
                        break;
            case 'B':   this->y -= 1;
                        break;
            case 'E':   this->x -= 1;
                        break;
            case 'D':   this->x += 1;
                        break;
        }
    }

    bool chegou(Ponto outro){
        return dist(outro) == 0;
    }

    bool ultrapassou(Ponto outro, int k){
        return dist(outro) >= k;
    }

    bool acabou(Ponto outro, int k){
        return chegou(outro) || ultrapassou(outro, k);
    }
};

vector<char> instrucoes;

int quandoFarsa(Ponto competicao, int k){
    Ponto atual = Ponto(0, 0);
    int i, n = instrucoes.size();

    for(i = 0; i < n; ++i){
        if(atual.acabou(competicao, k)) break;
        atual.move(instrucoes[i]);
    }

    return atual.chegou(competicao) ? -1 : min(i + 1, n);
}

int main(){
    Ponto competicao;
    int n, k, x, y, resposta;

    cin >> n >> k >> x >> y;
    k *= k;
    competicao = Ponto(x, y);

    instrucoes.assign(n, 'C');
    for(int i = 0; i < n; ++i){
        cin >> instrucoes[i];
    }

    resposta = quandoFarsa(competicao, k);

    if(resposta == -1){
        cout << "Sucesso" << endl;
    }else{
        cout << "Trap " << resposta << endl;
    }

    return 0;
}
```

### Alternativa 2 - Aproveitar propriedades matemáticas para um código muito mais curto

Aqui em baixo segue uma versão reduzida do código acima, usando muito menos memória, mas sacrificando bastante a legibilidade do código:

#### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    char instrucao;
    int i, n, k, xf, yf, dist;

    cin >> n >> k >> xf >> yf;
    k *= k;
    dist = (xf * xf) + (yf * yf);

    for(i = 0; i < n; ++i){
        if(dist == 0 || dist >= k)  break;

        cin >> instrucao;

        switch(instrucao){
            case 'C':   dist -= 2 * yf - 1;
                        yf -= 1;
                        break;
            case 'B':   dist += 2 * yf + 1;
                        yf += 1;
                        break;
            case 'E':   dist += 2 * xf + 1;
                        xf += 1;
                        break;
            case 'D':   dist -= 2 * xf - 1;
                        xf -= 1;
                        break;
        }
    }

    if(dist == 0){
        cout << "Sucesso" << endl;
    }else{
        cout << "Trap " << min(i + 1, n) << endl;
    }

    return 0;
}
```

Os cálculos são feitos baseados em duas ideias:

* A nova distância é calculada usando a seguinte equação para o quadrado de polinômios, pois sabemos que sempre vamos adicionar ou remover 1:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
(x&space;+&space;1)^2&space;=&space;x^2&space;+&space;2x&space;+&space;1&space;\\
\\
\text{e}&space;\\
\\
(x&space;-&space;1)^2&space;=&space;x^2&space;-&space;2x&space;+&space;1" title="\bg_white 
(x + 1)^2 = x^2 + 2x + 1 \\
\\
\text{e} \\
\\
(x - 1)^2 = x^2 - 2x + 1" />

* As coordenadas são calculadas novamente para poder reutilizar o x e o y nas fórmulas acima, usando a ideia de que ir para cima diminui em 1 o y, ir para baixo aumenta em 1 o y, ir para esquerda aumenta em 1 o x e para direita aumenta em 1 o x. É mais fácil entender a ideia se pensarmos que x e y armazenam as posições relativas em relação à posição atual do Italone, como se a posição do personagem nunca mudasse, o que muda é a posição do campeonato em relação à ele. É como se quando o Italone andasse, ele continuasse parado e o mundo que se mexe abaixo dos pés dele.