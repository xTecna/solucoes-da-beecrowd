use std::io;

fn main() {
    let mut input = String::new();
    io::stdin().read_line(&mut input);
    let n: i32 = input.trim().parse().unwrap();

    let mut mesas: Vec<i32> = Vec::new();
    for i in 0..(n+1) {
        mesas.push(i)
    }

    input = String::new();
    io::stdin().read_line(&mut input);
    let q: i32 = input.trim().parse().unwrap();

    for _ in 0..q {
        input = String::new();
        io::stdin().read_line(&mut input);
        let numeros: Vec<i32> = input.split_whitespace().map(|s| s.parse().expect("")).collect();
        let e = numeros[0];
        let a = numeros[1];

        if e == 1 {
            let b = numeros[2];

            let temp = mesas[a as usize];
            mesas[a as usize] = mesas[b as usize];
            mesas[b as usize] = temp;
        } else {
            let mut resposta = 0;
            let mut mesa = mesas[a as usize];

            while mesa != a {
                resposta += 1;
                mesa = mesas[mesa as usize];
            }

            println!("{}", resposta);
        }
    }
}
