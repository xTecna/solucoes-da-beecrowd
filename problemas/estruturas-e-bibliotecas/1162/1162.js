var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => a - b;

const insertionSort = (V) => {
    let trocas = 0;

    for (let i = 1; i < V.length; ++i){
        let j = i, k = j - 1;

        while(k > -1 && comp(V[j], V[k]) < 0){
            [V[k], V[j]] = [V[j], V[k]];
            ++trocas;
            --j, --k;
        }
    }

    return trocas;
};

let N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    let L = parseInt(lines.shift());

    let vagoes = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(`Optimal train swapping takes ${insertionSort(vagoes)} swaps.`);
}
