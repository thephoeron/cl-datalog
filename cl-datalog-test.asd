;; file: cl-datalog-test.asd

(in-package :cl-user)

(defpackage cl-datalog-test-asd
  (:use :cl :asdf))
  
(in-package :cl-datalog-test-asd)

(defsystem cl-datalog-test
  :serial t
  :version "0.0.1"
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :description "Test suite for CL-DATALOG"
  :license "MIT"
  :depends-on (:cl-datalog
               :prove)
  :components ((:module "t"
                :serial t
                :components ((:file "cl-datalog"))))
  :defsystem-depends-on (prove-asdf)
  :perform (test-op :after (op c)
                    (funcall (intern #.(string :run-test-system) :prove-asdf) c)
                    (asdf:clear-system c)))
  
