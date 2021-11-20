var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

for(let i = 0; i < N; ++i){
    let [Ax, Ay, Bx, By, Cx, Cy, Dx, Dy, Rx, Ry] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(Ax <= Rx && Dx <= Rx &&
                Rx <= Bx && Rx <= Cx &&
                Ay <= Ry && By <= Ry &&
                Ry <= Cy && Ry <= Dy ? 1 : 0);
}
