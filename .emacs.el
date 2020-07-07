
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
  :bind (("<f7>" . magit-status)
	 ("M-<f7>" . magit-file-popup))
  ;; The below doesn't work because the submodule code in Magit doesn't know about
  ;; switches.  At least around 2018-12-13 https://github.com/magit/magit/issues/3313
  ;;  :config
  ;;  (magit-define-popup-switch 'magit-submodule-popup ?r "Recursive" "--recursive")
  )

(use-package csharp-mode
 :mode "\.cs$"
 :config
 (add-hook 'csharp-mode-hook (lambda ()
				(c-set-style "c#")
				(set-variable 'c-basic-offset 8))))
  
(use-package csproj-mode
  :mode "\.props$"
  :mode "\.targets$")

(use-package cc-mode
  :mode ("\.inl" . c++-mode))

(use-package yaml-mode)

(defun ak-scroll-down ()
  (interactive)
  (scroll-down 1))

(defun ak-scroll-up ()
  (interactive)
  (scroll-up 1))

(global-set-key (kbd "<M-s-up>") 'ak-scroll-down)
(global-set-key (kbd "<M-s-down>") 'ak-scroll-up)

(global-set-key (kbd "<s-f11>") 'toggle-frame-fullscreen)

(use-package haskell-mode
  :config
  (add-hook 'haskell-mode-hook 'haskell-indentation-mode)
  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  (add-hook 'haskell-mode-hook 'haskell-decl-scan-mode)
  :bind (:map haskell-cabal-mode-map
	      ("C-`" . haskell-interactive-bring)
	      ("C-c C-k" . haskell-interactive-mode-clear)
	      ("C-c C-c" . haskell-process-cabal-build)
	      ("C-c c" . haskell-process-cabal)))

(use-package ido
  :init (ido-mode 1))

(use-package org
  :bind (("<f9> a" . org-agenda)
	 ("<f9> c" . org-capture)
	 ("<f9> l" . org-store-link))
  :config
  (setq org-default-notes-file (concat org-directory "/xamarin.org"))
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
