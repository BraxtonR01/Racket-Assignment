#lang racket
(define (sum-angles n)
  (if (> n 2)
  (* 180 (- n 2))
  "Not Applicable"
  )
  )

;tests:
(check-expect (sum-angles 5) 540)
(check-expect (sum-angles 2) "Not Applicable")
(check-expect (sum-angles 3) 180)
