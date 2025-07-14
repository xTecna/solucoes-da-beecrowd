(require '[clojure.string :as str])

(defn dist [x1 y1 x2 y2]
  (Math/sqrt (+ (* (- x2 x1) (- x2 x1)) (* (- y2 y1) (- y2 y1)))))

(defn raio [r1 r2]
  (* (- r2 r1) (- r2 r1)))

(def linhas (line-seq (clojure.java.io/reader *in*)))

(doseq [linha linhas]
  (def entrada (map read-string (str/split linha #" ")))
  (def r1 (nth entrada 0))
  (def x1 (nth entrada 1))
  (def y1 (nth entrada 2))
  (def r2 (nth entrada 3))
  (def x2 (nth entrada 4))
  (def y2 (nth entrada 5))
  (if (<= (dist x1 y1 x2 y2) (- r1 r2)) (printf "RICO\n") (printf "MORTO\n")))
