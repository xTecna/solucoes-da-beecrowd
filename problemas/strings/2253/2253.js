var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while(lines.length){
    let S = lines.shift();

    if(S.length < 6 || S.length > 32){
        console.log("Senha invalida.");
        continue;
    }

    let errado = false, maiuscula = false, minuscula = false, numero = false;
    for(let i = 0; i < S.length; ++i){
        if(/[A-Z]/.test(S[i])){
            maiuscula = true;
        }else if(/[a-z]/.test(S[i])){
            minuscula = true;
        }else if(/[0-9]/.test(S[i])){
            numero = true;
        }else{
            errado = true;
            break;
        }
    }

    if(errado || !(maiuscula && minuscula && numero)){
        console.log("Senha invalida.");
    }else{
        console.log("Senha valida.");
    }
}
