var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');
lines.pop();

let b;

class Matriz {
    constructor(n, m) {
        this.n = n;
        this.m = m;
        this.M = [];
        for (let i = 0; i < this.n; ++i) {
            this.M.push([]);
            for (let j = 0; j < this.m; ++j) {
                this.M[i].push(0);
            }
        }
    }
};

const multiplicacao = (m1, m2) => {
    let m3 = new Matriz(m1.m, m2.n);

    for (let i = 0; i < m1.n; ++i) {
        for (let j = 0; j < m2.m; ++j) {
            for (let k = 0; k < m1.m; ++k) {
                m3.M[i][j] += m1.M[i][k] * m2.M[k][j];
                m3.M[i][j] %= b;
            }
        }
    }

    return m3;
};

const potencia = (base, expoente) => {
    if (expoente === 1) {
        return base;
    } else if (expoente % 2) {
        return multiplicacao(base, potencia(base, expoente - 1));
    } else {
        const pot = potencia(base, Math.floor(expoente / 2));
        return multiplicacao(pot, pot);
    }
};

let T = 0;
while (lines.length) {
    let n = 0;
    [n, b] = lines.shift().trim().split(' ').map(x => parseInt(x));

    if (n === 0 && b === 0) {
        break;
    }

    let A = new Matriz(3, 3);
    A.M[0][0] = 1;
    A.M[0][1] = 1;
    A.M[0][2] = 1;
    A.M[1][0] = 1;
    A.M[2][2] = 1;

    let B = new Matriz(3, 1);
    B.M[0][0] = 1;
    B.M[1][0] = 1;
    B.M[2][0] = 1;

    if (n < 2) {
        console.log(`Case ${++T}: ${n} ${b} 1`);
    } else {
        let An1 = potencia(A, n - 1);
        let R = multiplicacao(An1, B);

        console.log(`Case ${++T}: ${n} ${b} ${R.M[0][0]}`);
    }
}