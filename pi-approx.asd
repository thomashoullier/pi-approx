(defsystem pi-approx
  :name "pi-approx"
  :author "Thomas HOULLIER"
  :depends-on ("taylor-series")
  :components
  ((:module "src"
    :components ((:file "package")
                 (:file "machin" :depends-on ("package")))))
  :in-order-to ((test-op (test-op "pi-approx/test"))))

(defsystem pi-approx/test
  :name "pi-approx/test"
  :depends-on ("rove" "pi-approx")
  :components
  ((:module "test"
    :components ((:file "rove-suite"))))
  :perform (test-op (o c) (symbol-call :rove '#:run c)))
