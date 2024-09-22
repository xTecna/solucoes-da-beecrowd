use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let k: i32 = input.trim().parse().unwrap();

    if k == 1 {
        println!("Top 1");
    } else if k <= 3 {
        println!("Top 3");
    } else if k <= 5 {
        println!("Top 5");
    } else if k <= 10 {
        println!("Top 10");
    } else if k <= 25 {
        println!("Top 25");
    } else if k <= 50 {
        println!("Top 50");
    } else {
        println!("Top 100");
    }
}
