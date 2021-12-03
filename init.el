;; Sets up package manager
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "http://mirrors.163.com/elpa/gnu/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

;; Means all packages will always install
(setq use-package-always-ensure t)

;; Custom setting dont persist and sit in heir own file
(setq custom-file (make-temp-file "emacs-custom"))

(setq exec-path (append exec-path '("/Users/gabriel/bin")))

;; Preferences ;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq inhibit-startup-screen t)
;; wraps lines
(global-visual-line-mode 1)
;; no window decoration
(tool-bar-mode -1)
(scroll-bar-mode -1)
(display-line-numbers-mode)

;; Package installation ;;;;;;;;;;;;;;;;;;;;
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

(use-package cider)
(use-package plan9-theme
  :config
  (load-theme 'plan9 t))
(use-package smartparens
  :config
  (require 'smartparens-config))
