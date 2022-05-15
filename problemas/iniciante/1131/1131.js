var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [inter, gremio, empate] = [0, 0, 0];
while (lines.length) {
    let [pt_inter, pt_gremio] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (pt_inter > pt_gremio) {
        ++inter;
    } else if (pt_inter === pt_gremio) {
        ++empate;
    } else {
        ++gremio;
    }

    console.log('Novo grenal (1-sim 2-nao)');
    let codigo = lines.shift().trim();
    if (codigo !== '1') {
        break;
    }
}

console.log(`${inter + gremio + empate} grenais`);
console.log(`Inter:${inter}`);
console.log(`Gremio:${gremio}`);
console.log(`Empates:${empate}`);

if (inter > gremio) {
    console.log('Inter venceu mais');
} else if (inter === gremio) {
    console.log('Nao houve vencedor');
} else {
    console.log('Gremio venceu mais');
}