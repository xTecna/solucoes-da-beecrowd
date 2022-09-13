var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => a - b;

const testaLado = (a, b, c) => {
    return Math.abs(b - c) < a && a < b + c;
};

const triangulo = (lados) => testaLado(lados[0], lados[1], lados[2]) && testaLado(lados[1], lados[0], lados[2]) && testaLado(lados[2], lados[0], lados[1]);

const classificacao = (lados) => {
    if (lados[0] === lados[1] && lados[1] === lados[2]) {
        return "Equilatero";
    }
    if (lados[0] === lados[1] || lados[0] === lados[2] || lados[1] === lados[2]) {
        return "Isoceles";
    }
    return "Escaleno";
};

const retangulo = (lados) => lados[0] % 3 === 0 && lados[1] % 4 === 0 && lados[2] % 5 === 0;

let lados = lines.shift().trim().split(' ').map(x => parseInt(x));
lados.sort(comp);

if (triangulo(lados)) {
    console.log(`Valido-${classificacao(lados)}`);
    console.log(`Retangulo: ${retangulo(lados) ? 'S' : 'N'}`);
} else {
    console.log('Invalido');
}