(require 'prodigy)

;; (prodigy-define-tag
;;   :name 'airborne
;;   :env '(("PYTHONHOME" "")
;;          ("PYTHONPATH" "~/workspace/work/getgoing/airborne/")
;;          ("VIRTUAL_ENV" "~/.virtualenvs/airborne/")))


(defun define-gg-project (name)
  (prodigy-define-service
    :name name
    :command "honcho"
    :args '("start")
    :path (format "/home/darksmile/.virtualenvs/%s/bin/" name)
    :cwd (format "/home/darksmile/workspace/work/getgoing/%s/" name)
    :env (list
          (list "PYTHONHOME" (format "/home/darksmile/.virtualenvs/%s/" name))
          (list "PYTHONPATH" (format "/home/darksmile/workspace/work/getgoing/%s/" name))
          (list "PATH" (format "/home/darksmile/.virtualenvs/%s/bin/:%s"
                               name (getenv "PATH")))
          (list "VIRTUAL_ENV" (format "/home/darksmile/.virtualenvs/%s/" name))
          (list "AIRBORNE_WEB_WORKERS" "1"))
    :tags '(work)
    :kill-signal 'sigint))

(prodigy-define-service
  :name "elasticsearch"
  :command "./elasticsearch"
  :args '("-Dscript.inline=on"
          "-Dscript.indexed=on"
          "-Dindex.max_result_window=100000"
          "-Dindex.query.bool.max_clause_ciount=100000"
          "-Dcluster.routing.allocation.disk.threshold_enabled=false")
  :cwd "/home/darksmile/elasticsearch-2.2.2/bin/"
  :path "/home/darksmile/elasticsearch-2.2.2/bin/"
  :tags '(work)
  :kill-signal 'sigint)

(prodigy-define-service
  :name "vpn"
  :command "sudo"
  :args '("openvpn"
          "--config"
          "/home/darksmile/workspace/work/getgoing/vpn/linux-openvpn.conf")
  :tags '(work)
  :kill-signal 'sigkill)

(mapcar 'define-gg-project '("airborne" "bowman" "cessna" "fokker"))

(provide 'gg-prodigy)
