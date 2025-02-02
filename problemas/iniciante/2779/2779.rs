use std::collections::HashSet;
use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    input = String::new();
    io::stdin().read_line(&mut input);
    let m: i32 = input.trim().parse().unwrap();

    let mut figurinhas: HashSet<i32> = HashSet::new();
    for _ in 0..m {
        input = String::new();
        io::stdin().read_line(&mut input);
        let x: i32 = input.trim().parse().unwrap();

        figurinhas.insert(x);
    }

    println!("{}", n - figurinhas.len() as i32);
}
