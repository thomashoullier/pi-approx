(in-package :pi-approx)

(defun machin (eps)
  "Compute pi using the original Machin formula:
   pi/4 = 4.atan(1/5) - atan(1/239)
   Return the pi value as well as upper bound for absolute error."
  (let ((first-atan)
        (first-atan-eps (/ eps 16))
        (first-atan-err)
        (second-atan)
        (second-atan-eps (/ eps 4))
        (second-atan-err))
    (multiple-value-setq (first-atan first-atan-err)
      (taylor-series:atan-maclaurin 1/5 first-atan-eps))
    (multiple-value-setq (second-atan second-atan-err)
      (taylor-series:atan-maclaurin 1/239 second-atan-eps))
    (values (- (* 16 first-atan) (* 4 second-atan))
            (+ (* 16 first-atan-err) (* 4 second-atan-err)))))
