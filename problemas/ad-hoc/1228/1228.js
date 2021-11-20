var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let pos_final = {};

const comp = (a, b) => pos_final[a] - pos_final[b];

const insertionSort = (V) => {
    let inversoes = 0;

    for (let i = 1; i < V.length; ++i){
        let j = i, k = j - 1;

        while(k > -1 && comp(V[j], V[k]) < 0){
            [V[k], V[j]] = [V[j], V[k]];
            ++inversoes;
            --j, --k;
        }
    }

    return inversoes;
};

while(lines.length){
    let N = parseInt(lines.shift().trim());
    let comeco = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let final = lines.shift().trim().split(' ').map((x) => parseInt(x));
    
    for (let i = 0; i < N; ++i){
        pos_final[final[i]] = i;
    }

    console.log(insertionSort(comeco));
}
