#lang racket

(provide armstrong-number?)

(define (armstrong-number? n)
  (let* ((num-string (number->string n))
         (num-digits (string-length num-string))
         (digits (map (lambda (c) (string->number (string c))) (string->list num-string))))
    (= n (apply + (map (lambda (d) (expt d num-digits)) digits)))))
