#lang racket
(define (sum n)
  (* .5 (* n (+ n 1)))
  )

;tests:
(check-expect (sum 5) = 15.0)
(check-expect (sum 15) = 120.0)
(check-expect (sum 50) = 1275.0)