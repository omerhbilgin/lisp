#lang sicp

;; Pascal's triangle

;; Write a procedure that computes elements of Pascal's triangle
;; by means of a recursive process.

(define (pascal layer position)
  (cond ((or (= position 1) (= position layer)) 1)
        (else (+
               (pascal (- layer 1) (- position 1))
               (pascal (- layer 1) position)))))
