var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = [];

for (let i = 0; i < 20; ++i) {
    N.push(parseInt(lines.shift().trim()));
}

for (let i = 0; i < 10; ++i) {
    [N[i], N[19 - i]] = [N[19 - i], N[i]];
}

for (let i = 0; i < 20; ++i) {
    console.log(`N[${i}] = ${N[i]}`);
}