var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const LCS = (A, B) => {
    let n = A.length, m = B.length;
    let T = Array(n + 1);
    for(let i = 0; i <= n; ++i){
        T[i] = Array(m + 1);
        T[i].fill(0);
    }

    let resposta = 0;
    for(let i = 1; i <= n; ++i){
        for(let j = 1; j <= m; ++j){
            if(A[i - 1] === B[j - 1]){
                T[i][j] = T[i - 1][j - 1] + 1;
                resposta = Math.max(resposta, T[i][j]);
            }
        }
    }

    return resposta;
}

while(lines.length){
    let A = lines.shift().trim();
    let B = lines.shift().trim();

    console.log(LCS(A, B));
}
