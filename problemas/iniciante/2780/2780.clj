(let [d (read-string (read-line))]
  (if (<= d 800)
    (printf "1\n")
    (if (<= d 1400)
      (printf "2\n")
      (printf "3\n"))))