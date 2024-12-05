(require '[clojure.string :as str])

(let [diametro (read-string (read-line))
      [altura largura profundidade] (map read-string (str/split (read-line) #" "))]
  (if (and (<= diametro altura) (<= diametro largura) (<= diametro profundidade)) (printf "S\n") (printf "N\n")))