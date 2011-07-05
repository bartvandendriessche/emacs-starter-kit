;; enable the menu bar
;; (menu-bar-mode)

;; custom function, analoguous to vi's join lines
(defun pull-next-line()
  (interactive) 
  (move-end-of-line 1) 
  (kill-line)
  (just-one-space))

;; a few custom keybindings
(global-set-key (kbd "M-j") 'pull-next-line)
(global-set-key (kbd "S-SPC") 'complete-symbol)

(color-theme-blackboard)

;; use Monaco as default font
(set-face-attribute 'default nil :family "Monaco" :height 120)

;; load ruby / rails / rspec yasnippets
(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)

;; include /usr/local/bin in eshell path
(add-hook 'eshell-mode-hook
   '(lambda nil
   (let ((path))
      (setq path (concat (getenv "PATH") ":/usr/local/bin"))
    (setenv "PATH" path))
   (local-set-key "\C-u" 'eshell-kill-input)))


;; set default TAGS filename for rinari mode
(setq rinari-tags-file-name "TAGS")

;; load emacs-eclim
(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit/senny-emacs-eclim"))
(add-to-list 'load-path (concat dotfiles-dir "/elpa-to-submit/senny-emacs-eclim/vendor"))
(require 'eclim)
(setq eclim-auto-save t)
(global-eclim-mode)
