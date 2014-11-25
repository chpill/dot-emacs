;;; package --- Summary
;;; my-personal settings to emulate the way i work in vim

(global-linum-mode t)
(electric-indent-mode +1)

(global-hl-line-mode -1)

(prelude-require-packages '(smart-tab
                            helm-ag))

(provide 'settings)
;;; settings ends here
