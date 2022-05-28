var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let dist = (x1, y1, x2, y2) => Math.sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));

while (lines.length) {
    let [r1, x1, y1, r2, x2, y2] = lines.shift().trim().split(' ').map(x => parseInt(x));

    if (dist(x1, y1, x2, y2) <= r1 - r2) {
        console.log("RICO");
    } else {
        console.log("MORTO");
    }
}