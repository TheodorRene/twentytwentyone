(ns twentytwentyone.core

  (:gen-class))

(require '[clojure.string :as str])

;; Day one
(def path "./resources/one.txt")

(def data (map read-string
               (str/split-lines
                (slurp path))))

(defn do-stuff [cur_list cur_count]
  (let [[val1 val2 & remaining] cur_list]
    (cond
      (nil? val2) cur_count
      (> val2 val1) (do-stuff (cons val2 remaining) (+ 1 cur_count))
      :else (do-stuff (cons val2 remaining) cur_count))))

(def dayone_val (do-stuff data 0))
"1: task one"
dayone_val

;; This is a second implemenentation,see previous commit:
;; 54d07f3c13910b5bfe187fdc98f674830e62204b
;; for a possibly easier to read implementation
;; I feel like too much of the computation is done inside the let
(defn task2 [cur_list cur_count]
  (let [[val1 val2 val3 val4 & remaining] cur_list
        sum1 (+ val1 val2 val3)
        sum2 (+ val2 val3 val4)
        is_greater (> sum2 sum1)
        next_val (if is_greater (+ 1 cur_count) cur_count)
        ]
    (if (nil? remaining)
      next_val
      (task2 (drop 1 cur_list) next_val)
      )
    )
  )

(def dayone2_val (task2 data 0))

"1: task two"
dayone2_val

(defn -main
  "I don't do a whole lot ... yet."
  [& args]
  (println "Hello, World!"))
