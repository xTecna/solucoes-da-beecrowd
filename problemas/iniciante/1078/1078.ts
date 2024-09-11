process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => {
    let N = parseInt(input.trim());

    for(let i = 1; i <= 10; ++i){
        console.log(`${i} x ${N} = ${N * i}`);
    }
});