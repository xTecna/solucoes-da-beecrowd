let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.trim().split("\n");

while (lines.length) {
    let F = parseFloat(lines.shift().trim());

    let lado =
        (F * Math.sin((108 * Math.PI) / 180)) / Math.sin((63 * Math.PI) / 180);
    console.log(lado.toFixed(10));
}
