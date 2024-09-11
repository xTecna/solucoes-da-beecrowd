use std::io;

fn main() {
    let mut input = String::new();

    io::stdin().read_line(&mut input);
    
    let mut a: i32 = input.trim().parse().unwrap();

    println!("{}:{}:{}", a/3600, (a%3600)/60, a%60);
}