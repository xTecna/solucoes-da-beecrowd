var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());

    for (let i = 0; i < N; ++i) {
        let frase = lines.shift();
        console.log('I am Toorg!');
    }
}