var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const vitaminaC = {
    "suco de laranja": 120,
    "morango fresco": 85,
    "mamao": 85,
    "goiaba vermelha": 70,
    "manga": 56,
    "laranja": 50,
    "brocolis": 34,
};

while (lines.length) {
    let T = parseInt(lines.shift());

    if (T === 0) {
        break;
    }

    let consumo = 0;
    for (let i = 0; i < T; ++i) {
        let entrada = lines.shift().trim().split(' ');
        let N = parseInt(entrada.shift());
        let nome = entrada.join(' ');

        consumo += N * vitaminaC[nome];
    }

    if (consumo < 110) {
        console.log(`Mais ${110 - consumo} mg`);
    } else if (consumo > 130) {
        console.log(`Menos ${consumo - 130} mg`);
    } else {
        console.log(`${consumo} mg`);
    }
}