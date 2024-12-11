use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let cartas = input.trim();

        if cartas.contains("A") && cartas.contains("K") && cartas.contains("Q") && cartas.contains("J") {
            println!("Aaah muleke");
        } else {
            println!("Ooo raca viu");
        }
    }
}
