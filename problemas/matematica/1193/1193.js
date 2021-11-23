var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const convertePraLetra = (numero) => String.fromCharCode('a'.charCodeAt(0) + numero);

const convertePraNumero = (letra) => letra.charCodeAt(0) - 'a'.charCodeAt(0) + 10;

const binToDec = (bin) => {
    let potencia = 1;

    return bin.split('').reverse().reduce((acc, cur) => {
        let resposta = acc + parseInt(cur) * potencia;
        potencia *= 2;

        return resposta;
    }, 0);
};

const decToBin = (dec) => {
    let bin = "";

    while (dec) {
        bin = (dec % 2).toString() + bin;
        dec = Math.floor(dec / 2);
    }

    return bin;
};

const decToHex = (dec) => {
    let hex = "";

    while (dec) {
        if (dec % 16 > 9) {
            hex = convertePraLetra(dec % 16 - 10) + hex;
        } else {
            hex = (dec % 16).toString() + hex;
        }
        dec = Math.floor(dec / 16);
    }

    return hex;
};

const hexToDec = (hex) => {
    let potencia = 1;

    return hex.split('').reverse().reduce((acc, cur) => {
        let resposta = acc + (/[a-f]/.test(cur) ? convertePraNumero(cur) : parseInt(cur)) * potencia;
        potencia *= 16;

        return resposta;
    }, 0);
};

const binToHex = (bin) => decToHex(binToDec(bin));

const hexToBin = (hex) => decToBin(hexToDec(hex));

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let [numero, base] = lines.shift().trim().split(' ');

    console.log(`Case ${i + 1}:`);
    if (base === 'bin') {
        console.log(`${binToDec(numero)} dec`);
        console.log(`${binToHex(numero)} hex`);
    } else if (base === 'dec') {
        numero = parseInt(numero);
        console.log(`${decToHex(numero)} hex`);
        console.log(`${decToBin(numero)} bin`);
    } else {
        console.log(`${hexToDec(numero)} dec`);
        console.log(`${hexToBin(numero)} bin`);
    }
    console.log('');
}
