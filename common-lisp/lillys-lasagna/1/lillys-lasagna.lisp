(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

;; Define function expected-time-in-oven
(defun expected-time-in-oven ()
  "Time expected to be in oven, a constant"
  337)

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (minutes-in-oven)
  "Remaining minutes in oven, as difference between expected-time-in-oven
   and argument"
  (- (expected-time-in-oven) minutes-in-oven))

;; Define function preparation-time-in-minutes
(defun preparation-time-in-minutes (layers)
  "Preparation time in minutes, as a constant multiple of layers"
  (* layers 19))

;; Define function elapsed-time-in-minutes
(defun elapsed-time-in-minutes (layers minutes-in-oven)
  "Elapsed time in minutes, as sum of preparation time of first argument
   and second argument"
  (+ (preparation-time-in-minutes layers) minutes-in-oven))
