process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => { 
    const lines = input.trim().split('\n');
    let [codigo, quantidade] = lines[0].split(' ').map(x => parseInt(x));

    const precos = [4.00, 4.50, 5.00, 2.00, 1.50];
    console.log(`Total: R$ ${(quantidade * precos[codigo - 1]).toFixed(2)}`);
});