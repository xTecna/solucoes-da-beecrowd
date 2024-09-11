use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for i in 1..11 {
        println!("{} x {} = {}", i, n, i * n);
    }
}
