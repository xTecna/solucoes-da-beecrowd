var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [jipes, pessoas] = [0, 0];
let [instrucao, numero] = lines.shift().trim().split(' ');
while (instrucao !== "ABEND") {
    if (instrucao == "SALIDA") {
        pessoas += parseInt(numero);
        ++jipes;
    } else {
        pessoas -= parseInt(numero);
        --jipes;
    }

    [instrucao, numero] = lines.shift().trim().split(' ');
}

console.log(pessoas);
console.log(jipes);