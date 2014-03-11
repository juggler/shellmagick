;; Prevent Emacs from making backup and autosave files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Default major mode is text-mode
(setq initial-major-mode 'text-mode)
(setq default-major-mode 'text-mode)

;; cleanup up file before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; smart tabs (indentation and completion)
(require 'smart-tab)
(global-smart-tab-mode 1)

;; using two spaces instead of tabs
(setq-default indent-tabs-mode nil)
(setq tab-width 2)

(setq ruby-indent-level 2)
(require 'rbenv)
(setq rbenv-show-active-ruby-in-modeline nil)
(global-rbenv-mode)

;; show matching parens in bold with inverted background
(show-paren-mode 1)
(setq show-paren-delay 0)
(set-face-background 'show-paren-match-face nil)
(set-face-foreground 'show-paren-match-face nil)
(set-face-attribute 'show-paren-match-face nil :weight 'extra-bold)

(global-set-key (kbd "RET") 'newline-and-indent)

(global-auto-revert-mode 1)

;; newline at EOF
(setq next-line-add-newlines nil)
(setq require-final-newline t)

;; Prefer UTF-8
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

; smart parens
(require 'smartparens-config)
(smartparens-global-mode t)
(setq sp-autoescape-string-quote nil)
(turn-on-smartparens-strict-mode)

;; highlights matching pairs
(show-smartparens-global-mode t)

(provide 'editor)
