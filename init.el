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
(require 'clojure)
(require 'gg-prodigy)

(require 'yasnippet)
(yas-global-mode 1)

(setq ac-auto-start t)
(setq tern-ac-on-dot t)

(add-hook 'js-mode-hook (lambda () (tern-mode t)))
(eval-after-load 'tern
   '(progn
      (require 'tern-auto-complete)
      (tern-ac-setup)))

(provide 'init)
;;; init.el ends here
