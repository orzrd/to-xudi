#|
  This file is a part of myapp project.
|#

(in-package :cl-user)
(defpackage myapp-test-asd
  (:use :cl :asdf))
(in-package :myapp-test-asd)

(defsystem myapp-test
  :author ""
  :license ""
  :depends-on (:myapp
               :cl-test-more)
  :components ((:module "t"
                :components
                ((:file "myapp"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
