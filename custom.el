
(require 'framemove)
(setq framemove-hook-into-windmove t)

(require 'bookmark+)

(require 'dired+)

(require 'dired-details)


(dired-details-install)

(tool-bar-mode -1)
(put 'dired-find-alternate-file 'disabled nil)
(setq calendar-week-start-day 1)


;; org-mode
(package-initialize)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;(windmove-default-keybindings 'control)
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

(global-set-key (kbd "<f12>")  'org-indent-mode)
(global-set-key (kbd "<f11>")  'visual-line-mode)
(global-set-key (kbd "<f8>")  'org-id-get-create)
