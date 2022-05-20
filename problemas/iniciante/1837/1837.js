var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const calcula = (x, y) => {
    let quociente;

    if (x > 0)
        if (y > 0)
            quociente = Math.floor(x / y);
        else
            quociente = Math.ceil(x / y);
    else
        if (y > 0)
            quociente = Math.floor(x / y);
        else
            quociente = Math.ceil(x / y);

    quociente = parseInt(quociente);

    return `${quociente} ${x - (y * quociente)}`;
};

let [a, b, q] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(calcula(a, b, q));
