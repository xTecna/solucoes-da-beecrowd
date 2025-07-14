var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let dist = (x1, y1, x2, y2) => Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));

while (true) {
    let [L, C, R1, R2] = lines.shift().trim().split(' ').map(x => parseInt(x));
    if (L == 0 && C == 0 && R1 == 0 && R2 == 0) {
        break;
    }

    let [x1, y1, x2, y2] = [R1, R1, L - R2, C - R2];

    let distancia = dist(x1, y1, x2, y2);
    if (L < 2 * R1 || C < 2 * R1 || L < 2 * R2 || C < 2 * R2 || distancia < R1 + R2) {
        console.log("N");
    } else {
        console.log("S");
    }
}