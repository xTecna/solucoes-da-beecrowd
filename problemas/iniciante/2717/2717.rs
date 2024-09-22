use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let parts: Vec<&str> = input.split(" ").collect();
    let a: i32 = parts[0].trim().parse().unwrap();
    let b: i32 = parts[1].trim().parse().unwrap();

    if a + b <= n {
        println!("Farei hoje!");
    } else {
        println!("Deixa para amanha!");
    }
}
