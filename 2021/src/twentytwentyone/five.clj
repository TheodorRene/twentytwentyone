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


(defn gen-points-diag-helper [list-of-points end-point new-point incr]
  (let [[x y] new-point
        next-point [(+ x 1) (+ y incr)]
        ]
  (if (= end-point new-point)
    (conj list-of-points new-point)
    (gen-points-diag-helper (conj list-of-points new-point) end-point next-point incr)
    )
  )
  )


(defn gen-points-diag [line]
  (let [ [x1 y1 x2 y2](flatten line)
         [y_smol _] (sort [y1 y2])
         ]
         (if(= y_smol y1)
           (gen-points-diag-helper [] [x2 y2] [x1 y1] 1) ;; upwards /
           (gen-points-diag-helper [] [x2 y2] [x1 y1] -1) ;; downwards \
          )
  )
)

(defn final-gen-points-diag [line]
  (let [ [x1 y1 x2 y2] (flatten line)
         positive-x (if (> x2 x1) [[x1 y1] [x2 y2]] [[x2 y2] [x1 y1]])
         ]
    (gen-points-diag positive-x)
  )
)
(defn generate-points [line]
  (if (is-v-or-h? line)
    (gen-points line)
    (final-gen-points-diag line)
  )
)

(defn single-point-to-sin [p]
  (let [[x y] p]
    (str (str x) "," (str y))
  )
)

(def path "./resources/five.txt")

;; Part 1
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

;; Part 2
(->> path
     (slurp)
     (str/split-lines)
     (map #(str/split % #"\-\>"))
     (map parse-line) ;; [(x1,y1), (x2, y2)]
     (map generate-points) 
     (mapcat identity) ;; Flatten one level -> [(x,y)]
     (map single-point-to-sin)
     (frequencies)
     (vals)
     (filter #(<= 2 %))
     (count)
)


