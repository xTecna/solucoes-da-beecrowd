let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

lines.pop();

const duracaoNota = (nota) => {
    switch(nota){
        case 'W':   return 1.0;
        case 'H':   return 0.5;
        case 'Q':   return 0.25;
        case 'E':   return 0.125;
        case 'S':   return 0.0625;
        case 'T':   return 0.03125;
        case 'X':   return 0.015625;
    }
}

while(lines.length){
    let compassos = lines.shift().trim().split('/');
    compassos.pop();
    compassos.shift();

    let duracoes = compassos.map((compasso) => compasso.split('').reduce((acc, cur) => acc + duracaoNota(cur), 0));
    let resposta = duracoes.filter((duracao) => duracao === 1.0);

    console.log(resposta.length);
}
