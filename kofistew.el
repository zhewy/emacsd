
;; mj-map hyperlink types define
;(require 'org)
;(org-add-link-type "mj-map" 'org-mj-map-open)
;(defun org-mj-map-open (path)
;       ""
;       (shell-command (concat "cmd /c start mj-map:" path)))

(require 'cl)

(setq epg-gpg-program "C:/Program Files (x86)/GNU/GnuPG/gpg2.exe")

;(setenv "PATH" (concat (getenv "PATH") ":/sqlite/bin"))
(setq exec-path (append exec-path '("C:/z/bin/gnu/bin")))

;(org-babel-do-load-languages
; 'org-babel-load-languages
; '((python . t)))

(setq org-agenda-files (quote ("C:/Users/zhewy/Dropbox/0org/diary.org")))

(require 'org-id)
(setq org-id-link-to-org-use-id t)

(setq org-agenda-custom-commands
      '(("d" . "DCL Agenda")
        ("da" "all"
         ((agenda "" ((org-agenda-tag-filter-preset '("+dc"))))))
        ("dt" "tasks"
         ((agenda "" ((org-agenda-tag-filter-preset '("+dc" "+proj"))))))
        ("p" . "Personal Agenda")
        ("pa" "all"
         ((agenda "" ((org-agenda-tag-filter-preset '("+pp"))))))
        ("c" . "CC Agenda")
        ("ca" "all"
         ((agenda "" ((org-agenda-tag-filter-preset '("+cc"))))))
        ("g" . "GP Agenda")
        ("ga" "all"
         ((agenda "" ((org-agenda-tag-filter-preset '("+gp"))))))))

