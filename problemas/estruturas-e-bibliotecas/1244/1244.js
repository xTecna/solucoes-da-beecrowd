var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => b.length - a.length;

const insertionSort = (V) => {
    for (let i = 1; i < V.length; ++i){
        let j = i, k = j - 1;

        while(k > -1 && comp(V[j], V[k]) < 0){
            [V[k], V[j]] = [V[j], V[k]];
            --j, --k;
        }
    }
};

let N = parseInt(lines.shift().trim());

for(let i = 0; i < N; ++i){
    let palavras = lines.shift().trim().split(' ');

    insertionSort(palavras);

    console.log(palavras.join(' '));
}
