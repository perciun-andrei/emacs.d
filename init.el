;; define the root dir of configs
(defvar root-dir (file-name-directory load-file-name) "The root dir of the Emacs configuration.")
(defvar packages-dir (expand-file-name "packages" root-dir) "The location of package.el")

(add-to-list 'load-path root-dir)
;; (add-to-list 'load-path package-el-dir)

;; Adding marmalade packages
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
;; (package-refresh-contents)

(defun package-install-ifnot (package)
  (when (not (package-installed-p package)) (package-install package)))

;; Disable creating '~' backup files
(setq make-backup-files nil)

;; init ui
(require 'init-ui)

;; init themes
(require 'init-themes)

;; init projectile
(require 'init-projectile)

;; Haskell mode
(require 'init-haskell-mode)

;; Load speedbar from packages folder
(defvar sr-speedbar-dir (expand-file-name "sr-speedbar-0.1.9" packages-dir))
(add-to-list 'load-path sr-speedbar-dir)
(require 'sr-speedbar)
