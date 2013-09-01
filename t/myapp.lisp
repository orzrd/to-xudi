#|
  This file is a part of myapp project.
|#

(in-package :cl-user)
(defpackage myapp-test
  (:use :cl
        :myapp
        :cl-test-more))
(in-package :myapp-test)

(plan nil)

;; make sure the app stopped
(myapp:stop)
(myapp:start)

;; blah blah blah.

(myapp:stop)

(finalize)
