#lang racket
(define (odds-only aloi)
  (if (empty? aloi)
      empty
      (if (odd? (first aloi))
                (cons (first aloi) (odds-only (rest aloi)))
                (odds-only (rest aloi))
                )
      )
  )

;tests:
;(odds-only (cons 1 (cons 2 (cons 3 empty)))) = '(1 3)
;(odds-only (cons 1 (cons 2 (cons 4 empty)))) = '(1)
;(odds-only empty) = '()