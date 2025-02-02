use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let c: i32 = input.trim().parse().unwrap();

    for _ in 0..c {
        input = String::new();
        io::stdin().read_line(&mut input);
        let n: i32 = input.trim().parse().unwrap();

        if n <= 8000 {
            println!("Inseto!");
        } else {
            println!("Mais de 8000!");
        }
    }
}
