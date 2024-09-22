use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let l = input.trim();

    let mut soma = 0;
    for ch in l.chars() {
        soma += ch as u32;
    }
    println!("{}{}", l, soma % 2);
}
