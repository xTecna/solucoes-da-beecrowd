var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();
let trocos = [4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52, 55, 60, 70, 100, 102, 105, 110, 120, 150, 200];
while (lines.length) {
    let [N, M] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let troco = M - N;
    let possivel = false;
    for (let i = 0; i < trocos.length; ++i) {
        if (troco == trocos[i]) {
            possivel = true;
            break;
        }
    }

    console.log(`${possivel ? '' : 'im'}possible`);
}