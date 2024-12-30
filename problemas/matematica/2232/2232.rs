use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let t: i32 = input.trim().parse().unwrap();

    for _ in 0..t {
        input = String::new();
        io::stdin().read_line(&mut input);
        let n: i32 = input.trim().parse().unwrap();

        println!("{}", (1_u64 << n) - 1);
    }
}
