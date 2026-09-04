(defpackage :larrys-winning-checker
  (:use :cl)
  (:export
   :make-empty-board
   :make-board-from-list
   :all-the-same-p
   :row
   :column))

(in-package :larrys-winning-checker)

(defun make-empty-board ()
  (make-array '(3 3) :initial-element nil))

(defun make-board-from-list (list)
  (make-array '(3 3) :initial-contents list))

(defun all-the-same-p (row-or-col)
  (every 'eql row-or-col (rest row-or-col)))

(defun row (board row-num)
  (loop for i upto 2 collect (aref board row-num i)))

(defun column (board col-num)
  (loop for i upto 2 collect (aref board i col-num)))
