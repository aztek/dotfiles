(setq load-path (cons "~/emacs/haskell-mode" load-path))
(setq load-path (cons "~/emacs/shm/elisp"    load-path))
(setq load-path (cons "~/emacs/promela-mode" load-path))
(setq load-path (cons "~/emacs/tptp-mode"    load-path))
;(setq load-path (cons "~/emacs/coq" load-path))
;(setq load-path (cons "~/emacs/inferior-coq" load-path))

(require 'shm)
(add-hook 'haskell-mode-hook 'structured-haskell-mode)

(autoload 'promela-mode "promela-mode" "PROMELA mode" nil t)
(setq auto-mode-alist
  (append
    (list (cons "\\.promela$" 'promela-mode)
          (cons "\\.spin$"    'promela-mode)
          (cons "\\.pml$"     'promela-mode)
    )
    auto-mode-alist))

(autoload 'tptp-mode "tptp-mode" "TPTP mode" nil t)
(setq auto-mode-alist
  (append
      (list (cons "\\.tptp$" 'tptp-mode))
      auto-mode-alist))

(setq auto-mode-alist
  (append
    (list (cons "\\.smt_in" 'lisp-mode)
    auto-mode-alist)))

(show-paren-mode 1)

(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(agda2-fontset-name "Consolas")
 '(agda2-include-dirs (quote (
    "/Users/aztek/Library/Agda"
    "./NeilLib"
    ".")))
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes nil)
 '(font-lock-maximum-decoration t)
 '(global-font-lock-mode t)
 '(scalable-fonts-allowed t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;(setq auto-mode-alist (cons '("\\.v$" . coq-mode) auto-mode-alist))
;(autoload 'coq-mode "coq" "Major mode for editing Coq vernacular." t)
;(autoload 'run-coq "inferior-coq" "Run an inferior Coq process." t)
;(autoload 'run-coq-other-window "inferior-coq" "Run an inferior Coq process in a new window." t)
;(autoload 'run-coq-other-frame  "inferior-coq" "Run an inferior Coq process in a new frame." t)

;(load-file "/Users/aztek/Downloads/ProofGeneral-4.2/ProofGeneral/generic/proof-site.el")
;(setq coq-prog-name "/usr/local/bin/coqtop")

;; Enable mouse support
(unless window-system
  (require 'mouse)
  (xterm-mouse-mode t)
  (global-set-key [mouse-4] '(lambda ()
                              (interactive)
                              (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
                              (interactive)
                              (scroll-up 1)))
  (defun track-mouse (e))
  (setq mouse-sel-mode t)
)
(put 'downcase-region 'disabled nil)
