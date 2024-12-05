let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let n = parseInt(lines.shift());

let vitorias = 0;
for (let i = 0; i < n; ++i) {
  let numero = parseInt(lines.shift());
  if (numero !== 1) {
    vitorias += 1;
  }
}

console.log(vitorias);
