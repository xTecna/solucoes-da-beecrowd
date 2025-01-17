let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let N = parseInt(lines.shift());

var menor_preco = 1000.0;
for (let i = 0; i < N; ++i) {
    let [P, G] = lines.shift().trim().split(" ").map(x => parseFloat(x));

    menor_preco = Math.min(menor_preco, P / G);
}

console.log((1000.0 * menor_preco).toFixed(2));