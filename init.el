;; define the root dir of configs
(defvar root-dir (file-name-directory load-file-name) "The root dir of the Emacs configuration.")
(defvar packages-dir (expand-file-name "packages" root-dir) "The location of package.el")

(add-to-list 'load-path (expand-file-name "initialize-scripts" root-dir))

;; Adding marmalade packages
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

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

;; init autocomplete
(require 'init-auto-complete)

;; init projectile
(require 'init-projectile)

;; init c/c++ project related modes
(require 'init-c-projects)

;; Haskell mode
;; (require 'init-haskell-mode)
