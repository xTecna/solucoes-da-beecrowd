let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let N = parseInt(lines.shift());

var grito = "";
for (let i = 0; i < N; ++i) {
    grito += "a";
}

console.log(`Ent${grito}o eh N${grito}t${grito}l!`);