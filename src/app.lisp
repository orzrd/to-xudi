#|
  This file is a part of myapp project.
|#

(in-package :cl-user)
(defpackage myapp.app
  (:use :cl)
  (:import-from :caveman.app
                :<app>))
(in-package :myapp.app)

(cl-syntax:use-syntax :annot)

@export
(defclass <myapp-app> (<app>) ())

@export
(defvar *app* (make-instance '<myapp-app>))
