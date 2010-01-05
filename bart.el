;; load a peculiarly nice mix between twilight and zenburn scheme
(color-theme-twilight)
(color-theme-zenburn)

(require 'php-mode)

;; setup drupal-mode
(require 'setup-php)
(setup-php)

;; load custom yasnippets
(yas/load-directory "~/.emacs.d/snippets/yasnippet-drupal-mode")
(yas/load-directory "~/.emacs.d/snippets/yasnippet-php-mode")

; enable drupal snippets in php-mode
(yas/define-snippets 'php-mode nil 'drupal-mode)

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

;; custom function, analoguous to vi's join lines
(defun pull-next-line()
  (interactive) 
  (move-end-of-line 1) 
  (kill-line)
  (just-one-space))

;; a few custom keybindings
(global-set-key (kbd "M-j") 'pull-next-line)
(global-set-key (kbd "S-SPC") 'complete-symbol)


;; customize company mode
;; (add-to-list 'load-path "~/.emacs.d/lisp/company-mode")
;; (require 'company)
(setq company-begin-commands '(self-insert-command))
(setq company-backends nil)
(add-hook 'css-mode-hook (lambda () (set (make-local-variable 'company-backends) '(company-css company-dabbrev-code company-semantic))(company-mode 1)))
(add-hook 'emacs-lisp-mode-hook (lambda () (set (make-local-variable 'company-backends) '(company-elisp))(company-mode 1)))
(add-hook 'php-mode-hook (lambda () (set (make-local-variable 'company-backends) '(company-etags)) (setq company-etags-modes nil) (set (make-local-variable 'company-etags-modes) '(php-mode)) (company-mode 1)))
