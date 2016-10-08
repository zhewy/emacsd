;;; GENERIC init file
;;;  - sets up local directories
;;;  - calls init file depending on which computer run from
;;; call order: init.el -> custom.el -> computer_name.el

;; requires elpa packages: bookmarks+ dired+ org-plus-contrib framemove dired-details




;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
;;                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(bmkp-last-as-first-bookmark-file "~/.emacs.d/bookmarks")
 '(indent-tabs-mode nil)
 '(org-special-ctrl-a/e t)
 '(tab-width 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; setup variables
(setq dotfiles-dir (file-name-directory
		    (or (buffer-file-name) load-file-name)))
(setq my-site-lisp-dir (concat dotfiles-dir "elpa/"))
(setq my-custom-file (concat dotfiles-dir "custom.el"))
(setq this-system-name (car (split-string system-name "\\.")))
(setq system-specific-config (concat dotfiles-dir this-system-name ".el"))

;; recursive local site-lisp
(add-to-list 'load-path my-site-lisp-dir)
(let ((default-directory  my-site-lisp-dir))
  (setq load-path
	(append
	 (let ((load-path (copy-sequence load-path))) ;; Shadow
	   (normal-top-level-add-subdirs-to-load-path))
	 load-path)))

;; customise file
(load my-custom-file 'noerror)

; system specific file load
(if (file-exists-p system-specific-config) (load system-specific-config))

(require 'popup)
(require 'yasnippet)
(setq yas-snippet-dirs
      '("C:/Users/zhewy/Dropbox/0org/snippets"  ;; personal snippets
        ))
(yas-global-mode 1)

;; add some shotcuts in popup menu mode
(define-key popup-menu-keymap (kbd "M-n") 'popup-next)
(define-key popup-menu-keymap (kbd "TAB") 'popup-next)
(define-key popup-menu-keymap (kbd "<tab>") 'popup-next)
(define-key popup-menu-keymap (kbd "<backtab>") 'popup-previous)
(define-key popup-menu-keymap (kbd "M-p") 'popup-previous)

(defun yas/popup-isearch-prompt (prompt choices &optional display-fn)
  (when (featurep 'popup)
    (popup-menu*
     (mapcar
      (lambda (choice)
        (popup-make-item
         (or (and display-fn (funcall display-fn choice))
             choice)
         :value choice))
      choices)
     :prompt prompt
     ;; start isearch mode immediately
     :isearch t
     )))

(setq yas/prompt-functions '(yas/popup-isearch-prompt yas/no-prompt))
