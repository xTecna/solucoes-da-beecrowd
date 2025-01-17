let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let n = parseInt(lines.shift());

for (let i = 0; i < n; ++i) {
    let palavra1 = lines.shift();
    let palavra2 = lines.shift();
    let secreta = lines.shift();

    let pos1 = secreta.indexOf("_");
    let pos2 = secreta.indexOf("_", pos1 + 1);

    if (palavra1[pos1] == palavra2[pos2] || palavra1[pos2] == palavra2[pos1]) {
        console.log("Y");
    } else {
        console.log("N");
    }
}