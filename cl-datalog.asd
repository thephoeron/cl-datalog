;; file: cl-datalog.asd

(in-package :cl-user)

(defpackage cl-datalog-asd
  (:use :cl :asdf))

(in-package :cl-datalog-asd)

(defsystem cl-datalog
  :serial t
  :license "MIT"
  :version "0.0.1"
  :author "\"the Phoeron\" Colin J.E. Lupton <sysop@thephoeron.com>"
  :description "Datalog DSL"
  :depends-on (:trivial-types)
  :components ((:file "packages")
               (:file "cl-datalog")))

;; EOF
