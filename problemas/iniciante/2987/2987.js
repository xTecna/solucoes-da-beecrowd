var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let L = lines.shift();
console.log(L.charCodeAt(0) - 'A'.charCodeAt(0) + 1);