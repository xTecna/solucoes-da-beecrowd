var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

while (lines.length) {
    let [a, b] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let carry = 0;
    let resposta = 0;
    while (a > 0 && b > 0) {
        if (a % 10 + b % 10 + carry > 9) {
            carry = 1;
            ++resposta;
        } else {
            carry = 0;
        }

        a = Math.floor(a / 10);
        b = Math.floor(b / 10);
    }

    while (a > 0) {
        if (a % 10 + carry > 9) {
            carry = 1;
            ++resposta;
        } else {
            carry = 0;
        }

        a = Math.floor(a / 10);
    }

    while (b > 0) {
        if (b % 10 + carry > 9) {
            carry = 1;
            ++resposta;
        } else {
            carry = 0;
        }

        b = Math.floor(b / 10);
    }

    if (resposta === 0) console.log('No carry operation.');
    else if (resposta === 1) console.log('1 carry operation.');
    else console.log(`${resposta} carry operations.`);
}
