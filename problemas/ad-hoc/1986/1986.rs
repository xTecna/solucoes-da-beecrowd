use std::io;

fn valor(simbolo: char) -> u8 {
    if simbolo < 'A' {
        return simbolo as u8 - '0' as u8;
    }
    if simbolo >= 'a' {
        return simbolo as u8 - 'a' as u8 + 10;
    }
    return simbolo as u8 - 'A' as u8 + 10;
}

fn converteParaDecimal(numero: &str) -> u8 {
    let letras: Vec<char> = numero.chars().collect();

    let mut resposta: u8 = 0;
    for letra in letras {
        resposta *= 16;
        resposta += valor(letra);
    }

    return resposta;
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let numeros: Vec<&str> = input.trim().split(" ").collect();

    let mut resposta = String::new();
    for numero in numeros {
        resposta.push(char::from(converteParaDecimal(numero)));
    }
    println!("{}", resposta);
}