(let [m (read-string (read-line))
      a (read-string (read-line))
      b (read-string (read-line))
      c (- m a b)]
  (printf "%d\n" (max a (max b c))))