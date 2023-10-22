var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const limit = 2147483647;

const FloydWarshall = (grafo, N) => {
    for(let k = 1; k <= N; ++k){
        for(let i = 1; i <= N; ++i){
            for(let j = 1; j <= N; ++j){
                grafo[i][j] = Math.min(grafo[i][j], grafo[i][k] + grafo[k][j]);
            }
        }
    }
}

let p = 0;
while(p < lines.length){
    let [N, E] = lines[p++].trim().split(' ').map(x => parseInt(x));

    if(N === 0 && E === 0){
        break;
    }

    let grafo = [[]];
    for(let i = 1; i <= N; ++i){
        grafo.push([]);
        for(let j = 0; j <= N; ++j){
            grafo[i].push(limit);
        }
    }

    for(let i = 0; i < E; ++i){
        let [X, Y, H] = lines[p++].trim().split(' ').map(x => parseInt(x));
        grafo[X][Y] = H;
    }

    for(let i = 1; i <= N; ++i){
        for(let j = i; j <= N; ++j){
            if(grafo[i][j] !== limit && grafo[j][i] !== limit){
                grafo[i][j] = 0;
                grafo[j][i] = 0;
            }
        }
    }

    FloydWarshall(grafo, N);

    let K = parseInt(lines[p++]);
    for(let i = 0; i < K; ++i){
        let [O, D] = lines[p++].trim().split(' ').map(x => parseInt(x));

        if(grafo[O][D] === limit){
            console.log('Nao e possivel entregar a carta');
        }else{
            console.log(grafo[O][D]);
        }
    }
    console.log('');
}