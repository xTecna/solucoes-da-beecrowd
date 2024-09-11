(require '[clojure.string :as str])

(defn processa [k]
  (let [[n m] (map read-string (str/split (read-line) #" "))]
    (doseq [_ (range 0 k)]
      (let [[a b] (map read-string (str/split (read-line) #" "))
            x (- a n)
            y (- b m)]
        (if (and (> x 0) (> y 0))
          (printf "NE\n")
          (if (and (> x 0) (< y 0))
            (printf "SE\n")
            (if (and (< x 0) (> y 0))
              (printf "NO\n")
              (if (and (< x 0) (< y 0))
                (printf "SO\n")
                (printf "divisa\n")))))))))

(defn leitura []
  (loop []
    (let [n (read-string (read-line))]
      (if (zero? n)
        ()
        (do
          (processa n)
          (recur))))))

(leitura)
