;; ==================================================
;; RUBY SETTING
;; ==================================================

;; --------------------------------------------------
;; Open as ruby-mode
;; --------------------------------------------------

(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.cap$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))

;; --------------------------------------------------
;; ruby template file
;; --------------------------------------------------
(require 'web-mode nil t)
(add-to-list 'auto-mode-alist '("\\.erb$" . web-mode))


;; --------------------------------------------------
;; feature file for Turnip acceptance test
;; --------------------------------------------------
(require 'feature-mode nil t)
(add-to-list 'auto-mode-alist '("\\.feature$" . feature-mode))

;; --------------------------------------------------
;; ruby-electric.el
;; [description] 括弧などを自動挿入
;; [install] (install-elisp https://raw.github.com/ruby/ruby/trunk/misc/ruby-electric.el)
;; --------------------------------------------------
(require 'ruby-electric nil t)

;; --------------------------------------------------
;; ruby-end.el
;; --------------------------------------------------
(require 'ruby-end nil t)

;; --------------------------------------------------
;; ruby-block.el
;; [description] endに対応する行のハイライト
;; [install] (auto-install-from-emacsWiki ruby-block.el)
;; --------------------------------------------------
(require 'ruby-block nil t)
(ruby-block-mode t)
(setq ruby-block-highlight-toggle t)

;; --------------------------------------------------
;; inf-ruby.el
;; [description] irbをemacsから利用する
;; [install] (install-elisp https://raw.github.com/ruby/ruby/trunk/misc/inf-ruby.el)
;; --------------------------------------------------
(require 'inf-ruby)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

;; --------------------------------------------------
;; flymake
;; [description] synta
;; [install] (package-install )
;; --------------------------------------------------
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)


;; --------------------------------------------------
;; rcodetools
;; [description]
;;     xmp: #=>
;; --------------------------------------------------
(require 'rcodetools nil t)
(define-key ruby-mode-map (kbd "\C-c \C-d") 'xmp)


;; --------------------------------------------------
;; smartchr
;; [description]
;; --------------------------------------------------

(require 'smartchr nil t)

(defun smartchr-ruby ()
  (local-set-key (kbd "=") (smartchr '("=" " = " " == " " =~ " "===")))
  (local-set-key (kbd "+") (smartchr '("+" " + " " += ")))
  (local-set-key (kbd "-") (smartchr '("-" " - " " -= ")))

  (local-set-key (kbd ">") (smartchr '(">" " => ")))

  (local-set-key (kbd "\"") (smartchr '("\"`!!'\"" "\"")))
  (local-set-key (kbd "(") (smartchr '("(`!!')" "(")))
  (local-set-key (kbd "{") (smartchr '("{ `!!' }" "{\n`!!'\n}" "{")))
  (local-set-key (kbd "[") (smartchr '("[`!!']" "[")))
  )

(add-hook 'ruby-mode-hook 'smartchr-ruby)


