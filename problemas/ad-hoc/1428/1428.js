let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let t = parseInt(lines.shift());

for (let i = 0; i < t; ++i) {
    let [n, m] = lines.shift().trim().split(" ").map(x => parseFloat(x));

    console.log((Math.ceil((n - 2) / 3) * Math.ceil((m - 2) / 3)).toFixed(0));
}