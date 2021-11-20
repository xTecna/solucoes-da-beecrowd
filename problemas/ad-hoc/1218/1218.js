var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let caso = 0;

while(lines.length){
    if(caso > 0)    console.log('');

    let tamanho_desejado = parseInt(lines.shift().trim());
    let sapatos = lines.shift().trim().split(' ');

    let [feminino, masculino] = [0, 0];
    for(let i = 0; i < sapatos.length; i += 2){
        let [tamanho, genero] = [parseInt(sapatos[i]), sapatos[i + 1]];

        if(tamanho === tamanho_desejado){
            if(genero === 'F')  ++feminino;
            else                ++masculino;
        }
    }

    console.log(`Caso ${++caso}:`);
    console.log(`Pares Iguais: ${feminino + masculino}`);
    console.log(`F: ${feminino}`);
    console.log(`M: ${masculino}`);
}
