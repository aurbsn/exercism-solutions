#lang racket

(provide acronym)
(require racket/list)

(define (acronym string)
  (let
      ((words (string-split string #px"[\\s_-]+")))
      (string-upcase
       (list->string
        (filter char-alphabetic?
                (map (lambda (w)
                       (string-ref w 0))
                           words))))))
