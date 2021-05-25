(defpackage :pi-approx/test
  (:use :cl :rove))
(in-package :pi-approx/test)

(deftest validation
  (testing "machin"
    (ok (= pi
           (coerce (pi-approx:machin (expt 1/10 17)) 'double-float))
        "Double-float approximation.")
    (ok (reduce
         (lambda (x y) (and x y))
         (loop for epsexpt in '(1 4 8 14)
               collect (<= (abs (- (pi-approx:machin (expt 1/10 epsexpt))
                                   pi))
                           (expt 1/10 epsexpt))))
        "Error bound vs double-float respected.")))
