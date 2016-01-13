;; installing themes
(package-install-ifnot 'color-theme-solarized)
(package-install-ifnot 'zenburn-theme)
(package-install-ifnot 'monokai-theme)

;; setting the theme for window version
(when window-system
  (load-theme 'monokai t))

;; setting the theme for terminal version
(unless window-system
  (load-theme 'monokai t))

;; end
(provide 'init-themes)
