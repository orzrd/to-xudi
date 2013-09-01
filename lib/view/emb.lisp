#|
  This file is a part of myapp project.
|#

(in-package :cl-user)
(defpackage myapp.view.emb
  (:use :cl)
  (:import-from :caveman
                :config))
(in-package :myapp.view.emb)

(cl-syntax:use-syntax :annot)

@export
(defun render (file &optional params)
  (caveman.view.emb:render
   (merge-pathnames file
    (merge-pathnames
     (config :template-path)
     (config :application-root)))
   params))
