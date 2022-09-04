var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let k = 0;
while (lines.length) {
    let N1 = lines.shift().trim();
    let N2 = lines.shift().trim();

    let qtd = 0;
    let pos = -1;
    let p = N2.indexOf(N1);
    while (p != -1) {
        ++qtd;
        pos = p;
        p = N2.indexOf(N1, p + 1);
    }

    console.log(`Caso #${++k}:`)
    if (qtd === 0) {
        console.log('Nao existe subsequencia\n');
    } else {
        console.log(`Qtd.Subsequencias: ${qtd}`);
        console.log(`Pos: ${pos + 1}\n`);
    }
}