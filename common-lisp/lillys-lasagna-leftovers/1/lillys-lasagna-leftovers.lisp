(defpackage :lillys-lasagna-leftovers
  (:use :cl)
  (:export
   :preparation-time
   :remaining-minutes-in-oven
   :split-leftovers))

(in-package :lillys-lasagna-leftovers)

;; Define function preparation-time
(defun preparation-time (&rest layers)
  (* (length layers) 19))

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (&optional (modifier :normal))
  (let ((default-time 337))
    (cond ((eq :normal modifier) default-time)
          ((eq :shorter modifier) (- default-time 100))
          ((eq :longer modifier) (+ default-time 100))
          ((eq :very-short modifier) (- default-time 200))
          ((eq :very-long modifier) (+ default-time 200))
          ((not modifier) 0))))

;; Define function split-leftovers
(defun split-leftovers (&key
                          (weight 0 weight-passed-p)
                          (alien 10)
                          (human 10))
  (let ((num-containers (+ alien human)))
    (cond
      ((not weight-passed-p) :just-split-it)
      ((not weight) :looks-like-someone-was-hungry)
      (t (- weight num-containers)))))
