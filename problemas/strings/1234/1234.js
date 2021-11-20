var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
    let sentenca = lines.shift();

    let maiuscula = true;
    let resposta = sentenca.split('').map((x) => {
        let letra = x;

        if(/[A-Za-z]/.test(x)){
            if(maiuscula)   letra = letra.toUpperCase();
            else            letra = letra.toLowerCase();
            maiuscula = !maiuscula;
        }
        
        return letra;
    }).join('');

    console.log(resposta);
}
