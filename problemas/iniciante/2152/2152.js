var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = lines.shift();
for (let i = 0; i < T; ++i) {
    let [H, M, O] = lines.shift().trim().split(' ');
    O = parseInt(O);

    console.log(`${H.padStart(2, '0')}:${M.padStart(2, '0')} - A porta ${O ? "abriu" : "fechou"}!`);
}