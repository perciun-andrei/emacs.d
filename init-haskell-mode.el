(defun enable-haskell-mode ()
  (subword-mode +1)
  (turn-on-haskell-doc-mode)
  (turn-on-haskell-indentation))

(add-hook 'haskell-mode-hook 'enable-haskell-mode)

(provide 'init-haskell-mode)

