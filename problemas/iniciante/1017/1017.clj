(def tempo (read-string (read-line)))
(def velocidade (read-string (read-line)))

(println (format "%.3f" (/ (* tempo velocidade) 12.0)))