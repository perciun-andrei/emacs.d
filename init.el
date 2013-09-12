;; define the root dir of configs
(defvar root-dir (file-name-directory load-file-name) "The root dir of the Emacs configuration.")
;; (defvar package-el-dir (expand-file-name "package" root-dir) "The location of package.el")

(add-to-list 'load-path root-dir)
;; (add-to-list 'load-path package-el-dir)

;; Adding marmalade packages
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(defun package-install-ifnot (package)
  (when (not (package-installed-p package)) (package-install package)))

;; init-core
(require 'init-core)

;; init-core-ui
(require 'init-core-ui)

;; init-ui
(require 'init-ui)

;; init-themes
(require 'init-themes)

;; init-projectile
(require 'init-projectile)

;; Haskell mode
(require 'init-haskell-mode)
