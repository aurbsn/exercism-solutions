#lang racket

(provide encode decode)

(define (group-by-five l)
  (reverse
   (map reverse
        (car (let ((make-acc (lambda (groups count) (cons groups count))))
               (foldl (lambda (n acc)
                        (let* ((groups (car acc))
                               (count (cdr acc)))
                          (if (= count 5)
                              (make-acc (cons (list n) groups) 1)
                              (make-acc (cons (cons n (car groups)) (cdr groups)) (+ 1 count)))))
                      (make-acc (list '()) 0) l))))))

(define atbash-cipher
  #hash((#\a . #\z) (#\b . #\y) (#\c . #\x) (#\d . #\w)
                    (#\e . #\v) (#\f . #\u) (#\g . #\t) (#\h . #\s)
                    (#\i . #\r) (#\j . #\q) (#\k . #\p) (#\l . #\o)
                    (#\m . #\n) (#\n . #\m) (#\o . #\l) (#\p . #\k)
                    (#\q . #\j) (#\r . #\i) (#\s . #\h) (#\t . #\g)
                    (#\u . #\f) (#\v . #\e) (#\w . #\d) (#\x . #\c)
                    (#\y . #\b) (#\z . #\a)))

(define (encode m)
  (string-join (map list->string (group-by-five (map (lambda (c) (hash-ref atbash-cipher c c)) (string->list (string-downcase (regexp-replace* #px"[^a-zA-Z0-9]" m "")))))) " "))

(define (decode m)
  (regexp-replace* #px"\\s+" (encode m) ""))
