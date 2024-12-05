use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut vitorias = 0;
    for _ in 0..n {
        input = String::new();
        io::stdin().read_line(&mut input);
        let x: i32 = input.trim().parse().unwrap();

        if x != 1 {
            vitorias += 1;
        }
    }

    println!("{}", vitorias);
}
