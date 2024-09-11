(def n (atom (read-string (read-line))))
(reset! n (+ @n (- 1 (mod @n 2))))

(doseq [i (range 0 6)]
  (printf "%d\n" (+ @n (* i 2))))