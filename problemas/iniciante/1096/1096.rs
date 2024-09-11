fn main() {
    for i in (1..10).step_by(2) {
        for j in 0..3 {
            println!("I={} J={}", i, 7 - j);
        }
    }
}
