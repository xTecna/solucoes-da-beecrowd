use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let mut x: i32 = input.trim().parse().unwrap();
    x += 1 - (x % 2);

    for i in 0..6 {
        println!("{}", x + (2 * i));
    }
}
