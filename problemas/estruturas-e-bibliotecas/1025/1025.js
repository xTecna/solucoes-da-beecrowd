var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const comp = (a, b) => a - b;

const pesquisaBinaria = (v, valor) => {
    let [inicio, fim, meio] = [0, v.length, 0];

    while(inicio < fim)
    {
        meio = Math.floor((inicio + fim)/2);

        if(v[meio] < valor)
            inicio = meio + 1;
        else
            fim = meio;
    }

    return inicio < v.length && v[inicio] === valor ? inicio + 1 : -1;
};

lines.pop();

let T = 1, p = 0;
while(p < lines.length){
    let [N, Q] = lines[p++].trim().split(' ').map((x) => parseInt(x));

    let marmores = [];
    for(let i = 0; i < N; ++i){
        marmores.push(parseInt(lines[p++].trim()));
    }

    marmores.sort(comp);

    console.log(`CASE# ${T++}:`);
    for(let i = 0; i < Q; ++i){
        let consulta = parseInt(lines[p++].trim());

        let resposta = pesquisaBinaria(marmores, consulta);

        if(resposta === -1)
            console.log(`${consulta} not found`);
        else
            console.log(`${consulta} found at ${resposta}`);
    }
}
