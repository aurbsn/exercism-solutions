(defpackage :hamming
  (:use :cl)
  (:export :distance))

(in-package :hamming)

(defun distance (strand1 strand2)
  (when (= (length strand1) (length strand2))
    (count 0 (map #'list #'char= strand1 strand2))))
