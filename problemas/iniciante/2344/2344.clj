(let [nota (read-string (read-line))]
  (if (> nota 85)
    (printf "A\n")
    (if (> nota 60)
      (printf "B\n")
      (if (> nota 35)
        (printf "C\n")
        (if (> nota 0)
          (printf "D\n")
          (printf "E\n"))))))