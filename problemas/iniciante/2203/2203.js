var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const dist = (x1, y1, x2, y2) => Math.sqrt(((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)));

while (lines.length) {
    let [Xf, Yf, Xi, Yi, Vi, R1, R2] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let distancia = dist(Xf, Yf, Xi, Yi);
    let distancia_percorrida = Vi * 1.5;

    if (distancia + distancia_percorrida <= R1 + R2) {
        console.log('Y');
    } else {
        console.log('N');
    }
}