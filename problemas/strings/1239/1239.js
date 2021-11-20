var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const replaceAll = (frase, simbolo, tagAberta, tagFechada) => {
    let novaFrase = frase.replace(simbolo, tagAberta);
    let aberta = true;
    while(novaFrase !== frase){
        frase = novaFrase;
        novaFrase = frase.replace(simbolo, aberta ? tagFechada : tagAberta);
        aberta = !aberta;
    }

    return frase;
}

while(lines.length){
    let frase = lines.shift();

    frase = replaceAll(frase, '_', '<i>', '</i>');
    frase = replaceAll(frase, '*', '<b>', '</b>');

    console.log(frase);
}
