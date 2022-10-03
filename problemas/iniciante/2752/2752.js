var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let frase = "AMO FAZER EXERCICIO NO URI";

console.log(`<${frase}>`);
console.log(`<${frase.padStart(30)}>`);
console.log(`<${frase.substring(0, 20)}>`);
console.log(`<${frase.padEnd(20)}>`);
console.log(`<${frase.padEnd(30)}>`);
console.log(`<${frase.substring(0, 30)}>`);
console.log(`<${frase.substring(0, 20).padStart(30)}>`);
console.log(`<${frase.substring(0, 20).padEnd(30)}>`);