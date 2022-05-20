var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let regras = {
    "tesoura": {
        "tesoura": 0,
        "papel": 1,
        "pedra": -1,
        "lagarto": 1,
        "Spock": -1,
    },
    "papel": {
        "tesoura": -1,
        "papel": 0,
        "pedra": 1,
        "lagarto": -1,
        "Spock": 1,
    },
    "pedra": {
        "tesoura": 1,
        "papel": -1,
        "pedra": 0,
        "lagarto": 1,
        "Spock": -1
    },
    "lagarto": {
        "tesoura": -1,
        "papel": 1,
        "pedra": -1,
        "lagarto": 0,
        "Spock": 1,
    },
    "Spock": {
        "tesoura": 1,
        "papel": -1,
        "pedra": 1,
        "lagarto": -1,
        "Spock": 0
    }
};

let T = parseInt(lines.shift());
for (let i = 1; i <= T; ++i) {
    let [sheldon, raj] = lines.shift().trim().split(' ');

    let resposta = `Caso #${i}: `;
    switch (regras[sheldon][raj]) {
        case -1: resposta += 'Raj trapaceou!';
            break;
        case 0: resposta += 'De novo!';
            break;
        case 1: resposta += 'Bazinga!';
            break;
    }

    console.log(resposta);
}