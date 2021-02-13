
;;; where to get more preferences and things
(require 'package)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; from use-package README
(eval-when-compile
  (require 'use-package))
(require 'bind-key)                ;; if you use any :bind variant


(when (display-graphic-p)
  (menu-bar-enable-clipboard)
  (setq select-enable-clipboard t))

(use-package exec-path-from-shell
  :if window-system
  :config (exec-path-from-shell-initialize))

(unless (string-equal system-type "darwin")
  (global-set-key (kbd "s-u") 'revert-buffer))

;(when (file-exists-p "~/lib/twelf/emacs")
;  (setq load-path (cons "~/lib/twelf/emacs" load-path)))


;(when (file-exists-p "~/.local/share/emacs")
;  (add-to-list 'load-path "~/.local/share/emacs"))

;(setq twelf-font-dark-background t)

;(when (file-exists-p "~/lib/twelf/")
;  (setq twelf-root "~/lib/twelf/")
;  (load "twelf-init")
;  ;(load-library "twelf-font")
;  )

;(when (file-exists-p "~/.emacs.d/ott/")
;  (add-to-list 'load-path "~/.emacs.d/ott")
;  )

;(autoload 'sml-mode "sml-mode" "Major mode for editing ML programs." t)

;(setq auto-mode-alist
;      (append auto-mode-alist
;              '(("\\.pop$"    . c-mode) ; not really, but close enough
;;		("\\.sml$" . sml-mode)
;;		("\\.sig$" . sml-mode)
;		("\\.fun$" . sml-mode)
;;		("\\.ML$" . sml-mode)
;		)))

;(when (file-exists-p "~/working/gc/lsl/prover/emacs/")
;  (add-to-list 'load-path "~/working/gc/lsl/prover/emacs/")
;  (autoload 'lsl-decl-mode "lsl-decl-mode" "Major mode for editing LSL declaration files." t)
;  (add-to-list 'auto-mode-alist	'("\\.lsl$" . lsl-decl-mode)))

;(setq sml-indent-level 3)
;(setq sml-compile-command "CM.make \"sources.cm\"")

;; Markdown
;(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
;(add-to-list 'auto-mode-alist '("\\.markdown$" . markdown-mode))

(global-set-key (kbd "C-c C-k") 'compile)
(global-set-key (kbd "C-c C-r") 'remote-compile)
(global-set-key (kbd "ESC ESC b") 'bury-buffer)
(global-set-key (kbd "<s-f11>") 'toggle-frame-fullscreen)
(global-set-key (kbd "<f12>") 'toggle-frame-fullscreen)
(global-set-key [home] 'beginning-of-buffer)
(global-set-key [end] 'end-of-buffer)


(use-package magit
  :bind (("<f7>" . magit-status)
	 ("M-<f7>" . magit-dispatch)
	 ("S-<f7>" . magit-file-dispatch)))

(use-package csharp-mode
 :mode "\.cs$"
 :config
 (add-hook 'csharp-mode-hook (lambda ()
				(set-variable 'c-basic-offset 8))))
  
(use-package csproj-mode
  :mode "\.props$"
  :mode "\.targets$")

(use-package cc-mode
  :mode ("\.inl" . c++-mode))

(use-package yaml-mode)

(use-package markdown-mode
  :commands (markdown-mode gfm-mode)
  :mode (("\\.md\\'" . gfm-mode)
	 ("\\.markdown\'" . markdown-mode)))

(defun ak-scroll-down ()
  (interactive)
  (scroll-down 1))

(defun ak-scroll-up ()
  (interactive)
  (scroll-up 1))

(global-set-key (kbd "<M-s-up>") 'ak-scroll-down)
(global-set-key (kbd "<M-s-down>") 'ak-scroll-up)


;; (defun fd-add-file-to-recent ()
;;  (when buffer-file-name
;;    (start-process "addtorecent.py" nil "addtorecent.py"
;;                   (concat "file://" buffer-file-name)
;;                   "text/plain"
;;                   "Emacs"
;;                   "emacsclient %F")))

;; (add-hook 'find-file-hook 'fd-add-file-to-recent)

(use-package haskell-mode
  :init
  (add-hook 'haskell-mode-hook 'haskell-indentation-mode)
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  (add-hook 'haskell-mode-hook 'haskell-decl-scan-mode)
  :bind (:map haskell-cabal-mode-map
	      ("C-`" . haskell-interactive-bring)
	      ("C-c C-k" . haskell-interactive-mode-clear)
	      ("C-c C-c" . haskell-process-cabal-build)
	      ("C-c c" . haskell-process-cabal)))


(use-package org
  :bind (("<f9> a" . org-agenda)
	 ("<f9> c" . org-capture)
	 ("<f9> l" . org-store-link)
	 ("<f9> [" . org-agenda-file-to-front)
	 ("<f9> ]" . org-remove-file))
  :init
  (add-hook 'org-mode-hook 'flyspell-mode t))

(use-package typescript-mode
  :mode "\\.tsx$"
  :init
  (add-hook 'typescript-mode-hook (lambda ()
				   (setq indent-tabs-mode nil))))

(use-package cmake-mode)
  

(put 'narrow-to-region 'disabled nil)

;; OSX Sierra doesn't automatically add the ssh key to the agent.
(if (and (equal (window-system) 'ns) (getenv "SSH_AUTH_SOCK"))
    (shell-command "ssh-add -A ~/.ssh/id_rsa &> /dev/null")
  (message "ssh-agent not in emacs environment"))

(use-package editorconfig
  :config
  (editorconfig-mode 1))

(use-package editorconfig-domain-specific
  :config
  (add-hook 'editorconfig-after-apply-functions 'editorconfig-domain-specific))
