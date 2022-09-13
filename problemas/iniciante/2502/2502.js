var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let [C, N] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let cifra1 = lines.shift();
    let lowerCifra1 = cifra1.toLowerCase();
    let cifra2 = lines.shift();
    let lowerCifra2 = cifra2.toLowerCase();

    let traducao = {};
    for (let i = 0; i < C; ++i) {
        traducao[cifra1[i]] = cifra2[i];
        traducao[lowerCifra1[i]] = lowerCifra2[i];
        traducao[cifra2[i]] = cifra1[i];
        traducao[lowerCifra2[i]] = lowerCifra1[i];
    }

    for (let i = 0; i < N; ++i) {
        let frase = lines.shift();

        let fraseTraduzida = '';
        for (let j = 0; j < frase.length; ++j) {
            fraseTraduzida += traducao[frase[j]] !== undefined ? traducao[frase[j]] : frase[j];
        }
        console.log(fraseTraduzida);
    }
    console.log('');
}