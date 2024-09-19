use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    for i in 1..(n + 1) {
        if n % i == 0 {
            println!("{}", i);
        }
    }
}
