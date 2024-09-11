(def segundos (read-string (read-line)))
(def horas (quot segundos 3600))
(def minutos (quot (mod segundos 3600) 60))

(println (format "%d:%d:%d" horas minutos (mod (mod segundos 3600) 60)))