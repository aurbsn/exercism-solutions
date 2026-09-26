#lang racket

(provide acronym)
(require racket/list)

(define (acronym string)
  (let
      ((words (string-split string #px"[\\s\\-\\_]+")))
      (string-upcase
       (list->string
        (filter char-alphabetic?
                (filter-map (lambda (w)
                              (if (zero? (string-length w)) #f (string-ref w 0)))
                            words))))))
