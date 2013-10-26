(require 'cl)

;;; mj-map hyperlink types define
;(require 'org)
;(org-add-link-type "mj-map" 'org-mj-map-open)
;(defun org-mj-map-open (path)
;       ""
;       (shell-command (concat "cmd /c start mj-map:" path)))

(setq epg-gpg-program "C:/bin/GnuPG/gpg2.exe")


(setq org-id-link-to-org-use-id t)

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(setq org-agenda-files (quote ("c:/Users/Zhuhui/Dropbox/org/personal.org")))
(setq org-confirm-babel-evaluate nil)

(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)

