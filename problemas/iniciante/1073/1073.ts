process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => {
    let X = parseInt(input.trim());
    X -= (X % 2);
    for(let i = 2; i <= X; i += 2){
        console.log(`${i}^2 = ${i * i}`);
    }
});