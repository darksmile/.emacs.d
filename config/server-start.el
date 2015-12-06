;;; Server-start --- start server.
;;; Commentary:
;;; Code:
(require 'server)
(unless (server-running-p)
  (server-start))

(provide 'server-start)
;;; server-start.el ends here
