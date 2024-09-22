let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

let [N, K] = lines.shift().trim().split(' ').map(x => parseInt(x));

let alunos = [];
for (let i = 0; i < N; ++i) {
    let aluno = lines.shift().trim();
    alunos.push(aluno);
}

alunos.sort();
console.log(alunos[K - 1]);