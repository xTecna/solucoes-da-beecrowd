process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => {
    var lines = input.split('\n');

    let N = parseInt(lines.shift()!);

    for (let i = 1; i <= N; ++i) {
        console.log(`${i} ${i * i} ${i * i * i}`);
    }
});