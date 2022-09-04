var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let diasAteMes = [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335];

const diasAteData = (mes, dia) => diasAteMes[mes - 1] + dia;

while (lines.length) {
    let [mes, dia] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let diasAteNatal = diasAteData(12, 25) - diasAteData(mes, dia);

    if (diasAteNatal < 0) {
        console.log("Ja passou!");
    } else if (diasAteNatal === 0) {
        console.log("E natal!");
    } else if (diasAteNatal === 1) {
        console.log("E vespera de natal!");
    } else {
        console.log(`Faltam ${diasAteNatal} dias para o natal!`);
    }
}