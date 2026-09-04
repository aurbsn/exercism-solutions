(defpackage :lucys-magnificent-mapper
  (:use :cl)
  (:export :make-magnificent-maybe :only-the-best))

(in-package :lucys-magnificent-mapper)

;; Define make-magnificent-maybe function
(defun make-magnificent-maybe (fn lst)
  (mapcar fn lst))

;; Define only-the-best function
(defun only-the-best (fn lst)
  (remove-if fn (remove 1 lst)))
