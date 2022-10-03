var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const eye = (r, g, b) => parseInt(0.3 * r + 0.59 * g + 0.11 * b);
const mean = (r, g, b) => parseInt((r + g + b) / 3);
const min = (r, g, b) => Math.min(r, Math.min(g, b));
const max = (r, g, b) => Math.max(r, Math.max(g, b));

while (lines.length) {
    let T = parseInt(lines.shift());

    for (let i = 1; i <= T; ++i) {
        let conversao = lines.shift().trim();
        let [R, G, B] = lines.shift().trim().split(' ').map(x => parseInt(x));

        let resposta = `Caso #${i}: `;
        if (conversao === "eye") {
            resposta += `${eye(R, G, B)}`;
        } else if (conversao === "mean") {
            resposta += `${mean(R, G, B)}`;
        } else if (conversao === "max") {
            resposta += `${max(R, G, B)}`;
        } else if (conversao === "min") {
            resposta += `${min(R, G, B)}`;
        }
        console.log(resposta);
    }
}