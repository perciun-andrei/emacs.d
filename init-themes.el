;; installing themes
(package-install-ifnot 'color-theme-solarized)
(package-install-ifnot 'zenburn-theme)

;; setting the theme for window version
(when window-system
  (load-theme 'solarized-dar t))

;; setting the theme for terminal version
(unless window-system
  (load-theme 'zenburn t))

;; end
(provide 'init-themes)
