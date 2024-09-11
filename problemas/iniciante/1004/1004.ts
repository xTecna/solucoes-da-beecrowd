process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => {
    const lines = input.trim().split('\n');
    const [a, b] = lines.map((x) => parseFloat(x));

    console.log(`PROD = ${a * b}`);
});