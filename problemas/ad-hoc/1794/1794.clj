(require '[clojure.string :as str])

(let [n (read-string (read-line))]
  (let [entrada (str/split (read-line) #" ")
        la (read-string (nth entrada 0))
        lb (read-string (nth entrada 1))]
    (let [entrada2 (str/split (read-line) #" ")
          sa (read-string (nth entrada2 0))
          sb (read-string (nth entrada2 1))]
      (if (and (<= la n) (<= n lb) (<= sa n) (<= n sb)) (printf "possivel\n") (printf "impossivel\n")))))