var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let p = 0;
while (p < lines.length) {
    let [N, I] = lines[p++].trim().split(' ').map(x => parseInt(x));

    let gameplays = 0;
    for (let i = 0; i < N; ++i) {
        let [identificador, j] = lines[p++].trim().split(' ').map(x => parseInt(x));

        if (identificador === I && j === 0) {
            ++gameplays;
        }
    }

    console.log(gameplays);
}