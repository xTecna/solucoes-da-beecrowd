var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

let palavras = lines.shift().trim().split(" ");

palavras = palavras.map((x) => {
    if(x.length === 3){
        if(x.startsWith("OB"))      return "OBI";
        else if(x.startsWith("UR")) return "URI";
    }
    return x;
});

console.log(palavras.join(' '));
