(defpackage :logans-numeric-partition
  (:use :cl)
  (:export :categorize-number :partition-numbers))

(in-package :logans-numeric-partition)

;; Define categorize-number function
(defun categorize-number (lst n)
  (let ((left (first lst))
        (right (rest lst)))
    (print
     (list
      (if (oddp n)
          (cons n left)
          left)
      (if (evenp n)
          (cons n right)
          right)))))

;; Define partition-numbers function
(defun partition-numbers (nums)
  (reduce #'categorize-number nums :initial-value '(() . ())))
