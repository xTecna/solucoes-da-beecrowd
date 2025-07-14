(require '[clojure.string :as str])

(defn dist [x1 y1 x2 y2]
  (Math/sqrt (+ (* (- x2 x1) (- x2 x1)) (* (- y2 y1) (- y2 y1)))))

(defn processa [L C r1 r2]
  (let [x1 r1
        y1 r1
        x2 (- L r2)
        y2 (- C r2)
        distancia (dist x1 y1 x2 y2)]
    (if (or (< L (* 2 r1)) (< C (* 2 r1)) (< L (* 2 r2)) (< C (* 2 r2)) (< distancia (+ r1 r2)))
      (printf "N\n")
      (printf "S\n"))))

(def linhas (line-seq (clojure.java.io/reader *in*)))

(doseq [linha linhas]
  (let [[L C r1 r2] (map read-string (str/split linha #" "))]
    (when (not (and (== L 0) (== C 0) (== r1 0) (== r2 0))) (processa L C r1 r2))))
