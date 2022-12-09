use std::fs;
pub fn task1() {
    let input = "src/one/input.txt";

    let contents = fs::read_to_string(input).expect("Should have been able to read the file");
    let x = contents
        .split("\n\n")
        .map(|x: &str| -> Vec<i32> {
            x.split("\n")
                .flat_map(|x: &str| -> Result<i32, _> { x.parse() })
                .collect()
        })
        .map(|y: Vec<i32>| -> i32 { y.into_iter().sum() })
        .max();
    println!("Taks1: \n{:?}", x);
}

pub fn task2() {
    let input = "src/one/input.txt";

    let contents = fs::read_to_string(input).expect("Should have been able to read the file");
    let [x, y, z]: [i32; 3] = contents
        .split("\n\n")
        .map(|x: &str| -> Vec<i32> {
            x.split("\n")
                .flat_map(|x: &str| -> Result<i32, _> { x.parse() })
                .collect()
        })
        .map(|y: Vec<i32>| -> i32 { y.into_iter().sum() })
        .fold([0, 0, 0], |mut acc: [i32; 3], curr| -> [i32; 3] {
            // Mutation within a fold ah!!! not good!
            acc.sort();
            if curr > acc[0] {
                acc[0] = curr;
                acc
            } else if curr > acc[1] {
                acc[1] = curr;
                acc
            } else if curr > acc[2] {
                acc[2] = curr;
                acc
            } else {
                acc
            }
        });
    println!("Task2:\n{:?}", x + y + z);
}
