(require 'package)
(push '("marmalade" . "http://marmalade-repo.org/packages/")
    package-archives )
(push '("melpa" . "http://melpa.milkbox.net/packages/")
    package-archives)
(package-initialize)

;; Evil mode
(require 'evil)
(evil-mode 1)

;; Auto complete setup:
(require 'auto-complete-config)
(ac-config-default)

;; auto-completet latex
(require 'auto-complete-auctex)
(require 'ac-math) 

(defun ac-LaTeX-mode-setup () ; add ac-sources to default ac-sources
  (setq ac-sources
	(append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
		ac-sources)))

(add-hook 'LaTeX-mode-hook 'ac-LaTeX-mode-setup)

(setq ac-math-unicode-in-math-p t)

;; mark colum 100 for python files
(add-to-list 'load-path "~/.emacs.d/site-pakages/")
(require 'column-marker)

(defun peter-python-setup ()
  (interactive)
  (jedi:setup)
  (column-marker-1 80)
  (column-marker-2 100)
  (auto-fill-mode 1)
  ;; (flyspell-mode 1)
  (set-fill-column 100))
  
;; auto-complete for python
;; (add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'peter-python-setup)
(setq jedi:complete-on-dot t)  

;; python shell setup
(require 'python)
(setq python-shell-interpreter "ipython")
(setq python-shell-interpreter-args "--pylab")

;; (add-hook 'python-mode-hook (lambda () (interactive) (column-marker-1 100)))

;; (global-ac-mode t)
;; This is the path for the neuron files
(add-to-list 'load-path "~/.emacs.d/neuron/")
(add-to-list 'load-path "~/.emacs.d/markdown/")

;; This is the neuron mode
(autoload 'nrnhoc-mode "nrnhoc" "Enter NRNHOC mode." t)
(setq auto-mode-alist (cons '("\\.hoc\\'" . nrnhoc-mode) auto-mode-alist))
;;(add-hook 'nrnhoc-mode-hook '(turn-on-font-lock auto-complete-mode))

;; This is the nmodel mode.
(autoload 'nmodl-mode "nmodl" "Enter NMODL mode." t)
(setq auto-mode-alist (cons '("\\.mod\\'" . nmodl-mode) auto-mode-alist))

(add-to-list 'ac-modes 'nrnhoc-mode)
(add-to-list 'ac-modes 'nmodl-mode)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;(set-frame-parameter (selected-frame) 'alpha '(<active> [<inactive>]))
(set-frame-parameter (selected-frame) 'alpha '(95 95))
(add-to-list 'default-frame-alist '(alpha 95 95))

(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))


(setq backup-directory-alist `(("." . "~/.saves")))
