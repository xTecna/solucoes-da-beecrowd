(require '[clojure.java.io :as io])
(require '[clojure.string :as str])

(let [pi 3.141592654
      entrada (vec (line-seq (io/reader *in*)))]
  (doseq [linha entrada]
    (let [[a b c] (map read-string (str/split linha #" "))]
      (printf "%.2f\n" (* 5.0 (+ (* (Math/tan (* a (/ pi 180.0))) b) c))))))