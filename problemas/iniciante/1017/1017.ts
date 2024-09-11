process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => {
    const maior = (a, b) => (a + b + Math.abs(a - b))/2;

    const lines = input.trim().split('\n');
    const [tempo, velocidade] = lines.map(x => parseInt(x));

    console.log(((tempo * velocidade)/12.0).toFixed(3));
});