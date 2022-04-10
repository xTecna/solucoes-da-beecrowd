var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let salario = parseFloat(lines.shift());
let reajuste;

if (salario <= 400.00)
    reajuste = 15;
else if (salario <= 800.00)
    reajuste = 12;
else if (salario <= 1200.00)
    reajuste = 10;
else if (salario <= 2000.00)
    reajuste = 7;
else
    reajuste = 4;

console.log(`Novo salario: ${(salario * (1 + reajuste / 100.0)).toFixed(2)}`);
console.log(`Reajuste ganho: ${(salario * reajuste / 100.0).toFixed(2)}`);
console.log(`Em percentual: ${reajuste} %`);