var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let valido = (x) => (x >= 0.0) && (x <= 10.0);
let novoCalculo = (lines) => {
    console.log('novo calculo (1-sim 2-nao)');
    while (lines.length) {
        let codigo = lines.shift().trim();

        switch (codigo) {
            case '1': return true;
            case '2': return false;
            default: break;
        }

        console.log('novo calculo (1-sim 2-nao)');
    }

    return false;
};

let X = -1.0;
while (lines.length) {
    let Y = parseFloat(lines.shift());

    if (valido(Y)) {
        if (X === -1.0) {
            X = Y;
        } else {
            console.log(`media = ${((X + Y) / 2).toFixed(2)}`);
            X = -1.0;

            if (!novoCalculo(lines)) {
                break;
            }
        }
    } else {
        console.log('nota invalida');
    }
}