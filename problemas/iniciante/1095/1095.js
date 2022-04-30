var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

for (let i = 1, j = 60; j > -1; i += 3, j -= 5) {
    console.log(`I=${i} J=${j}`);
}