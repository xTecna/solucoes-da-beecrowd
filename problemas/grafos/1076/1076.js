var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let T = parseInt(lines.shift());
for(let k = 0; k < T; ++k){
    let N = parseInt(lines.shift());

    let [n, m] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let arestas = new Set();
    for(let i = 0; i < m; ++i){
        let [u, v] = lines.shift().trim().split(' ').map(x => parseInt(x));
        
        arestas.add(100 * u + v);
        arestas.add(100 * v + u);
    }

    console.log(arestas.size);
}