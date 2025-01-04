(let [x (read-string (read-line))
      n (atom x)
      conta (atom 7)]
  (when (> @n 100) (do (reset! conta (+ @conta (* (- @n 100) 5))) (reset! n 100)))
  (when (> @n 30) (do (reset! conta (+ @conta (* (- @n 30) 2))) (reset! n 30)))
  (when (> @n 10) (reset! conta (+ @conta (- @n 10))))
  (printf "%d\n" @conta))