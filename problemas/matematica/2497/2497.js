let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let teste = 1;
while (true) {
    let n = parseInt(lines.shift());
    if (n == -1) {
        break;
    }

    console.log(`Experiment ${teste}: ${Math.floor(n / 2)} full cycle(s)`);
    teste += 1;
}