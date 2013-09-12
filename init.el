;; define the root dir of configs
(defvar root-dir (file-name-directory load-file-name) "The root dir of the Emacs configuration.")
(add-to-list 'load-path root-dir)

;; Adding marmalade packages
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; init-core
(require 'init-core)

;; init-core-ui
(require 'init-core-ui)

;; init-ui
(require 'init-ui)

;; Haskell mode
(require 'init-haskell-mode)
