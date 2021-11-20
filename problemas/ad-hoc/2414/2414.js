let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

let numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(numeros.reduce((acc, cur) => cur > acc ? cur : acc, 0));
