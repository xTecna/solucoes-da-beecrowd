process.stdin.resume();
process.stdin.setEncoding('utf8');

let input = '';
let lineCount = 0;

process.stdin.on('data', (chunk) => {
    input += chunk;
});

process.stdin.on('end', () => { 
    const lines = input.trim().split('\n');

    let positivos = 0;
    for(let line of lines){
        let numero = parseInt(line);

        if(numero > 0){
            positivos += 1;
        }
    }

    console.log(`${positivos} valores positivos`);
});