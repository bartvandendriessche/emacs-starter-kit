(add-to-list 'load-path "~/.emacs.d/vendor/php-mode-1.5.0/")
(require 'php-mode)

;; setup drupal-mode
(require 'setup-php)
(setup-php)

;; enable yasnippet for nxhtml mode
(yas/define-snippets 'nxhtml-mode nil 'html-mode)

;; automatically open .tpl.php files in nxhtml-mumamo-mode
(add-to-list 'auto-mode-alist '("\\.\\(tpl\\.php\\)$" . nxhtml-mumamo-mode))

;; enable the menu bar
(menu-bar-mode)

;; custom function to make drupal-snippets work
(defun sacha/drupal-module-name ()
  "Return the Drupal module name for .module and .install files"
  (file-name-sans-extension (file-name-nondirectory (buffer-file-name))))