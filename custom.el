(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function 'browse-url-firefox)
 '(package-selected-packages '(hl-block-mode rainbow-blocks cider)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rainbow-delimiters-mismatched-face ((t (:foreground "white" :background "red" :weight bold))))
 '(rainbow-delimiters-unmatched-face ((t (:foreground "white" :background "red" :weight bold))))
 '(show-paren-match ((t (:foreground "white" :background "green" :weight bold))))
 '(show-paren-mismatch ((t (:foreground "white" :background "red" :weight bold)))))

;; Each path is relative to `+mu4e-mu4e-mail-path', which is ~/.mail by default
;; (set-email-account! "gmail.com"
;;   '((mu4e-sent-folder       . "/gmail.com/Sent Mail")
;;     (mu4e-drafts-folder     . "/gmail.com/Drafts")
;;     (mu4e-trash-folder      . "/gmail.com/Trash")
;;     (mu4e-refile-folder     . "/gmail.com/All Mail")
;;     (smtpmail-smtp-user     . "selcukahmed@gmail.com")
;;     (user-mail-address      . "selcukahmed@gmail.com")    ;; only needed for mu < 1.4
;;     ;; (mu4e-compose-signature . "---\nSelçuk Öztürk"))
;;   t)

;; (add-hook! 'projectile-after-switch-project-hook 'treemacs-projectile)

(use-package! rainbow-delimiters
  :config
  (custom-set-faces
   '(rainbow-delimiters-mismatched-face ((t (:foreground "white" :background "red" :weight bold))))
   '(rainbow-delimiters-unmatched-face ((t (:foreground "white" :background "red" :weight bold))))

   ;; show parents (in case of rainbow failing !)
   '(show-paren-match ((t (:foreground "black" :background "green" :weight bold :urderline t))))
   '(show-paren-mismatch ((t (:foreground "black" :background "red" :weight bold :urderline t))))
  )
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
;; highlight brackets
  )

(use-package! all-the-icons)
(setq doom-themes-treemacs-theme "all-the-icons")
(use-package treemacs-all-the-icons
  :after treemacs)
;; (add-to-list 'exec-path "/home/selcuk/.sdkman/candidates/leiningen/current/bin")

;; (load-theme 'material t)

(use-package! vmd-mode)
