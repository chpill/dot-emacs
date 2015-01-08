;;; settings --- my personal settings to emulate the way i work in vim

;;; Code:
;; add line numbers on ALL buffers... there should be a way to only
;; put them on buffer displaying files?

;;(global-linum-mode t)


(electric-indent-mode +1)

(global-hl-line-mode -1)

(prelude-require-packages '(smart-tab
                            helm-ag
                            git-gutter+
                            fringe-helper
                            git-gutter-fringe+))

(global-git-gutter+-mode t)

;; deactivate all tabs...
;; A mix of tabs and space seems a better way to do this,
;; see smart-tab documentation
(setq-default indent-tabs-mode nil)

;; for some inadequately explored reasons, this does not work... Need for some
;; after-initialize?
(setq js2-indent-level 2)
(setq js-indent-level 2)
(setq js2-basic-offset 2)


(defun js2-toggle-indent ()
  (interactive)
  (setq js-indent-level (if (= js-indent-level 2) 4 2))
  (setq js2-indent-level (if (= js-indent-level 2) 4 2))
  (setq js2-basic-offset (if (= js-indent-level 2) 4 2))
  (message "js-indent-level, js2-indent-level, and js2-basic-offset set to %d"
           js2-basic-offset))

;; giving a try to org-mode
;; org-directory not defined thanks...
;;(setq org-default-notes-file (concat org-directory "/notes.org"))
;;(define-key global-map "\C-cc" 'org-capture)
;; saf sfda saf


(provide 'settings)
;;; settings ends here
