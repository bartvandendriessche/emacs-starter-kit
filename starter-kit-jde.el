(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa-to-submit/jde/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elpa-to-submit/elib"))


;; defer loading the JDE until a java file is opened
(setq defer-loading-jde t)
(if defer-loading-jde
    (progn
      (autoload 'jde-mode "jde" "JDE mode." t)
      (setq auto-mode-alist
            (append
             '(("\\java\\'" . jde-mode)) auto-mode-alist)))
  (require 'jde))

;; ;; create a hook for 'jde-mode
;; (setq my-jde-mode-hook ()
;;       ;; set default Java indentation to 4
;;       ;; (setq c-basic-offset 4)
;;       )

;; ;; register jde-mode hook
;; (add-hook 'jde-mode-hook 'my-jde-mode-hook)

;; (add-to-list 'load-path "~/.emacs.d/elpa-to-submit/ecb")
;; (require 'ecb)

(provide 'starter-kit-jde)

