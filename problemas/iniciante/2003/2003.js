var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [hora, minuto] = lines.shift().trim().split(':').map(x => parseInt(x));

    let total = hora * 60 + minuto;
    console.log(`Atraso maximo: ${Math.max(0, total + 60 - 8 * 60)}`);
}