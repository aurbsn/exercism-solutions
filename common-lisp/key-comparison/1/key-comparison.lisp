(defpackage :key-comparison
  (:use :cl)
  (:export
   :key-object-identity
   :key-numbers
   :key-numbers-of-different-types
   :key-characters
   :key-characters-case-insensitively
   :key-strings
   :key-strings-case-insensitively
   :key-conses-of-symbols
   :key-conses-of-characters
   :key-conses-of-numbers
   :key-conses-of-characters-case-insensitively
   :key-conses-of-numbers-of-different-types
   :key-arrays
   :key-arrays-loosely))
(in-package :key-comparison)

(defun key-object-identity (x y)
  (eq x y))
(defun key-numbers (x y)
  (eql x y))
(defun key-numbers-of-different-types (x y)
  (equalp x y))
(defun key-characters (x y)
  (eql x y))
(defun key-characters-case-insensitively (x y)
  (equalp x y))
(defun key-strings (x y)
  (equal x y))
(defun key-strings-case-insensitively (x y)
  (equalp x y))
(defun key-conses-helper (f x y)
  (and
   (funcall f (first x) (first y))
   (funcall f (rest x) (rest y))))
(defun key-conses-of-symbols (x y)
  (key-conses-helper #'key-object-identity x y))
(defun key-conses-of-characters (x y)
  (key-conses-helper #'key-characters x y))
(defun key-conses-of-numbers (x y)
  (key-conses-helper #'key-numbers x y))
(defun key-conses-of-characters-case-insensitively (x y)
  (key-conses-helper #'key-characters-case-insensitively x y))
(defun key-conses-of-numbers-of-different-types (x y)
  (key-conses-helper #'key-numbers-of-different-types x y))
(defun key-arrays (x y)
  (eq x y))
(defun key-arrays-loosely (x y)
  (equalp x y))

