;;; leap.el --- Leap exercise (exercism)  -*- lexical-binding: t; -*-

;;; Commentary:

(defun leap-year-p (year)
  (cond
   ((eq (/ year 400) 0) t)
   ((eq (/ year 100) 0) nil)
   ((eq (/ year 4) 0) t)))

(provide 'leap-year-p)
;;; leap.el ends here
