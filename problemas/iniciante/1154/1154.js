var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [soma, contador] = [0, 0];
while (lines.length) {
    let idade = parseInt(lines.shift().trim());

    if (idade < 0) {
        break;
    }

    soma += idade;
    ++contador;
}

console.log(`${(soma / contador).toFixed(2)}`);