var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const isDigit = (letra) => /[0-9]/.test(letra);
const isUpper = (letra) => /[A-Z]/.test(letra);
const isLower = (letra) => /[a-z]/.test(letra);

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    if (i > 0) {
        console.log('');
    }

    let T = parseInt(lines.shift());
    let perigosos = [];
    for (let j = 0; j < T; ++j) {
        perigosos.push(lines.shift().trim());
    }

    let U = parseInt(lines.shift());
    for (let j = 0; j < U; ++j) {
        let formula = lines.shift().trim();

        let perigoso = false;
        for (let k = 0; !perigoso && k < T; ++k) {
            let pos = formula.indexOf(perigosos[k]);
            while (pos !== -1) {
                let frente = pos + perigosos[k].length;

                if (frente < formula.length) {
                    let daFrente = formula[frente - 1];
                    let maisNaFrente = formula[frente];

                    if ((isDigit(daFrente) && !isDigit(maisNaFrente)) || (isUpper(daFrente) && isUpper(maisNaFrente)) || (isLower(daFrente) && isUpper(maisNaFrente))) {
                        perigoso = true;
                        break;
                    }
                } else {
                    perigoso = true;
                    break;
                }

                pos = formula.indexOf(perigosos[k], pos + 1);
            }
        }

        console.log(perigoso ? "Abortar" : "Prossiga");
    }
}