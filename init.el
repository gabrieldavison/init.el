;; Sets up package manager
;;(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "http://mirrors.163.com/elpa/gnu/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

;; Means all packages will always install
(setq use-package-always-ensure t)

;; Custom setting dont persist and sit in heir own file
(setq custom-file (make-temp-file "emacs-custom"))
;; add to exec path
(setq exec-path (append exec-path '("/Users/gabriel/bin")))

;; Preferences ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inhibit-startup-screen t)
;; wraps lines
(global-visual-line-mode 1)
;; no window decoration
(tool-bar-mode -1)
(scroll-bar-mode -1)
;;shows line numbers
(display-line-numbers-mode)
(global-display-line-numbers-mode)
;;shows matching parems
(show-paren-mode 1)
;; allows highlgiht to delete
(delete-selection-mode 1)
;;stop lockfiles
(setq create-lockfiles nil)
;; Turn off noise
(setq visible-bell 1)
(setq ring-bell-function 'ignore)

;;Org Mode
;;(setq org-log-note-clock-out t)
(setq org-startup-indented t)

;; Package installation ;;;;;;;;;;;;;;;;;;;;

;;adds shell paths to eshell and co
(use-package exec-path-from-shell
  :ensure t
   :config (exec-path-from-shell-initialize))

;; Installs evil-mode
(use-package evil
	     :config
	     (evil-mode 1)
	     (evil-set-initial-state 'NeoTree 'emacs))

;; Installs helm and remaps some defaults
(use-package helm
  :config
  (global-set-key (kbd "M-x") #'helm-M-x)
  (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
  (global-set-key (kbd "C-x C-f") #'helm-find-files)  (global-set-key (kbd "M-x") 'helm-M-x)
  (helm-mode 1))

;;Lispland
(use-package racket-mode)
(use-package cider)
(use-package slime
  :config
  (load (expand-file-name "~/.quicklisp/slime-helper.el"))
  (setq inferior-lisp-program "sbcl")
  )
(use-package lispy
  :ensure t)
(use-package lispyville
  :config
  (add-hook 'lispy-mode-hook #'lispyville-mode))
(use-package smartparens
  :config
  (require 'smartparens-config)
(smartparens-global-mode t) 
  )

(use-package rainbow-delimiters 
  :ensure t
  :config
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))

