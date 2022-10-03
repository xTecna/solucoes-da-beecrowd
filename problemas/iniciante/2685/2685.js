var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let M = parseInt(lines.shift());

    M %= 360;

    if (M < 90) {
        console.log('Bom Dia!!');
    } else if (M < 180) {
        console.log('Boa Tarde!!');
    } else if (M < 270) {
        console.log('Boa Noite!!');
    } else {
        console.log('De Madrugada!!');
    }
}