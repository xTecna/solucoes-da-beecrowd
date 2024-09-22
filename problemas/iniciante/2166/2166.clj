(let [n (read-string (read-line))
      resposta (atom 0.0)]
  (if (= n 0)
    (reset! resposta 1.0)
    (do
      (reset! resposta 2.0)
      (doseq [_ (range 1 n)]
        (reset! resposta (+ 2.0 (/ 1.0 @resposta))))
      (reset! resposta (+ 1.0 (/ 1.0 @resposta)))))
  (printf "%.10f\n" @resposta))