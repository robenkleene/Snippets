(eval-after-load 'lisp-mode
  '(progn
     (define-key emacs-lisp-mode-map (kbd "s-r") 'rk-eval-lisp)
     ))
