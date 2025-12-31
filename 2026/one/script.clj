(require '[clojure.string :as str])
(def testdata (slurp "testdata.txt"))
(def path "testdata.txt")
(def realpath "data.txt")

(defn parse-line [line]
  (let [[dir & number] line] [(str dir) (parse-long (apply str number))]))

(defn =1 [a b] (if (= a b) 1 0))
(defn do-action [[cur_pos num_zero] [dir number]]
  (let [pos (if (= dir "L") (mod (- (+ cur_pos 100) (mod number 100)) 100) (mod (+ cur_pos (mod number 100)) 100))]
    [pos (+ num_zero (=1 pos 0))]))


(->> "./data.txt"
     (slurp)
     (str/split-lines)
     (map parse-line)
     (reduce do-action [50 0]))

(do-action 50 ["L" 68])
(do-action 82 ["L" 30])
(do-action 52 ["R" 48])


