;; Prevent Emacs from making backup and autosave files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Default major mode is text-mode
(setq initial-major-mode 'text-mode)
(setq default-major-mode 'text-mode)

;; cleanup up file before saving
(require 'whitespace)
(add-hook 'before-save-hook 'whitespace-cleanup)

;; using two spaces instead of tabs
(setq-default indent-tabs-mode nil)
(setq tab-width 2)

;; show matching parens in bold with inverted background
(show-paren-mode 1)
(setq show-paren-delay 0)
(set-face-background 'show-paren-match-face nil)
(set-face-foreground 'show-paren-match-face nil)
(set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)

(global-set-key (kbd "RET") 'newline-and-indent)

(provide 'editor)
