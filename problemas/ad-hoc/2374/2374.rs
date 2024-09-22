use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut input2 = String::new();
    io::stdin().read_line(&mut input2);
    let m: i32 = input2.trim().parse().unwrap();

    println!("{}", n - m);
}
