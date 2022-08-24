var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const regras = {
    "pedra": {
        "pedra": "Sem ganhador",
        "papel": "Jogador 1 venceu",
        "ataque": "Jogador 2 venceu"
    },
    "papel": {
        "pedra": "Jogador 2 venceu",
        "papel": "Ambos venceram",
        "ataque": "Jogador 2 venceu"
    },
    "ataque": {
        "pedra": "Jogador 1 venceu",
        "papel": "Jogador 1 venceu",
        "ataque": "Aniquilacao mutua"
    }
};

let N = parseInt(lines.shift().trim());
for (let i = 0; i < N; ++i) {
    let jogada1 = lines.shift().trim();
    let jogada2 = lines.shift().trim();

    console.log(regras[jogada1][jogada2]);
}