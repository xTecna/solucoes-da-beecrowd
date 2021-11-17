let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

let [codigo, quantidade] = lines.shift().trim().split(' ').map((x) => parseInt(x));
let total;

switch (codigo) {
    case 1: total = quantidade * 4.00;
        break;
    case 2: total = quantidade * 4.50;
        break;
    case 3: total = quantidade * 5.00;
        break;
    case 4: total = quantidade * 2.00;
        break;
    case 5: total = quantidade * 1.50;
        break;
}

console.log(`Total: R$ ${total.toFixed(2)}`);