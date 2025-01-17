use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut grito = String::new();
    for i in 0..n {
        grito.push_str("a");
    }

    println!("Ent{}o eh N{}t{}l!", grito, grito, grito);
}
