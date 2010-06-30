(require 'php-mode)

(defconst my-php-style
  '((c-offsets-alist . (
    (arglist-close . c-lineup-close-paren) ; correct arglist closing parenthesis
   )))
  "My PHP Programming style"
)

(c-add-style "my-php-style" my-php-style)

(defun my-php-mode ()
  "My personal php-mode customizations."
  (c-set-style "my-php-style")
  ; More generic PHP customizations here
  ; load the php yas snippets
  ; (yas/load-directory "~/.emacs.d/snippets/yasnippet-php-mode")
  )

(defun setup-php ()
  ; PHP
  (add-hook 'php-mode-hook 'my-php-mode)

  ; Drupal
  (add-to-list 'auto-mode-alist '("\\.\\(module\\|test\\|install\\|theme\\)$" . drupal-mode))
  (add-to-list 'auto-mode-alist '("/drupal.*\\.\\(php\\|inc\\)$" . drupal-mode))
  (add-to-list 'auto-mode-alist '("\\.info" . conf-windows-mode)))

(setup-php)

(provide 'starter-kit-php)
