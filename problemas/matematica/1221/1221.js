var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const Crivo = (n) => {
    let C = Array(n);
    C.fill(true);

    let primos = [];

    C[1] = false;
    primos.push(2);

    for (let i = 4; i < n; i += 2) {
        C[i] = false;
    }

    for (let i = 3; i < n; i += 2) {
        if (C[i]) {
            primos.push(i);

            for (let j = i * 3; j < n; j += 2 * i) {
                C[j] = false;
            }
        }
    }

    return primos;
};

const ehPrimo = (primos, n) => {
    let limite = Math.ceil(Math.sqrt(n));

    for (let i = 0; i < primos.length && primos[i] < limite; ++i) {
        if (n % primos[i] === 0) {
            return (n === primos[i]);
        }
    }

    return true;
};

let primos = Crivo(65536);

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    console.log(`${ehPrimo(primos, X) ? 'Prime' : 'Not Prime'}`);
}
