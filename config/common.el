;;; Common --- start server.
;;; Commentary:
;;; Code:

;; Disable stupid menu
(tool-bar-mode -1)
(menu-bar-mode -1)

;; Indentation
(setq-default indent-tabs-mode nil)
(setq tab-width 4)

;; Evil mode here (Yes, CO also here!)
(require 'evil)
(evil-mode t)

;; Hide splash screen
(setq inhibit-startup-message t)

;; Show trailing whitespace
(setq-default show-trailing-whitespace t)

;; Box cursor style
(setq cursor-type 'box)
(setq evil-insert-state-cursor 'box)

;; Line numbers
(global-linum-mode t)
(setq linum-format "%4d \u2502 ")

;; 80 cols line
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))
(global-whitespace-mode t)

;; Use system clipboard
(xclip-mode 1)
(setq scroll-error-top-bottom t)

;; Prevent Emacs from making backup files
(setq make-backup-files nil)

;; Show line-number in the mode line
(line-number-mode 1)
;; Show column-number in the mode line
(column-number-mode 1)

;;; smooth scroll
;;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; Highlight current line and col
(require 'crosshairs)
(crosshairs-mode t)
(setq col-highlight-vline-face-flag t)
(setq col-highlight-face hl-line-face)

;; Close brackets and quotes automatically
(electric-pair-mode t)

;; Smart-mode-line setup
(setq sml/theme 'powerline)
(setq sml/no-confirm-load-theme t)
(sml/setup)

;; Hide scrollbar
(scroll-bar-mode -1)

;; Code completion
(require 'auto-complete)
(ac-config-default)

(provide 'common)
;;; common.el ends here
