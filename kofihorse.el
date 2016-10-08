(require 'cl)

;;; mj-map hyperlink types define
;(require 'org)
;(org-add-link-type "mj-map" 'org-mj-map-open)
;(defun org-mj-map-open (path)
;       ""
;       (shell-command (concat "cmd /c start mj-map:" path)))

(setq epg-gpg-program "C:/GNU/GnuPG/gpg2.exe")


(setq org-id-link-to-org-use-id t)

(setenv "PATH" (concat (getenv "PATH") ":/psql/bin"))
    (setq exec-path (append exec-path '("C:/working/bin/pgsql/bin")))
(setenv "PATH" (concat (getenv "PATH") ":/sqlite/bin"))
    (setq exec-path (append exec-path '("C:/working/bin/sqlite")))
(setenv "PATH" (concat (getenv "PATH") ":/python/bin"))
    (setq exec-path (append exec-path '("C:/working/bin/pypy3")))

(setq python-python-command "C:/working/bin/pypy3/pypy.exe")
(setq org-babel-python-command "C:/working/bin/pypy3/pypy.exe")

(org-babel-do-load-languages
 'org-babel-load-languages
 '((python . t)))

(setq org-agenda-files (quote ("c:/Users/Zhuhui/Dropbox/org/personal.org")))
