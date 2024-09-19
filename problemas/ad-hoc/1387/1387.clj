(require '[clojure.string :as str])

(defn leitura []
  (loop []
    (let [[l r] (map read-string (str/split (read-line) #" "))]
      (if (and (zero? l) (zero? r))
        ()
        (do
          (printf "%d\n" (+ l r))
          (recur))))))

(leitura)
