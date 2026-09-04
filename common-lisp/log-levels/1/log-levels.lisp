(defpackage :log-levels
  (:use :cl)
  (:export :log-message :log-severity :log-format))

(in-package :log-levels)

(defun log-message (log-string)
  (subseq log-string 8))

(defun log-severity (log-string)
  (let ((severity (subseq log-string 1 5)))
    (cond ((string-equal severity "ohno") :run-for-cover)
          ((string-equal severity "warn") :getting-worried)
          ((string-equal severity "info") :everything-ok))))

(defun log-format (log-string)
  (let ((severity (log-severity log-string)))
    (cond
      ((eq severity :everything-ok)
       (string-downcase (log-message log-string)))
      ((eq severity :getting-worried)
       (string-capitalize (log-message log-string)))
      ((eq severity :run-for-cover)
       (string-upcase (log-message log-string))))))
