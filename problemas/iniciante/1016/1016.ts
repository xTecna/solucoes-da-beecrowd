process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => { 
    const lines = input.trim().split('\n');
    let [distancia] = lines.map(x => parseInt(x));

    console.log(`${distancia * 2} minutos`);
});