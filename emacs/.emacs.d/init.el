(add-to-list 'load-path user-emacs-directory)

(require 'package-init)
(require 'ui)
(require 'darkside)
(require 'editor)
(require 'extended-editor)

(global-set-key (kbd "s-<return>") 'toggle-frame-fullscreen)
