#lang sicp

;; Counting change

;; How many different ways can we make change of $1.00,
;; given half-dollars, quarters, dimes, nickles, and pennies?

;; More generally, can we write a procedure to compute the number
;; of ways to change any given amount of money?

;; (The number of ways to change amount a, using n kinds of coins)
;; =
;; (The number of ways to change amount a, using all but the first
;; kind of coin)
;; +
;; (The number of ways to change amount a - d, using all n kinds of coins,
;; where d is the denomination of the first kind of coin)

(define (count-change amount) (cc amount 5))

(define (cc amount kind-of-coin)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kind-of-coin 0)) 0)
        (else (+ (cc amount
                     (- kind-of-coin 1))
                 (cc (- amount
                        (first-denomination kind-of-coin))
                     kind-of-coin)))))

(define (first-denomination kind-of-coin)
  (cond ((= kind-of-coin 1) 1)
        ((= kind-of-coin 2) 5)
        ((= kind-of-coin 3) 10)
        ((= kind-of-coin 4) 25)
        ((= kind-of-coin 5) 50)))

;; example use
(count-change 100)