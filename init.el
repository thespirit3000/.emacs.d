
;; System-type definition
(setq initial-scratch-message "For recent press C-x C-r")
(defun display-startup-echo-area-message ()
  (message "Let the hacking begin!"))
(defun system-is-linux()
    (string-equal system-type "gnu/linux"))
(defun system-is-windows()
  (string-equal system-type "windows-nt"))
(setq redisplay-dont-pause t
      scroll-margin 5
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)



;; Put all Emacs customize variables & faces in its own file
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)


(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(global-hl-line-mode t)		    

(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq recentf-max-saved-items 25)

(ido-mode 1)
(require 'package)
(package-initialize)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(when (not (package-installed-p 'use-packadge))
  (package-refresh-contents)
  (package-install 'use-package))

(use-package smex
  :ensure t
  :config (smex-initialize)
)

(use-package magit
  :ensure t
  :bind ("C-x g" . magit-status))
(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 20 Global shortcuts
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; Navigate between buffers
(global-set-key "\M-p" 'previous-buffer)
(global-set-key "\M-n" 'next-buffer)

(global-set-key (kbd "<escape>") 'keyboard-escape-quit)










