let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

X = parseInt(lines[0].trim().split(' ').join(''), 2);
Y = parseInt(lines[1].trim().split(' ').join(''), 2);

console.log(`${(X ^ Y) == 31 ? 'Y' : 'N'}`);
