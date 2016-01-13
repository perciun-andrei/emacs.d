;; install package auto-complete if it is not yet installed
(package-install-ifnot 'auto-complete)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;; laod auto complete package
(provide 'init-auto-complete)
