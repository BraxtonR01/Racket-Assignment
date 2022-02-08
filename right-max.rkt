#lang racket
(define (right-max alon)
  (if (empty? alon)
      empty
      (if (= (length alon) 1)
          alon
          (if (> (first alon) (first (right-max (rest alon))))
              (cons (first alon) (right-max (rest alon)))
              (cons (first (right-max (rest alon))) (right-max (rest alon)))
              )
          )
      )
  )

;tests:
;(right-max (cons 1 (cons 2 (cons 3 empty)))) = '(3 3 3)
;(right-max (cons 3 (cons 2 (cons 1 empty)))) = '(3 2 1)
;(right-max empty) = '()