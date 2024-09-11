process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => {
    let X = parseInt(input.trim());
    X += (1 - (X % 2));
    
    for(let i = 0; i < 6; ++i){
        console.log(X + (2 * i));
    }
});