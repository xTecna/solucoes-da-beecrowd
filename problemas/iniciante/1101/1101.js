var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let [M, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (M <= 0 || N <= 0) {
        break;
    }

    if (M > N) {
        [M, N] = [N, M];
    }

    let V = [];
    let soma = 0;
    for (let i = M; i <= N; ++i) {
        V.push(i.toString());
        soma += i;
    }
    console.log(`${V.join(' ')} Sum=${soma}`);
}