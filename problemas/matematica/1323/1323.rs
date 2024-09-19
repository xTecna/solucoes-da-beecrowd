use std::io;

fn feynman(n: i32) -> i32 {
    if n == 1 {
        return 1;
    }
    return feynman(n - 1) + (n * n);
}

fn main() {
    loop {
        let mut input = String::new();
        io::stdin().read_line(&mut input);
        let n: i32 = input.trim().parse().unwrap();

        if n == 0 {
            break;
        }

        println!("{}", feynman(n));
    }
}
