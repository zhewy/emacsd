
;; mj-map hyperlink types define
;(require 'org)
;(org-add-link-type "mj-map" 'org-mj-map-open)
;(defun org-mj-map-open (path)
;       ""
;       (shell-command (concat "cmd /c start mj-map:" path)))

(require 'cl)

(setq epg-gpg-program "C:/GNU/GnuPG/gpg2.exe")
(setenv "PATH" (concat (getenv "PATH") ":/pgsql/bin"))
    (setq exec-path (append exec-path '("C:/working/bin/pgsql/bin")))
(setenv "PATH" (concat (getenv "PATH") ":/sqlite/bin"))
    (setq exec-path (append exec-path '("C:/working/bin/sqlite/bin")))

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))
(setq python-shell-interpreter "C:/working/bin/pypy3/pypy.exe")
(setq org-babel-python-command "C:/working/bin/pypy3/pypy.exe")

(setq org-agenda-files (quote ("~/Dropbox/org/personal.org")))
