(def f (transient (vec (repeat 101 -1))))
(assoc! f 1 1)

(defn feynman [n]
  (if (== (nth f n) -1)
    (assoc! f n (+ (feynman (- n 1)) (* n n))) ())
  (nth f n))

(defn leitura []
  (loop []
    (let [n (read-string (read-line))]
      (if (zero? n)
        ()
        (do
          (printf "%d\n" (feynman n))
          (recur))))))

(leitura)