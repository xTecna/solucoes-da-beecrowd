var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
    let [A, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let alice = new Set(lines.shift().trim().split(' ').map((x) => parseInt(x)));
    let beatriz = new Set(lines.shift().trim().split(' ').map((x) => parseInt(x)));

    let uniao = new Set([...alice, ...beatriz]);

    console.log(Math.min(uniao.size - beatriz.size, uniao.size - alice.size));
}
