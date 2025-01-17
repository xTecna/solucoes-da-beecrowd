let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let n = parseInt(lines.shift());
let divisoes = lines.shift().trim().split(" ").map(x => parseInt(x));

let resposta = divisoes.reduce((acc, cur) => acc + cur, 0);
console.log(resposta - n);