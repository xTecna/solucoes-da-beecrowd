let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

const variacoes = (letra) => {
    if (letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'S') {
        return 3;
    } else {
        return 2;
    }
};

let n = parseInt(lines.shift());
for (let i = 0; i < n; ++i) {
    let senha = lines.shift().trim().toUpperCase();

    let resposta = 1;
    for (let j = 0; j < senha.length; ++j) {
        resposta *= variacoes(senha[j]);
    }

    console.log(resposta);
}