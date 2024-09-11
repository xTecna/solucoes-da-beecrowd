process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => { 
    const lines = input.trim().split('\n');

    let pares = 0;
    for(let line of lines){
        let numero = parseInt(line);

        if(numero % 2 === 0){
            pares += 1;
        }
    }

    console.log(`${pares} valores pares`);
});