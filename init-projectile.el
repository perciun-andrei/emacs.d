;; installing projectile mode if it is not available
(package-install-ifnot 'projectile)

;; loading projectile
(require 'projectile)

;; global projectile configuration
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'default)

;; end
(provide 'init-projectile)
