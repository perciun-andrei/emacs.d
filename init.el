;; define the root dir of configs
(defvar root-dir (file-name-directory load-file-name) "The root dir of the Emacs configuration.")
(defvar packages-dir (expand-file-name "packages" root-dir) "The location of package.el")

(add-to-list 'load-path (expand-file-name "initialize-scripts" root-dir))

;; Adding marmalade packages
(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (irony cmake-font-lock cmake-mode neotree projectile auto-complete monokai-theme zenburn-theme color-theme-solarized ido-yes-or-no flx-ido))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
