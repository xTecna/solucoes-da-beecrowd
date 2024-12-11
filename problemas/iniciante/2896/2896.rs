use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let t: i32 = input.trim().parse().unwrap();

    for _ in 0..t {
        input = String::new();
        io::stdin().read_line(&mut input);
        let parts: Vec<&str> = input.split(" ").collect();
        let n: i32 = parts[0].trim().parse().unwrap();
        let k: i32 = parts[1].trim().parse().unwrap();

        println!("{}", n / k + n % k);
    }
}
