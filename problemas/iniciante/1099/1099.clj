(require '[clojure.string :as str])

(defn quantidadeImpares [x, y] (+ (quot (- y x) 2) 1))
(defn somaPA [a1, an, n] (quot (* (+ a1 an) n) 2))

(def n (read-string (read-line)))
(doseq [_ (range 0 n)]
  (def entrada (map read-string (str/split (read-line) #" ")))
  (def x (nth entrada 0))
  (def y (nth entrada 1))
  (def a (min x y))
  (def b (max x y))
  (def c (+ a (mod (Math/abs a) 2) 1))
  (def d (- b (mod (Math/abs b) 2) 1))
  (if (> c d) (println 0) (println (somaPA c d (quantidadeImpares c d)))))