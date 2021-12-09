(ns twentytwentyone.five
  (:require
    [clojure.string :as str])
  )


(defn parse-point [point]
  (->> point
       (str/trim)
       (#(str/split % #","))
       (map #(Integer/parseInt %))
  )
)

(defn parse-line [line]
  (let [[one two] line]
    (map parse-point [one two])
   )
  )

(defn is-v-or-h? [point]
  (let [ [x1 y1 x2 y2](flatten point) ]
    (or (= x1 x2) (= y1 y2))
    )
  )

(defn gen-points [line]
  (let [ [x1 y1 x2 y2](flatten line)
         [x_smol x_big] (sort [x1 x2])
         [y_smol y_big] (sort [y1 y2])
        ]
  (for [x (range x_smol (+ 1 x_big)) y (range y_smol (+ 1 y_big))] [x y])
  )
)

(gen-points [[1 1] [3 3]])
(gen-points [[3 3] [1 1]])
(gen-points [[3 1] [1 3]])

(defn gen-points-diag [line]
  (let [ [x1 y1 x2 y2](flatten line)
         [x_smol x_big] (sort [x1 x2])
         [y_smol y_big] (sort [y1 y2])
        ]
  )

(gen-points [[1 1][1 3]])
(gen-points [[1 3][1 1]])
(gen-points [[9 7] [7 7]])
(gen-points [[0 9] [5 9]])

(defn single-point-to-sin [p]
  (let [[x y] p]
    (str (str x) "," (str y))
  )
)

(def path-test "./resources/five_text.txt")
(def path-carl "./resources/five_carl.txt")
(def path "./resources/five.txt")

(->> path
     (slurp)
     (str/split-lines)
     (map #(str/split % #"\-\>"))
     (map parse-line) ;; [(x1,y1), (x2, y2)]
     (filter is-v-or-h?)
     (map gen-points) 
     (mapcat identity) ;; Flatten one level -> [(x,y)]
     (map single-point-to-sin)
     (frequencies)
     (vals)
     (filter #(<= 2 %))
     (count)
)

