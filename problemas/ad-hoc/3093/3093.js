let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let n = parseInt(lines.shift());
for (let i = 0; i < n; ++i) {
    let cartas = lines.shift().trim();

    if (cartas.indexOf("A") != -1 && cartas.indexOf("K") != -1 && cartas.indexOf("Q") != -1 && cartas.indexOf("J") != -1) {
        console.log("Aaah muleke");
    } else {
        console.log("Ooo raca viu");
    }
}