(ns twentytwentyone.four 
  (:require
    [clojure.string :as str]
    [clojure.set :as s]
    [clojure.core.matrix :as mx]))

(def path "./resources/four.txt")

(def bingo_nums (->> path 
    (slurp)
    (str/split-lines)
    (first)
    (#(str/split % #","))
    (map #(Integer/parseInt %))
    ))

(filter #(not (str/blank? %)) ["hei",""])

(defn parse-single-row [row]
  (->> row
    (filter #(not (str/blank? %)))
    (map #(Integer/parseInt %))
    )
  )

(defn parse-single-board [board]
  (->> board
       (map #(str/split % #" ")) 
       (map parse-single-row) 
       )
  )

(defn check-row [cur-nums row]
  (s/subset? (set row) (set cur-nums))
  )


(defn has-bingo [cur-nums board]
  (let [transposed (mx/transpose board)
        any-rows? (some identity (map #(check-row cur-nums %) board))
        any-cols? (some identity (map #(check-row cur-nums %) transposed))]
    (or any-rows? any-cols?) 
  )
)
(defn return-if-bingo [cur-nums board]
  (if (has-bingo cur-nums board)
    board
    nil
  )
)

(def b [[1 2 3][4 5 6]])
(def b_t (mx/transpose b))
;;
(return-if-bingo [4 1 3] b_t)
(return-if-bingo [4 1] b_t)


(defn do-stuff [nums cur-nums boards]
  (let [[x & xs] nums
        new-nums (cons x cur-nums)
        ]
    (if (nil? xs)
      (throw (Exception. "Hit the end with not matches"))
      (let [possible-boards (filter some? (map #(return-if-bingo new-nums %) boards))]
        (if (empty? possible-boards)
          (do-stuff xs new-nums boards)
          [x (first possible-boards) new-nums]
          )
        )
      )
    )

  )
(defn do-stuff-2 [nums cur-nums boards last-board-data]
  (let [[x & xs] nums
        new-nums (cons x cur-nums)
        ]
    (if (nil? xs)
        [(:last-num last-board-data) (:board last-board-data) (:nums-marked last-board-data)]
      (let [possible-boards (filter some? (map #(return-if-bingo new-nums %) boards))]
        (if (empty? possible-boards)
          (do-stuff-2 xs new-nums boards last-board-data)
          (do-stuff-2 xs new-nums boards {:board (first possible-boards) :last-num x :nums-marked new-nums})
          )
        )
      )
    )

  )

(defn final [stuff]
  (let [[final-num board final-nums] stuff
        final-nums-s (set final-nums)
        flat-board (set (flatten board))
        ]
      (->> flat-board
      (#(s/difference % final-nums-s))
      (println)
      (reduce +)
      (* final-num)
      )
  )
)

(def boards (->> path
     (slurp)
     (#(str/split % #"\n\n"))
     (drop 1)
     (map str/split-lines)
     (map parse-single-board)
     )
    )

(final (do-stuff bingo_nums [] boards))
;; this did not work (final (do-stuff-2 bingo_nums [] boards nil))

