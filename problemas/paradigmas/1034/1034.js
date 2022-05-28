var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N, M, mochila, blocos;

const calculaMochila = () => {
    mochila = new Array(M + 1);
    for (let i = 1; i <= M; ++i) {
        mochila[i] = -1;
    }
    mochila[0] = 0;

    for (let i = 0; i < N; ++i) {
        let bloco = blocos[i];

        for (let j = bloco; j <= M; ++j) {
            if (mochila[j - bloco] !== -1) {
                if (mochila[j] === -1) {
                    mochila[j] = mochila[j - bloco] + 1;
                } else {
                    mochila[j] = Math.min(mochila[j], mochila[j - bloco] + 1);
                }
            }
        }
    }

    return mochila[M];
};

let p = 0;
let T = parseInt(lines[p++]);
for (let k = 0; k < T; ++k) {
    [N, M] = lines[p++].trim().split(" ").map(x => parseInt(x));
    blocos = lines[p++].trim().split(" ").map(x => parseInt(x));

    console.log(calculaMochila());
}