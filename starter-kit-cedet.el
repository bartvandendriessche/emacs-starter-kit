(load-file "~/.emacs.d/elpa-to-submit/cedet/common/cedet.el")

;; Semantic customization, enable one of the following semantic modes
;; For more information, be sure to check out http://xtalk.msk.su/~ott/en/writings/emacs-devenv/EmacsCedet.html
;; * semantic-load-enable-minimum-features
;; enables only minimum of necessary features — keep syntactic
;; information for current buffer up-to date, storing of syntactic
;; information for later use (Semanticdb), and loading of
;; corresponding information with Semanticdb and Ebrowse;

;(semantic-load-enable-minimum-features)

;; * semantic-load-enable-code-helpers
;; enables senator-minor-mode for navigation in buffer,
;; semantic-mru-bookmark-mode for storing positions of visited tags,
;; and semantic-idle-summary-mode, that shows information about tag
;; under point;

(semantic-load-enable-code-helpers)

;; * semantic-load-enable-gaudy-code-helpers
;; enables semantic-stickyfunc-name that displays name of current
;; function in topmost line of buffer, semantic-decoration-mode to
;; decorate tags, using different faces, and
;; semantic-idle-completion-mode for automatic generation of possible
;; names completions, if user stops his work for some time;

;(semantic-load-enable-gaudy-code-helpers)

;; * semantic-load-enable-excessive-code-helpers
;; enables which-func-mode, that shows name of current function in
;; status line;

;(semantic-load-enable-excessive-code-helpers)

;; * semantic-load-enable-semantic-debugging-helpers
;; enables several modes, that are useful when you debugging Semantic
;; — displaying of parsing errors, its state, etc.

;(semantic-load-enable-semantic-debugging-helpers)

(global-semantic-tag-folding-mode 1) ; Enable semantic tag folding mode
(global-srecode-minor-mode 1) ; Enable template insertion menu

;; bind folding functions
(global-set-key (kbd "C-M--") 'semantic-tag-folding-fold-all)
(global-set-key (kbd "C-M-=") 'semantic-tag-folding-show-all)
(global-set-key (kbd "C--") 'semantic-tag-folding-fold-block)
(global-set-key (kbd "C-=") 'semantic-tag-folding-show-block)

(provide 'starter-kit-cedet)
