;; installing projectile mode if it is not available
(package-install-ifnot 'projectile)

;; installing neotree mode if it is not available
(package-install-ifnot 'neotree)

;; loading projectile
(require 'projectile)
(require 'neotree)

;; global neotree configuration
(global-set-key [f12] 'neotree-toggle)

;; global projectile configuration
(setq projectile-indexing-method 'native)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'ido)
(setq projectile-switch-project-action 'neotree-projectile-action)

;; adding projectile hooks
(add-hook 'c-mode-hook 'projectile-mode)
(add-hook 'c++-mode-hook 'projectile-mode)
(add-hook 'cmake-mode-hook 'projectile-mode)

;; end
(provide 'init-projectile)
