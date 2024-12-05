(let [l (read-string (read-line))
      c (read-string (read-line))]
  (printf "%d\n" (+ (* l c) (* (- l 1) (- c 1))))
  (printf "%d\n" (* 2 (- (+ l c) 2))))