var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

for (let i = 1; i < 10; i += 2) {
    for (let j = 7; j > 4; --j) {
        console.log(`I=${i} J=${j}`);
    }
}