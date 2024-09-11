use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut senha = input.trim();

    while senha != "2002" {
        println!("Senha Invalida");

        input = String::new();
        io::stdin().read_line(&mut input);
        senha = input.trim();
    }
    println!("Acesso Permitido");
}
