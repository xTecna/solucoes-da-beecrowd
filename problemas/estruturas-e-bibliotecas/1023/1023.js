var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

let T = 0, p = 0;
while(p < lines.length){
    let N = parseInt(lines[p++]);

    if(T){
        console.log('');
    }

    let consumos = Array(201);
    consumos.fill(0);
    let [totalX, totalY] = [0, 0];
    for(let i = 0; i < N; ++i){
        let [X, Y] = lines[p++].split(' ').map((x) => parseInt(x));

        totalX += X;
        totalY += Y;
        consumos[parseInt(Math.floor(Y/X))] += X;
    }

    console.log(`Cidade# ${++T}:`);
    let output = [];
    for(let i = 0; i < 201; ++i){
        if(consumos[i] > 0) output.push(`${consumos[i]}-${i}`);
    }
    console.log(output.join(' '));

    let consumo_total = Math.floor(100 * totalY / totalX) / 100;

    console.log(`Consumo medio: ${consumo_total.toFixed(2)} m3.`);
}
