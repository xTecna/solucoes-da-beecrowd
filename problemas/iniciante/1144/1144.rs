use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut n: i32 = input.trim().parse().unwrap();

    for i in 1..(n + 1) {
        println!("{} {} {}", i, i * i, i * i * i);
        println!("{} {} {}", i, i * i + 1, i * i * i + 1);
    }
}
