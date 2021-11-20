var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while(lines.length){
    let expressao = lines.shift().trim();

    let i = 0;
    let parenteses = 0;

    for(i = 0; i < expressao.length; ++i){
        if(expressao[i] === '('){
            parenteses += 1;
        }else if(expressao[i] === ')'){
            if(parenteses > 0)  parenteses -= 1;
            else                break;
        }
    }

    if(i === expressao.length && parenteses === 0){
        console.log("correct");
    }else{
        console.log("incorrect");
    }
}
