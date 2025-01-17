(require '[clojure.java.io :as io])
(require '[clojure.string :as str])

(let [entrada (vec (line-seq (io/reader *in*)))]
  (doseq [linha entrada]
    (let [[a b] (map read-string (str/split linha #" "))]
      (when (or (not= a 0) (not= b 0))
        (printf "%d\n" (- (* 2 a) b))))))