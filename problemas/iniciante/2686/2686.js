var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const converte = (angulo) => angulo * 240;
const tempoDecorrido = (angulo) => (converte(angulo) + converte(90)) % converte(360);

while (lines.length) {
    let M = parseFloat(lines.shift());

    if (M < 90.0 || M === 360.0) {
        console.log('Bom Dia!!');
    } else if (M < 180.0) {
        console.log('Boa Tarde!!');
    } else if (M < 270.0) {
        console.log('Boa Noite!!');
    } else {
        console.log('De Madrugada!!');
    }

    let tempo = tempoDecorrido(M);
    let horas = Math.floor(tempo / 3600);
    tempo %= 3600;
    let minutos = Math.floor(tempo / 60);
    let segundos = tempo % 60;

    console.log(`${horas.toString().padStart(2, '0')}:${minutos.toString().padStart(2, '0')}:${segundos.toString().padStart(2, '0')}`);
}