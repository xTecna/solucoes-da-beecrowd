(let [n (read-string (read-line))]
  (printf "%.1f %.1f\n" (/ n (Math/log n)) (* 1.25506 (/ n (Math/log n)))))