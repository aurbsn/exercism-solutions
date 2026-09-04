(defpackage :hamming
  (:use :cl)
  (:export :distance))

(in-package :hamming)

(defun distance (strand1 strand2)
  (when
      (and
       (= (length strand1) (length strand2)))
    (reduce
     (lambda (x y) (+ x y))
     (mapcar (lambda (x y) (if (eq x y) 0 1)) (coerce strand1 'list) (coerce strand2 'list))
     :initial-value 0)))
