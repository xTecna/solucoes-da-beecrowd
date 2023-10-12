var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

console.log(`${lines[0]}${lines[1]}${lines[2]}`);
console.log(`${lines[1]}${lines[2]}${lines[0]}`);
console.log(`${lines[2]}${lines[0]}${lines[1]}`);
console.log(`${lines[0].substring(0, 10)}${lines[1].substring(0, 10)}${lines[2].substring(0, 10)}`);