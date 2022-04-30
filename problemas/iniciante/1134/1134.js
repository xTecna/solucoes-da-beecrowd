var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [alcool, gasolina, diesel] = [0, 0, 0];
while (lines.length) {
    let codigo = parseInt(lines.shift());

    if (codigo === 4) {
        break;
    }

    switch (codigo) {
        case 1: ++alcool;
            break;
        case 2: ++gasolina;
            break;
        case 3: ++diesel;
            break;
        default: break;
    }
}

console.log("MUITO OBRIGADO");
console.log(`Alcool: ${alcool}`);
console.log(`Gasolina: ${gasolina}`);
console.log(`Diesel: ${diesel}`);