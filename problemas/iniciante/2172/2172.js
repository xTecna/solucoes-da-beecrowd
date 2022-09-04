var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');
lines.pop();

while (lines.length) {
    let [X, M] = lines.shift().trim().split(' ').map(x => parseInt(x));
    console.log(X * M);
}