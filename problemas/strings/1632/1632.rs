use std::io;

fn variacoes(letra: char) -> i32 {
    if letra == 'A' || letra == 'E' || letra == 'I' || letra == 'O' || letra == 'S' {
        return 3;
    } else {
        return 2;
    }
}

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let senha: Vec<char> = input.trim().to_uppercase().chars().collect();

        let mut resposta = 1;
        for i in 0..senha.len() {
            resposta *= variacoes(senha[i]);
        }
        println!("{}", resposta);
    }
}
