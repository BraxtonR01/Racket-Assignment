#lang racket
(define (my-positive n)
  (cond
    [(= n 0) #f]
    [(> n 0) #t]
    [(< n 0) #f]
    )
  )

;tests:
(check-expect (my-positive 3) #t)
(check-expect (my-positive -3) #f)
(check-expect (my-positive 0) #f)