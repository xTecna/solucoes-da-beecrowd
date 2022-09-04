var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const potencia = (base, expoente) => {
    if (expoente === 1) return base;
    if (expoente % 2) return base * potencia(base, expoente - 1);

    let p = potencia(base, Math.floor(expoente / 2));
    return p * p;
};

const Fibonacci = (n) => (potencia((1 + Math.sqrt(5)) / 2, n) - potencia((1 - Math.sqrt(5)) / 2, n)) / Math.sqrt(5);

let n = parseInt(lines.shift());
console.log(Fibonacci(n).toFixed(1));