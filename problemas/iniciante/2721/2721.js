var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let renas = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"];

let soma = lines.shift().trim().split(' ').map(x => parseInt(x)).reduce((acc, cur) => acc + cur, 0);
console.log(renas[soma % 9]);