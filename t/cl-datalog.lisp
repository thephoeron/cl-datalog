;; file: t/cl-datalog.lisp

(in-package :cl-user)

(defpackage cl-datalog-test
  (:use :cl :cl-datalog :prove))

(in-package :cl-datalog-test)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-datalog)' in your Lisp.

(plan 1)

(deftest sanity-check
  (pass "PROVE is loaded and ready to go.")
  (ok (= 1 1)
      "Numeric equality: (= 1 1) => T.")
  (is (+ 1 1)
      2
      "Addition: (+ 1 1) => 2.")
  (is (* 2 2)
      4
      "Multiplication: (* 2 2) => 4.")
  (is (mod (+ 10 2) 10)
      2
      "Modulus: (mod (+ 10 2) 10) => 2."))

(run-test-all)

;; EOF
