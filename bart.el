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

;;(color-theme-zenburn)
(color-theme-blackboard)

;; use Monaco as default font
(set-face-attribute 'default nil :family "Monaco" :height 120)
