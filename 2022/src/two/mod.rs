use std::fs;

#[derive(Copy, Clone, Debug)]
enum R {
    Rock,
    Paper,
    Scissor,
}
#[derive(Copy, Clone, Debug)]
enum O {
    Win,
    Lose,
    Draw,
}

#[derive(Debug)]
struct G {
    enemy: R,
    you: R,
}

#[derive(Debug)]
struct GameOutcome(R, O);

fn line_to_game(line: &str) -> Option<G> {
    let tup: Vec<&str> = line.trim().split(" ").collect();
    if let [e, y] = tup[..] {
        let (enemy, you) = (str_to_roshambo(e)?, str_to_roshambo(y)?);
        Some(G { enemy, you })
    } else {
        println!("Error: {}", line);
        None
    }
}

fn line_to_game_outcome(line: &str) -> Option<GameOutcome> {
    let tup: Vec<&str> = line.trim().split(" ").collect();
    if let [e, y] = tup[..] {
        let (enemy, you) = (str_to_roshambo(e)?, str_to_outcome(y)?);
        Some(GameOutcome(enemy, you))
    } else {
        println!("Error: {}", line);
        None
    }
}
fn str_to_roshambo(s: &str) -> Option<R> {
    match s {
        "A" => Some(R::Rock),
        "B" => Some(R::Paper),
        "C" => Some(R::Scissor),
        "X" => Some(R::Rock),
        "Y" => Some(R::Paper),
        "Z" => Some(R::Scissor),
        _ => None,
    }
}
fn str_to_outcome(s: &str) -> Option<O> {
    match s {
        "X" => Some(O::Lose),
        "Y" => Some(O::Draw),
        "Z" => Some(O::Win),
        _ => None,
    }
}
fn roshambo_to_score(r: R) -> i32 {
    match r {
        R::Rock => 1,
        R::Paper => 2,
        R::Scissor => 3,
    }
}

fn game_to_score(game: G) -> i32 {
    let G { enemy, you } = game;
    let winning_score = match (enemy, you) {
        (R::Rock, R::Rock) => 3,
        (R::Rock, R::Paper) => 6,
        (R::Rock, R::Scissor) => 0,
        (R::Paper, R::Rock) => 0,
        (R::Paper, R::Paper) => 3,
        (R::Paper, R::Scissor) => 6,
        (R::Scissor, R::Rock) => 6,
        (R::Scissor, R::Paper) => 0,
        (R::Scissor, R::Scissor) => 3,
    };
    winning_score + roshambo_to_score(you)
}

fn change_outcome(g: GameOutcome) -> G {
    let GameOutcome(rosh, outcome) = g;
    let your_rosh = match (rosh, outcome) {
        (x, O::Draw) => x,
        (R::Rock, O::Win) => R::Paper,
        (R::Rock, O::Lose) => R::Scissor,
        (R::Paper, O::Win) => R::Scissor,
        (R::Paper, O::Lose) => R::Rock,
        (R::Scissor, O::Win) => R::Rock,
        (R::Scissor, O::Lose) => R::Paper,
    };
    G {
        enemy: rosh,
        you: your_rosh,
    }
}

#[allow(dead_code)]
pub fn task1() {
    let input = "src/two/input.txt";

    let contents = fs::read_to_string(input).expect("Should have been able to read the file");
    let x: i32 = contents
        .split("\n")
        .map(line_to_game)
        .flatten() // Remove None values
        .map(game_to_score)
        .sum();
    // .collect::<Vec<i32>>()
    println!("Task1: \n{:?}", x);
}

#[allow(dead_code)]
pub fn task2() {
    let input = "src/two/input.txt";

    let contents = fs::read_to_string(input).expect("Should have been able to read the file");
    let x: i32 = contents
        .split("\n")
        .map(line_to_game_outcome)
        .flatten()
        .map(change_outcome)
        .map(game_to_score)
        .sum();
    println!("Task2: \n{:?}", x);
}
