#lang sicp

;; factorial - recursive
(define (fact n)
  (if (< n 1)
      1
      (* n (fact (- n 1)))))

;; factorial - iterative
(define (factorial n)
  (define (iter product count)
    (if (> count n)
        product
        (iter (* count product) (+ count 1))))
  (iter 1 1))

;; fibonacci - recursive
(define (fib_ n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib_ (- n 1))
                 (fib_ (- n 2))))))

;; fibonacci - iterative
(define (fib n)
  (define (fib-iter a b count)
    (if (= count 0)
        a
        (fib-iter b (+ a b) (- count 1))))
  (fib-iter 0 1 n))