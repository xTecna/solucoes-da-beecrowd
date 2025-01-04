(let [b (read-string (read-line))
      t (read-string (read-line))]
  (if (> (+ b t) 160) (printf "1\n") (if (< (+ b t) 160) (printf "2\n") (printf "0\n"))))