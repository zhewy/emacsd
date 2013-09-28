(require 'cl)

(require 'dired+)

(require 'dired-details)
(dired-details-install)

;(windmove-default-keybindings 'control)
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <down>")  'windmove-down)

;;; mj-map hyperlink types define
;(require 'org)
;(org-add-link-type "mj-map" 'org-mj-map-open)
;(defun org-mj-map-open (path)
;       ""
;       (shell-command (concat "cmd /c start mj-map:" path)))

(setq epg-gpg-program "C:/GNU/GnuPG/gpg2.exe")

(global-set-key (kbd "<f12>")  'org-indent-mode)
(global-set-key (kbd "<f11>")  'visual-line-mode)
(global-set-key (kbd "<f8>")  'org-id-get-create)

(setq org-id-link-to-org-use-id t)
