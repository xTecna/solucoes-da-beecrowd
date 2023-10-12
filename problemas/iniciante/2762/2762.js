var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B] = lines.shift().trim().split('.').map(x => parseInt(x));
console.log(`${B}.${A}`);