var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [N, D] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let melhorData = null;
    for (let i = 0; i < D; ++i) {
        let [data, ...pessoas] = lines.shift().trim().split(' ');
        let soma = pessoas.reduce((acc, cur) => acc + parseInt(cur), 0);
        if (soma === N && melhorData === null) {
            melhorData = data;
        }
    }

    if (melhorData === null) {
        console.log('Pizza antes de FdI');
    } else {
        console.log(melhorData);
    }
}