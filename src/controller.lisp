#|
  This file is a part of myapp project.
|#

(in-package :cl-user)
(defpackage myapp.controller
  (:use :cl
        :caveman
        :myapp.app)
  (:import-from :myapp.view.emb
                :render))
(in-package :myapp.controller)

(cl-syntax:use-syntax :annot)

@url GET "/"
(defun index (params)
  @ignore params
  (render "index.html"))

@url POST "/"
(defun index-post (params)
  @ignore params
  "Hello, Dongweiming!")

@url GET "/test"
(defun index (params)
  @ignore params
    (render "test.html"))
