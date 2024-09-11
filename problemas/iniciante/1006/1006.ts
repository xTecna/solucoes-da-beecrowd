process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => {
    const lines = input.trim().split('\n');
    const [a, b, c] = lines.map((x) => parseFloat(x));

    console.log(`MEDIA = ${((2 * a + 3 * b + 5 * c) / 10).toFixed(1)}`);
});