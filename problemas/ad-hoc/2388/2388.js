let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

n = parseInt(lines.shift());

let resposta = 0;
for (let i = 0; i < n; ++i) {
    let [v, t] = lines.shift().trim().split(" ").map(x => parseInt(x));
    resposta += v * t;
}

console.log(resposta);