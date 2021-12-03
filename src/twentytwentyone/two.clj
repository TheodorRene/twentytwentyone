(ns twentytwentyone.two
  (:gen-class))

(require '[clojure.string :as str])

(def path "./resources/two.txt")
;;(def test_ "./resources/two_test.txt")

(defn parse-input [line]
  (let [[dir value] (str/split line #" ")]
    {:direction dir
     :value (Integer/parseInt value)}))

(def data (map parse-input
               (str/split-lines
                (slurp path))))

(defn do-input [liste, cur_val]
  (let [{:keys [direction value]} (first liste)
        [x y] cur_val
        next-list (rest liste)
        next-val (case direction
                   "forward" [(+ x value) y]
                   "up" [x (- y value)]
                   "down" [x (+ y value)]
                   :gurba [x y])]

    (if (empty? next-list)
      next-val
      (do-input next-list next-val))))

(let [[x y] (do-input data [0 0])]
  (* x y))

(defn do-input2 [liste, cur_val]
  (let [{:keys [direction value]} (first liste)
        [x y z] cur_val
        next-list (rest liste)
        next-val (case direction
                   "forward" [(+ x value) (+ y (* value z)) z]
                   "up" [x y (- z value)]
                   "down" [x y (+ z value)]
                   :gurba [x y z])]

    (if (empty? next-list)
      next-val
      (do-input2 next-list next-val))))

(let [[x y] (do-input2 data [0 0 0])]
  (* x y))
