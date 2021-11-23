var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let F = [];

for (let i = 0; i <= 100; ++i) {
    F.push([]);
    for (let j = 0; j <= 20; ++j) {
        F[i].push(-1n);
    }
}

const fatorial = (n, k) => {
    if (n < 1) return 1n;
    if (F[n][k] === -1n) F[n][k] = BigInt(n) * fatorial(n - k, k);
    return F[n][k];
};

let T = parseInt(lines.shift());

for (let k = 0; k < T; ++k) {
    let entrada = lines.shift().trim();

    let N = parseInt(entrada.substr(0, entrada.indexOf('!')));
    let K = entrada.length - entrada.indexOf('!');

    console.log(fatorial(N, K).toString());
}
