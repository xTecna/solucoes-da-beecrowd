(def k (read-string (read-line)))

(if (== k 1) (printf "Top 1\n")
    (if (<= k 3) (printf "Top 3\n")
        (if (<= k 5) (printf "Top 5\n")
            (if (<= k 10) (printf "Top 10\n")
                (if (<= k 25) (printf "Top 25\n")
                    (if (<= k 50) (printf "Top 50\n")
                        (printf "Top 100\n")))))))