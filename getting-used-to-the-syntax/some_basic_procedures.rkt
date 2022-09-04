#lang sicp
;; >=
(define (>= x y)
  (not (> y x)))

;; biggest of two elements
(define (biggest-of-two x y)
  (if (>= x y) x y))

;; smallest of two elements
(define (smallest-of-two x y)
  (if (>= x y) y x))

;; biggest of three elements
(define (biggest-of-three x y z)
  (biggest-of-two x (biggest-of-two y z)))

;; smallest of three elements
(define (smallest-of-three x y z)
  (smallest-of-two x (smallest-of-two y z)))

;; middle of three elements
(define (middle-of-three x y z)
  (cond ((= x (smallest-of-three x y z)) (smallest-of-two y z))
        (else (middle-of-three y z x))))

;; square a number
(define (square x) (* x x))

;; the procedure "solution" returns the sum of squares of
;; two biggest numbers out of three numbers
(define (solution x y z)
  (let ((big (biggest-of-three x y z)) (mid (middle-of-three x y z)))
    (+ (square big) (square mid))))
        
