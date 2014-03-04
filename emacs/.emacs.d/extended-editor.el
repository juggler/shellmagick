(projectile-global-mode)

(ido-mode 1)
(flx-ido-mode 1)

;; display ido results vertically, rather than horizontally
(setq ido-decorations '("\n" "" "\n" "\n..." "[" "]" " [No match]" " [Matched]" " [Not readable]" " [Too big]" " [Confirm]"))
(custom-set-faces '(ido-first-match ((t (:background "#eee8d5")))))

(global-set-key (kbd "s-p") 'smex)
(smex-initialize)

(defun ido-define-keys ()
  (define-key ido-completion-map [down] 'ido-next-match)
  (define-key ido-completion-map [up] 'ido-prev-match))

(add-hook 'ido-setup-hook 'ido-define-keys)

(global-set-key (kbd "s-t") 'projectile-find-file)

(provide 'extended-editor)
