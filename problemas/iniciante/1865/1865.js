var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let [nome, forca] = lines.shift().trim().split(' ');

    console.log(`${nome === "Thor" ? "Y" : "N"}`);
}