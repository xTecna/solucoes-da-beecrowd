var input = require("fs").readFileSync("/dev/stdin", "utf8");
var lines = input.split("\n");

let notas = lines.shift().split(' ').map((nota) => parseFloat(nota));

media = (2 * notas[0] + 3 * notas[1] + 4 * notas[2] + notas[3]) / 10;

console.log(`Media: ${media.toFixed(1)}`);

if (media >= 7.0) {
    console.log("Aluno aprovado.");
} else if (media < 5.0) {
    console.log("Aluno reprovado.");
} else {
    console.log("Aluno em exame.");
    let exame = parseFloat(lines.shift());
    console.log(`Nota do exame: ${exame.toFixed(1)}`);

    media = (media + exame) / 2;

    if (media >= 5.0) {
        console.log("Aluno aprovado.");
    } else {
        console.log("Aluno reprovado.");
    }

    console.log(`Media final: ${media.toFixed(1)}`);
}