;; initialize c/c++ projects
(package-install-ifnot 'cmake-mode)
(package-install-ifnot 'cmake-font-lock)

(setenv "LD_LIBRARY_PATH" "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib")

;; initialize cmake modex
(require 'cmake-mode)
(require 'cmake-font-lock)

(add-hook 'cmake-mode-hook 'cmake-font-lock-activate)
(add-hook 'cmake-mode-hook
	  (lambda ()
	    (setq cmake-tab-width 4
		  cmake-basic-offset 4)
	    (setq-default indent-tabs-mode nil)
	    ))

;; c formating stuff
(defun my-c-mode-hook ()
  (setq c-tab-width 4)
  (setq c-basic-offset 4)
  (setq-default indent-tabs-mode nil))

(add-hook 'c-mode-hook 'my-c-mode-hook)
(add-hook 'c++-mode-hook 'my-c-mode-hook)

;; irony
(require 'irony)

(defun my:irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
        'irony-completion-at-point-async))

(add-hook 'irony-mode-hook 'my:irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)

(provide 'init-c-projects)
