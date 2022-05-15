var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let converte = (dia, hora, minuto, segundo) => (24 * 60 * 60) * dia + (60 * 60) * hora + 60 * minuto + segundo;

let d_inicial = parseInt(lines.shift().split(' ')[1]);
let [h_inicial, m_inicial, s_inicial] = lines.shift().split(':').map((x) => parseInt(x.trim()));
let d_final = parseInt(lines.shift().split(' ')[1]);
let [h_final, m_final, s_final] = lines.shift().split(':').map((x) => parseInt(x.trim()));

let inicial = converte(d_inicial, h_inicial, m_inicial, s_inicial);
let final = converte(d_final, h_final, m_final, s_final);

let duracao = final - inicial;

console.log(`${Math.floor(duracao / (24 * 60 * 60))} dia(s)`);
duracao %= (24 * 60 * 60);
console.log(`${Math.floor(duracao / (60 * 60))} hora(s)`);
duracao %= (60 * 60);
console.log(`${Math.floor(duracao / 60)} minuto(s)`);
duracao %= 60;
console.log(`${duracao} segundo(s)`);