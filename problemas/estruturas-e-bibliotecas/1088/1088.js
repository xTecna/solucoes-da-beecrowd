var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

let inversoes = 0;

comp = (a, b) => a - b;

merge = (V, inicio, meio, fim) => {
    let aux = Array(fim - inicio);
    let i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;

    while(i1 < n1 && i2 < n2){
        if(comp(V[i1], V[i2]) < 0){
            aux[i++] = V[i1++];
        }else{
            aux[i++] = V[i2++];
            inversoes += (n1 - i1);
        }
    }

    while(i1 < n1)  aux[i++] = V[i1++];
    while(i2 < n2)  aux[i++] = V[i2++];

    for(let i = inicio; i < fim; ++i){
        V[i] = aux[i - inicio];
    }
};

mergeSort = (V, inicio, fim) => {
    if(fim - inicio > 1){
        let meio = Math.floor((inicio + fim)/2);

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
};

while(lines.length){
    let P = lines.shift().trim().split(' ').map((x) => parseInt(x));
    P.shift();

    inversoes = 0;
    mergeSort(P, 0, P.length);

    console.log(inversoes % 2 ? "Marcelo" : "Carlos");
}
