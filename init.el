;;; Init --- Emacs init file
;;; Commentary:
;;; Code:
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(add-to-list 'load-path "~/workspace/darksmile/dotfiles/.emacs.d/config")

(require 'server-start)
(require 'common)
(require 'theme)
(require 'project)

(provide 'init)
;;; init.el ends here
