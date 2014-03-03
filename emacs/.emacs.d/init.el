(set-keyboard-coding-system nil)

;; Turn off alarms completely
;; http://www.emacswiki.org/emacs/AlarmBell
(setq ring-bell-function 'ignore)

;; In every buffer, the line which contains the cursor will be fully highlighted
(global-hl-line-mode 1)

;; Prevent Emacs from making backup files
(setq make-backup-files nil)

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

;; Make Text mode the default mode for new buffers
(setq default-major-mode 'text-mode)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(set-default-font "Droid Sans Mono 12")

(require 'package)
(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(load-theme 'solarized-light t)

(global-rbenv-mode)
(setq rbenv-show-active-ruby-in-modeline nil)
;; this will remove the colors
(setq rbenv-modeline-function 'rbenv--modeline-plain)
