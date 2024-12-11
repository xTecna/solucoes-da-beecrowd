use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let l = input.trim();

    if let Some(letra) = l.chars().next() {
        let valor = letra as u32;
        println!("{}", valor - 64);
    }
}
