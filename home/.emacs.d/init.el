;; Redirecting any custom line addition on another file
;; I don't want them on my init file :D
(setq custom-file "~/.emacs.d/custom.el")

;; local packages
(add-to-list 'load-path "~/.emacs.d/modules")

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
    (package-install 'use-package))

;; Initializing use-package
(eval-when-compile
  (require 'use-package))
(require 'bind-key)                ;; if you use any :bind variant

;;; Load the config
(org-babel-load-file (concat user-emacs-directory "config.org"))
;;(org-babel-load-file "~/.emacs_private.org")


;; Ido
;;(setq ido-enable-flex-matching t)
;;(setq ido-everywhere t)
;;(ido-mode 1)

