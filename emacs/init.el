(global-font-lock-mode 1)
(set-frame-font "Cascadia Code 10" nil t)
(tool-bar-mode -1)
(menu-bar-mode -1)

(setq keyboard-translate-table nil)
(setq-local keyboard-coding-system 'utf-8)

(setq visible-bell 1)

(require 'ido)
(setq ido-enable-flex-matching t)  ;; fuzzy matching
(setq ido-everywhere t)            ;; use ido in more places
(ido-mode 1)

;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-vivendi-tinted))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages '(magit theme-buffet))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
