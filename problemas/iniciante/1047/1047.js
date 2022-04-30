var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [h_inicial, m_inicial, h_final, m_final] = lines.shift().trim().split(' ').map((x) => parseInt(x));

let inicial = h_inicial * 60 + m_inicial;
let final = h_final * 60 + m_final;

if (final <= inicial) {
    final += 24 * 60;
}

console.log(`O JOGO DUROU ${Math.floor((final - inicial) / 60)} HORA(S) E ${(final - inicial) % 60} MINUTO(S)`);