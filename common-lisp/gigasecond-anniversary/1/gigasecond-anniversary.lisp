(defpackage :gigasecond-anniversary
  (:use :cl)
  (:export :from))
(in-package :gigasecond-anniversary)

(defparameter anniversary-offset 1000000000)

(defun from (year month day hour minute second)
  (multiple-value-bind (s mn h d mth y) (decode-universal-time (+ anniversary-offset (encode-universal-time second minute hour day month year 0)) 0)
    (list y mth d h mn s)))
