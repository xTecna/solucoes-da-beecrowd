(require '[clojure.string :as str])

(let [n (read-string (read-line))]
  (doseq [_ (range 0 n)]
    (let [linha (read-line)]
      (when linha
        (let [entrada (str/split linha #" ")
              x (read-string (nth entrada 0))
              y (read-string (nth entrada 1))]
          (printf "%d cm2\n" (quot (* x y) 2)))))))
