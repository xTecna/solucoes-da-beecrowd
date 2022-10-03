const imprimeLinha = () => {
    let linha = '';
    for (let i = 0; i < 39; ++i) {
        linha += '-';
    }
    console.log(linha);
};

const imprimeMeio = (texto, indice) => {
    let espacos = Math.max(0, indice - 2) + texto.length;
    let resto = 37 - espacos + 1;
    console.log('|' + texto.padStart(espacos) + '|'.padStart(resto));
};

imprimeLinha();
imprimeMeio("x = 35", 1);
imprimeMeio("", 1);
imprimeMeio("x = 35", 17);
imprimeMeio("", 1);
imprimeMeio("x = 35", 33);
imprimeLinha();