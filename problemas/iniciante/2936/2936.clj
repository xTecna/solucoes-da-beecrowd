(let [curupira (read-string (read-line))
      boitata (read-string (read-line))
      boto (read-string (read-line))
      mapinguari (read-string (read-line))
      iara (read-string (read-line))]
  (printf "%d\n" (+ 225 (* 300 curupira) (* 1500 boitata) (* 600 boto) (* 1000 mapinguari) (* 150 iara))))