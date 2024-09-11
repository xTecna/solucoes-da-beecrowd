process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => {
    const lines = input.trim().split('\n');
    const [x1, y1] = lines[0].split(' ').map(x => parseFloat(x));
    const [x2, y2] = lines[1].split(' ').map(x => parseFloat(x));

    console.log((Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1))).toFixed(4));
});