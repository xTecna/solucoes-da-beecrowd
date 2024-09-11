fn main() {
    for i in 0..5 {
        for j in 0..3 {
            println!("I={} J={}", 1 + 2 * i, 7 + 2 * i - j);
        }
    }
}
