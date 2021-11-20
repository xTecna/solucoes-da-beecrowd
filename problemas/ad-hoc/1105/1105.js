var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while(lines.length){
    let [B, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let saldos = lines.shift().trim().split(' ').map((x) => parseInt(x));
    saldos.unshift(0);

    for(let i = 0; i < N; ++i){
        let [devedor, credor, valor] = lines.shift().trim().split(' ').map((x) => parseInt(x));

        saldos[devedor] -= valor;
        saldos[credor] += valor;
    }

    let possivel = saldos.every((x) => x >= 0);

    console.log(`${possivel ? 'S' : 'N'}`);
}
