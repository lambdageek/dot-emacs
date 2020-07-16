(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(TeX-PDF-mode t)
 '(TeX-output-view-style
   (quote
    (("^dvi$"
      ("^landscape$" "^pstricks$\\|^pst-\\|^psfrag$")
      "%(o?)dvips -t landscape %d -o && gv %f")
     ("^dvi$" "^pstricks$\\|^pst-\\|^psfrag$" "%(o?)dvips %d -o && gv %f")
     ("^dvi$"
      ("^a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4$" "^landscape$")
      "%(o?)xdvi %dS -paper a4r -s 0 %d")
     ("^dvi$" "^a4\\(?:dutch\\|paper\\|wide\\)\\|sem-a4$" "%(o?)xdvi %dS -paper a4 %d")
     ("^dvi$"
      ("^a5\\(?:comb\\|paper\\)$" "^landscape$")
      "%(o?)xdvi %dS -paper a5r -s 0 %d")
     ("^dvi$" "^a5\\(?:comb\\|paper\\)$" "%(o?)xdvi %dS -paper a5 %d")
     ("^dvi$" "^b5paper$" "%(o?)xdvi %dS -paper b5 %d")
     ("^dvi$" "^letterpaper$" "%(o?)xdvi %dS -paper us %d")
     ("^dvi$" "^legalpaper$" "%(o?)xdvi %dS -paper legal %d")
     ("^dvi$" "^executivepaper$" "%(o?)xdvi %dS -paper 7.25x10.5in %d")
     ("^dvi$" "." "%(o?)xdvi %dS %d")
     ("^pdf$" "." "evince %o")
     ("^html?$" "." "netscape %o"))))
 '(TeX-view-program-selection
   (quote
    (((output-dvi style-pstricks)
      "dvips and gv")
     (output-dvi "xdvi")
     (output-pdf "Evince")
     (output-html "xdg-open"))))
 '(bookmark-default-file "~/.emacs.d/bookmarks")
 '(bookmark-save-flag 1)
 '(browse-url-browser-function (quote browse-url-chrome))
 '(browse-url-epiphany-arguments (quote ("-n")))
 '(c-default-style
   (quote
    ((c-mode . "linux")
     (java-mode . "java")
     (awk-mode . "awk")
     (other . "gnu"))))
 '(compilation-message-face (quote default))
 '(csharp-mode-hook (quote ((lambda nil (setq c-basic-offset 8)))))
 '(custom-enabled-themes (quote (leuven-dark)))
 '(custom-safe-themes
   (quote
    ("7f6d4aebcc44c264a64e714c3d9d1e903284305fd7e319e7cb73345a9994f5ef" "3f5f69bfa958dcf04066ab2661eb2698252c0e40b8e61104e3162e341cee1eb9" "672bb062b9c92e62d7c370897b131729c3f7fd8e8de71fc00d70c5081c80048c" "85d1dbf2fc0e5d30f236712b831fb24faf6052f3114964fdeadede8e1b329832" "36bab4e2aa8165f538e6d223ee1d2a0ef918ccba09e18c62cf8594467685a3b6" "9a155066ec746201156bb39f7518c1828a73d67742e11271e4f24b7b178c4710" "d5f17ae86464ef63c46ed4cb322703d91e8ed5e718bf5a7beb69dd63352b26b2" "ad9747dc51ca23d1c1382fa9bd5d76e958a5bfe179784989a6a666fe801aadf2" "51897d0e185a9d350a124afac8d5e95cda53e737f3b33befc44ab02f2b03dab1" "cb247cf944eea968aa613a5c40f4cb79f4c05503591cf33e5b4224394dd57e94" "f641bdb1b534a06baa5e05ffdb5039fb265fde2764fbfd9a90b0d23b75f3936b" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "7694bfb46ec19cfc47093783633d8cd4df208d620104910bf5c1c840528a8dd1" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "465be5317c7d95a84e376e095c21242f4f2ad75692ed806dcbb6fe27078260f1" "4e2651395202add98138c5a400573bbbfab95e137fc334e7719b526077c1e9eb" "2ba642d067e5efc0cfc76be49cd3fd5f01271cdfee30325e3dca386a152f3e99" default)))
 '(default-frame-alist (quote ((width . 110) (height . 48))))
 '(default-input-method "TeX")
 '(desktop-files-not-to-save "\\(\"^/[^/:]*:\\)\\|\\(.diary\\)")
 '(desktop-restore-eager 5)
 '(desktop-save-mode t)
 '(dired-listing-switches "-alh")
 '(erc-autoaway-mode t)
 '(erc-autojoin-channels-alist (quote (("freenode.net" "#haskell-hacboston" "#haskell"))))
 '(erc-away-nickname "lambdageek_")
 '(erc-nick "lambdageek")
 '(global-font-lock-mode t)
 '(haskell-ask-also-kill-buffers nil)
 '(haskell-ghci-program-args (quote ("-fglasgow-exts")))
 '(haskell-mode-hook
   (quote
    (turn-on-haskell-indentation interactive-haskell-mode)))
 '(haskell-process-log t)
 '(haskell-process-suggest-language-pragmas nil)
 '(haskell-process-suggest-overloaded-strings nil)
 '(haskell-process-type (quote cabal-new-repl))
 '(ido-mode (quote both) nil (ido))
 '(inhibit-startup-screen t)
 '(ispell-program-name "aspell")
 '(iswitchb-mode t)
 '(magit-diff-use-overlays nil)
 '(magit-use-overlays nil)
 '(mail-host-address "lambdageek.org")
 '(markdown-command "pandoc -f markdown -t html -5 -s")
 '(menu-bar-mode nil)
 '(org-agenda-files (quote ("~/org/notes.org" "~/org/projects.org")))
 '(org-default-notes-file (concat org-directory "/notes.org"))
 '(org-hide-emphasis-markers t)
 '(org-mobile-directory "~/Dropbox/org/")
 '(org-src-fontify-natively t)
 '(org-tag-alist
   (quote
    ((:startgroup)
     ("work" . 119)
     ("home" . 104)
     (:endgroup)
     ("note" . 110)
     ("idea" . 105)
     ("project" . 112)
     ("FLAGGED" . 70))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO" "WAITING(w@)" "STARTED(s!)" "|" "DONE(d!)" "CANCELLED(c@)"))))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(package-selected-packages
   (quote
    (cmake-mode nord-theme csproj-mode yaml-mode dart-mode cargo rust-mode nginx-mode typescript-mode exec-path-from-shell use-package solarized-theme racket-mode org mmm-mode markdown-mode magit leuven-theme haskell-mode csharp-mode borland-blue-theme)))
 '(remote-shell-program "/usr/bin/ssh")
 '(safe-local-variable-values
   (quote
    ((bidi-display-reordering . t)
     (org-hierarchical-checkbox-statistics)
     (whitespace-style quote
		       (tabs trailing empty))
     (TeX-master . "talk")
     (TeX-master . t)
     (TeX-PDF-mode . t))))
 '(server-mode t)
 '(show-paren-mode t)
 '(sml-compile-commands-alist
   (quote
    (("CMB.make()" . "all-files.cm")
     ("CMB.make()" . "pathconfig")
     ("CM.make \"sources.cm\"" . "sources.cm")
     ("use \"load-all\"" . "load-all"))))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(typescript-auto-indent-flag nil)
 '(typescript-indent-level 4)
 '(unify-8859-on-decoding-mode t)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(user-mail-address "aleksey@lambdageek.org")
 '(vc-annotate-background nil)
 '(vc-annotate-very-old-color nil)
 '(visible-bell t))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:slant normal :weight light :height 100 :width semi-condensed :foundry "PfEd" :family "Monoid HalfTight"))))
 '(flyspell-incorrect ((t (:inherit nil :underline (:color "red" :style wave))))))

