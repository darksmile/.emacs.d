;;; Init --- Emacs init file
;;; Commentary:
;;; Code:
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(add-to-list 'load-path "~/workspace/darksmile/.emacs.d/config")

(require 'cheatsheet)
(defun cheat (group key description)
  "Make cheat and add to cheatsheet."
  (cheatsheet-add :group group :key key :description description))

(require 'server-start)
(require 'common)
(require 'theme)
(require 'project)

(require 'yasnippet)
(yas-global-mode 1)

(provide 'init)
;;; init.el ends here
