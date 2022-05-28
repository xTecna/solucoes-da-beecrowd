var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

let T = 0, p = 0;
let marmores = Array(10000);
while (p < lines.length) {
    let [N, Q] = lines[p++].trim().split(' ').map((x) => parseInt(x));

    marmores.fill(0);
    for (let i = 0; i < N; ++i) {
        let x = parseInt(lines[p++].trim());

        marmores[x] += 1;
    }

    for (let i = 1; i < 10000; ++i) {
        marmores[i] += marmores[i - 1];
    }

    console.log(`CASE# ${++T}:`);
    for (let i = 0; i < Q; ++i) {
        x = parseInt(lines[p++].trim());

        if (marmores[x] === marmores[x - 1])
            console.log(`${x} not found`);
        else
            console.log(`${x} found at ${marmores[x - 1] + 1}`);
    }
}
