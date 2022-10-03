var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const valido = (placa) => placa.match(/^([A-Z]{3})-([0-9]{4})$/g) !== null;
const diaDaSemana = (placa) => {
    switch (placa[7]) {
        case '1':
        case '2': return 'MONDAY';
        case '3':
        case '4': return 'TUESDAY';
        case '5':
        case '6': return 'WEDNESDAY';
        case '7':
        case '8': return 'THURSDAY';
        case '9':
        case '0': return 'FRIDAY';
    }
};

let N = parseInt(lines.shift().trim());
for (let i = 0; i < N; ++i) {
    let S = lines.shift().trim();

    if (!valido(S)) {
        console.log('FAILURE');
    } else {
        console.log(diaDaSemana(S));
    }
}