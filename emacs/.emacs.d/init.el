(set-keyboard-coding-system nil)

;; Turn off alarms completely
;; http://www.emacswiki.org/emacs/AlarmBell
(setq ring-bell-function 'ignore)

;; Indent after creating a newline
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Highlight current line
(global-hl-line-mode 1)

;; Prevent Emacs from making backup and autosave files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Display line numbers in margin
(global-linum-mode 1)

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; Enable IDO
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Make Text mode the default mode for new buffers
(setq default-major-mode 'text-mode)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-default-font "Droid Sans Mono 12")

(setq rbenv-show-active-ruby-in-modeline nil)

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(load-theme 'solarized-light t)

(global-rbenv-mode)

(setf inhibit-splash-screen t)
