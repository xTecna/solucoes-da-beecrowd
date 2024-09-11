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
    let impares = 0;
    let positivos = 0;
    let negativos = 0;
    for(let line of lines){
        let numero = parseInt(line);

        if(numero % 2 === 0){
            pares += 1;
        }else{
            impares += 1;
        }

        if(numero > 0){
            positivos += 1;
        }else if(numero < 0){
            negativos += 1;
        }
    }

    console.log(`${pares} valor(es) par(es)`);
    console.log(`${impares} valor(es) impar(es)`);
    console.log(`${positivos} valor(es) positivo(s)`);
    console.log(`${negativos} valor(es) negativo(s)`);
});