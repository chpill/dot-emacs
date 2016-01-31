;; Clojure configuration

;;;;;;;;;;;
;; Cider ;;
;;;;;;;;;;;

;; Useful to debug issues with Cider itself
(setq nrepl-log-messages t)

;; Enable eldoc in cider buffer?
;(add-hook 'cider-mode-hook #'eldoc-mode)

(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)

;; Avoid having `nrepl-server` and `nrepl-connection` from appearing in active
;; buffers
(setq nrepl-hide-special-buffers t)

(setq cider-repl-pop-to-buffer-on-connect nil)
(setq cider-show-error-buffer nil)
