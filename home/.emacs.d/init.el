;; Redirecting any custom line addition on another file
;; I don't want them on my init file :D
(setq custom-file "~/.emacs.d/custom.el")

;; local packages
(add-to-list 'load-path "~/.emacs.d/modules")

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
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
;;(org-babel-load-file (concat user-emacs-directory "config-dev.org"))
;; if (file-writable-p "~/.emacs_private.org") ..
(org-babel-load-file "~/.emacs_private.org")

;; An example of private file
;; * Org
;; ** Agenda config
;; Agenda needs activation as [[http://orgmode.org/manual/Activation.html#Activation][here in the manual]]
;; 
;; #+BEGIN_SRC emacs-lisp
;; ;; Telling agenda where to look for sheduled events
;; (setq org-agenda-files (list "/myfolder/"))
;; #+END_SRC


;; Ido
;;(setq ido-enable-flex-matching t)
;;(setq ido-everywhere t)
;;(ido-mode 1)

