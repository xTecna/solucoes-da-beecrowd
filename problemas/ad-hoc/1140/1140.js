var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

lines.pop();

while (lines.length) {
    let frase = lines.shift();

    let palavras = frase.trim().split(' ');
    let letra = frase[0].toLowerCase();

    let tautograma = palavras.every((x) => x[0].toLowerCase() === letra);
    console.log(`${tautograma ? 'Y' : 'N'}`);
}
