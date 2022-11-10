(defvar rk-minor-mode-map (make-keymap) "rk-minor-mode map keymap.")

(define-key rk-minor-mode-map (kbd "s-<left>") 'beginning-of-visual-line)

(define-minor-mode rk-minor-mode
  "A minor mode."
  :global t
  :lighter " A minor")

(rk-minor-mode 1)
