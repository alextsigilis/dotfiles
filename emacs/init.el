
(require 'package)
(with-eval-after-load 'package
  (add-to-list 'package-archives '("nongnu" . "https://elpa.nongnu.org/nongnu/"))
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t))
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(global-font-lock-mode 1)
;(set-frame-font "Cascadia Code 10" nil t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(global-display-line-numbers-mode)

(setq keyboard-translate-table nil)
(setq display-line-numbers 'relative)
(setq-local keyboard-coding-system 'utf-8)

(setq visible-bell 1)

(require 'ido)
(setq ido-enable-flex-matching t)  ;; fuzzy matching
(setq ido-everywhere t)            ;; use ido in more places
(ido-mode 1)

(use-package doom-themes
  :ensure t
  :custom
  ;; Global settings (defaults)
  (doom-themes-enable-bold t)   ; if nil, bold is universally disabled
  (doom-themes-enable-italic t) ; if nil, italics is universally disabled
  ;; for treemacs users
  (doom-themes-treemacs-theme "doom-atom") ; use "doom-colors" for less minimal icon theme
  :config
  (load-theme 'doom-1337 t)

  ;; Enable flashing mode-line on errors
  (doom-themes-visual-bell-config)
  ;; Enable custom neotree theme (nerd-icons must be installed!)
  (doom-themes-neotree-config)
  ;; or for treemacs users
  (doom-themes-treemacs-config)
  ;; Corrects (and improves) org-mode's native fontification.
  (doom-themes-org-config))

(use-package magit
  :ensure t
  :commands (magit-status)
  :bind ("C-x g" . magit-status))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(doom-themes magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
