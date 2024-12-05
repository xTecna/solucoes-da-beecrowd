(defn somaPA [a1 an n] (/ (* n (+ a1 an)) 2))

(let [t (read-string (read-line))]
  (doseq [_ (range t)]
    (let [n (read-string (read-line))]
      (printf "%d\n" (+ (somaPA 1 n n) 1)))))