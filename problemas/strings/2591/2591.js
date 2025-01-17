let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let hamekame = lines.shift().trim().split(/[hmek]/).filter(x => x != "");
    let [tamanho1, tamanho2] = hamekame.map(x => x.length);

    let resposta = "k";
    for (let j = 0; j < (tamanho1 * tamanho2); ++j) {
        resposta += "a";
    }
    console.log(resposta);
}