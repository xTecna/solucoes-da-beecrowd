var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let NMAX = 10001;
let C = Array(NMAX);
let primos = [];

let Crivo = () => {
    C[0] = false;
    C[1] = false;
    C[2] = true;
    primos.push(2);
    for (let i = 4; i < NMAX; i += 2) {
        C[i] = false;
    }
    for (let i = 3; i < NMAX; i += 2) {
        C[i] = true;
    }

    for (let i = 3; i < NMAX; i += 2) {
        if (C[i]) {
            primos.push(i);
            for (let j = 3 * i; j < NMAX; j += 2 * i) {
                C[j] = false;
            }
        }
    }
};

let potencia = (base, expoente) => {
    if (expoente === 0) {
        return 1;
    } else if (expoente % 2 === 1) {
        return base * potencia(base, expoente - 1);
    } else {
        let pot = potencia(base, Math.floor(expoente / 2));
        return pot * pot;
    }
};

let sumDiv = (N) => {
    let i_primos = 0;
    let primo = primos[i_primos];
    let resposta = 1;

    while (primo * primo <= N) {
        let pot = 0;

        while (N % primo == 0) {
            N /= primo;
            ++pot;
        }

        resposta *= (potencia(primo, pot + 1) - 1) / (primo - 1);
        primo = primos[++i_primos];
    }

    if (N !== 1) {
        resposta *= (potencia(N, 2) - 1) / (N - 1);
    }

    return resposta;
};

Crivo();

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    if (X === sumDiv(X) - X) {
        console.log(`${X} eh perfeito`);
    } else {
        console.log(`${X} nao eh perfeito`);
    }
}