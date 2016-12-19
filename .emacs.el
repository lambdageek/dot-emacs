
(require 'package)

(package-initialize)

(setq custom-file "~/.emacs-custom.el")
(load custom-file)

;; from use-package README
(eval-when-compile
  (require 'use-package))
(require 'bind-key)                ;; if you use any :bind variant


(use-package exec-path-from-shell
  :config (exec-path-from-shell-initialize))

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("org" . "http://orgmode.org/elpa/")
	     t)


(use-package magit
	     :bind ("<f7>" . magit-status)
	     :config
	     (use-package magit-gh-pulls
			  :disabled
			  :config
			  (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)))

(use-package csharp-mode
  :mode "\.cs$"
  :config
  (add-hook 'csharp-mode-hook (lambda ()
				(c-set-style "c#")
				(set-variable 'c-basic-offset 8))))
  
(defun ak-scroll-down ()
  (interactive)
  (scroll-down 1))

(defun ak-scroll-up ()
  (interactive)
  (scroll-up 1))

(global-set-key (kbd "<s-up>") 'ak-scroll-down)
(global-set-key (kbd "<s-down>") 'ak-scroll-up)

(global-set-key (kbd "<s-f11>") 'toggle-frame-fullscreen)

(use-package haskell-mode
  :config
  (add-hook 'haskell-mode-hook 'haskell-indentation-mode)
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  (add-hook 'haskell-mode-hook 'haskell-decl-scan-mode))

(use-package ido
  :init (ido-mode 1))

(use-package org
  :bind (("<f9> a" . org-agenda)
	 ("<f9> c" . org-capture)
	 ("<f9> l" . org-store-link))
  :config
  (setq org-default-notes-file (concat org-directory "/xamarin.org")))

(put 'narrow-to-region 'disabled nil)

;; OSX Sierra doesn't automatically add the ssh key to the agent.
(if (and (equal (window-system) 'ns) (getenv "SSH_AUTH_SOCK"))
    (shell-command "ssh-add -A ~/.ssh/id_rsa &> /dev/null")
  (message "ssh-agent not in emacs environment"))
