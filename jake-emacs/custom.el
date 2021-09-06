(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(custom-file "/Users/jake/.emacs.default/custom.el")
 '(custom-safe-themes
   '("3d54650e34fa27561eb81fc3ceed504970cc553cfd37f46e8a80ec32254a3ec3" "4b6b6b0a44a40f3586f0f641c25340718c7c626cbf163a78b5a399fbe0226659" "0568a5426239e65aab5e7c48fa1abde81130a87ddf7f942613bf5e13bf79686b" "5f19cb23200e0ac301d42b880641128833067d341d22344806cdad48e6ec62f6" "3a0d3f2a02d7bbd1ea19bd242f9a53adf2798c0870a9f437372a28bbc1a278df" "1ca9614f572a10bdbdbfde80dc909790df530ca6e5fee3e270f918321c947fbf" "6c386d159853b0ee6695b45e64f598ed45bd67c47f671f69100817d7db64724d" "8f5a7a9a3c510ef9cbb88e600c0b4c53cdcdb502cfe3eb50040b7e13c6f4e78e" "a6838a652cdc2f7c4591998db5b5c8d1b872fc49e3985163a3aabc0263d6c2fd" "82dc7736d9cb3940fd995cf4fb5191fc82d737fa9a970952d0c83e666c1ede50" "c256ccc73bc6588b5cf77f0e4c9d9bb80a6ebec19c7841ea21fd920642740f2d" "7546a14373f1f2da6896830e7a73674ef274b3da313f8a2c4a79842e8a93953e" default))
 '(org-agenda-files '("~/Dropbox/org/work.org"))
 '(org-ql-views
   '(("Jake QL Todo" :buffers-files
	  ("~/Dropbox/org/cal-sync/jboxerman.org" "~/Dropbox/org/cal-sync/extracurri.org" "~/Dropbox/org/homework.org")
	  :query
	  (and
	   (todo)
	   (not
		(habit)))
	  :title "Jake QL Todo" :sort
	  (priority date deadline)
	  :super-groups
	  ((:name "Important" :discard
			  (:tag "habit")
			  :and
			  (:todo "TODO" :priority "A")
			  :todo "CONTACT" :order 3)
	   (:name "Short-term Todo" :tag "nf" :order 4)
	   (:name "Someday" :todo "SOMEDAY" :order 30)
	   (:name "Homework" :todo
			  ("HW" "READ")
			  :order 5)
	   (:name "Studying" :todo "STUDYING" :order 7)
	   (:name "Quick Picks" :tag "qp" :order 11)
	   (:name "College" :category "college" :order 35)
	   (:name "Projects" :todo "PROJ" :order 12)
	   (:name "Weekly" :tag "weekly" :order 15)
	   (:name "Extracurricular" :discard
			  (:todo "SOMEDAY")
			  :tag
			  ("robotics" "psych" "ec")
			  :order 13)
	   (:name "Personal" :category "personal" :order 27)
	   (:name "Todo" :discard
			  (:category "personal")
			  :todo "TODO" :order 20))
	  :narrow nil)
	 ("Overview: Agenda-like" :buffers-files org-agenda-files :query
	  (and
	   (not
		(done))
	   (or
		(habit)
		(deadline auto)
		(scheduled :to today)
		(ts-active :on today)))
	  :title "Agenda-like" :sort
	  (date priority todo)
	  :super-groups org-super-agenda-groups)
	 ("Overview: NEXT tasks" :buffers-files org-agenda-files :query
	  (todo "NEXT")
	  :title "Overview: NEXT tasks" :sort
	  (priority date)
	  :super-groups org-super-agenda-groups)
	 ("Calendar: Today" :buffers-files org-agenda-files :query
	  (ts-active :on today)
	  :title "Today" :sort
	  (priority)
	  :super-groups org-super-agenda-groups)
	 ("Calendar: This week" .
	  #[0 "\301 \302\303\304\305\304\306\304\307\310\301 \311!>\204 \312\313\314D\"\210\211\315H\204\232 \211\315\316\317\320\311!>\2048 \312\313\314D\"\210\321H\204\223 \321\322H\323H	\324H
\325H\326H\327H\211
\211\203\213 \203\213 \203\213 \203\213 \203\213 \203\213 \330\331
&!\202\215 \330 \266\206\266\206I\210\321H\"!I\210\211\315H\262[
#&\302\303\332\305\333\306\333\307\310\327\301 \311!>\204\300 \312\313\314D\"\210\211\315H\204>\211\315\316\317\320\311!>\204\334 \312\313\314D\"\210\321H\2047\321\322H\323H	\324H
\325H\326H\327H\211
\211\203/\203/\203/\203/\203/\203/\330\331
&!\2021\330 \266\206\266\206I\210\321H\"!I\210\211\315H\262Z#&\334\335 \336\337\340\257\341\342\343\344\345\346&\207"
		  [cl-struct-ts-tags ts-now ts-apply :hour 0 :minute :second ts-adjust day type-of signal wrong-type-argument ts 7 string-to-number format-time-string "%w" 17 3 2 1 4 5 6 float-time encode-time 23 59 org-ql-search org-agenda-files ts-active :from :to :title "This week" :super-groups org-super-agenda-groups :sort
							 (priority)]
		  40 "Show items with an active timestamp during this calendar week." nil])
	 ("Calendar: Next week" .
	  #[0 "\301\302\303\304 #\305\306\307\310\307\311\307\301\302\304 \312!>\204  \313\314\315D\"\210\211\303H\204\236 \211\303\316\317\320\312!>\204< \313\314\315D\"\210\321H\204\227 \321\322H\323H	\324H
\325H\326H\327H\211
\211\203\217 \203\217 \203\217 \203\217 \203\217 \203\217 \330\331
&!\202\221 \330 \266\206\266\206I\210\321H\"!I\210\211\303H\262[
#&\305\306\332\310\333\311\333\301\302\327\304 \312!>\204\304 \313\314\315D\"\210\211\303H\204B\211\303\316\317\320\312!>\204\340 \313\314\315D\"\210\321H\204;\321\322H\323H	\324H
\325H\326H\327H\211
\211\2033\2033\2033\2033\2033\2033\330\331
&!\2025\330 \266\206\266\206I\210\321H\"!I\210\211\303H\262Z#&\334\335 \336\337\340\257\341\342\343\344\345\346&\207"
		  [cl-struct-ts-tags ts-adjust day 7 ts-now ts-apply :hour 0 :minute :second type-of signal wrong-type-argument ts string-to-number format-time-string "%w" 17 3 2 1 4 5 6 float-time encode-time 23 59 org-ql-search org-agenda-files ts-active :from :to :title "Next week" :super-groups org-super-agenda-groups :sort
							 (priority)]
		  40 "Show items with an active timestamp during the next calendar week." nil])
	 ("Review: Recently timestamped" . org-ql-view-recent-items)
	 ("Review: Dangling tasks" :buffers-files org-agenda-files :query
	  (and
	   (todo)
	   (ancestors
		(done)))
	  :title "Review: Dangling tasks" :sort
	  (date priority todo)
	  :super-groups
	  ((:auto-parent t)))
	 ("Review: Stale tasks" :buffers-files org-agenda-files :query
	  (and
	   (todo)
	   (not
		(ts :from -14)))
	  :title "Review: Stale tasks" :sort
	  (date priority todo)
	  :super-groups
	  ((:auto-parent t)))
	 ("Review: Stuck projects" :buffers-files org-agenda-files :query
	  (and
	   (todo)
	   (descendants
		(todo))
	   (not
		(descendants
		 (todo "NEXT"))))
	  :title "Review: Stuck projects" :sort
	  (priority date)
	  :super-groups org-super-agenda-groups)))
 '(package-selected-packages
   '(org org-preview-html package-lint ox-clip diminish org-bookmark-heading burly ox-hugo htmlize weblorg templatel hl-todo bufler auto-virtualenv pyvenv-menu pyvenv lsp-ui lsp-mode dap-mode python-mode ivy-posframe rainbow-mode kaolin-themes snow flyspell-correct-ivy flyspell-correct org-appear org-sidebar company-anaconda anaconda-mode popper evil-anzu org-ql toc-org org-gcal org-super-agenda org-superstar all-the-icons-ivy-rich writeroom-mode hide-mode-line doom-modeline visual-fill-column mixed-pitch centaur-tabs solaire-mode dashboard doom-themes modus-themes spacemacs-theme evil-org evil-snipe evil-surround hydra smartparens general which-key evil pdf-tools posframe reveal-in-osx-finder restart-emacs mu4e-views mw-thesaurus define-word deft unfill windresize yasnippet undo-fu centered-cursor-mode simpleclip super-save auctex projectile web-mode ivy-prescient company-prescient prescient counsel company gcmh use-package))
 '(pdf-view-midnight-colors (cons "#bbc2cf" "#282c34"))
 '(pos-tip-background-color "#2a2931")
 '(pos-tip-foreground-color "#d4d4d6")
 '(projectile-ignored-projects
   '("~/Documents/Marcusboxerman.com/" "/usr/local/Cellar/" "~/.emacs.d/" "~/.spacemacs-devel" "~/.spacemacs-emacs" "~/Dropbox/Projects/weblorg"))
 '(rustic-ansi-faces
   ["#282c34" "#ff6c6b" "#98be65" "#ECBE7B" "#51afef" "#c678dd" "#46D9FF" "#bbc2cf"])
 '(safe-local-variable-values
   '((org-image-actual-width . 500)
	 (org-cycle-include-plain-lists . integrate)))
 '(vc-annotate-background "#282c34")
 '(vc-annotate-color-map
   (list
	(cons 20 "#98be65")
	(cons 40 "#b4be6c")
	(cons 60 "#d0be73")
	(cons 80 "#ECBE7B")
	(cons 100 "#e6ab6a")
	(cons 120 "#e09859")
	(cons 140 "#da8548")
	(cons 160 "#d38079")
	(cons 180 "#cc7cab")
	(cons 200 "#c678dd")
	(cons 220 "#d974b7")
	(cons 240 "#ec7091")
	(cons 260 "#ff6c6b")
	(cons 280 "#cf6162")
	(cons 300 "#9f585a")
	(cons 320 "#6f4e52")
	(cons 340 "#5B6268")
	(cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil)
 '(warning-suppress-types
   '(((defvaralias losing-value modus-themes-slanted-constructs))
	 (yasnippet backquote-change))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip ((t (:family "Roboto Mono"))))
 '(mode-line ((t (:height 135))))
 '(mode-line-inactive ((t (:height 135))))
 '(org-drawer ((t (:height 0.6 :inherit shadow))))
 '(org-ellipsis ((t (:foreground unspecified :inherit 'shadow))))
 '(org-warning ((t (:underline nil)))))
