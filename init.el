;; unicode
(setenv "LANG" "ko_KR.UTF-8")
(setenv "LC_ALL" "ko_KR.UTF-8")
(setenv "LC_CTYPE" "ko_KR.UTF-8")

;;melpa 셋팅
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))

;; org mode package archives 추가
(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(compilation-message-face (quote default))
 '(conda-anaconda-home "/home/soungno/anaconda3")
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
	("ec5f697561eaf87b1d3b087dd28e61a2fc9860e4c862ea8e6b0b77bd4967d0ba" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "599f1561d84229e02807c952919cd9b0fbaa97ace123851df84806b067666332" "4e753673a37c71b07e3026be75dc6af3efbac5ce335f3707b7d6a110ecb636a3" default)))
 '(ecb-options-version "2.50")
 '(hl-bg-colors
   (quote
	("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
	("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(hl-paren-colors (quote ("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900")))
 '(magit-diff-use-overlays nil)
 '(nrepl-message-colors
   (quote
	("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files
   (quote
	("~/workspaces/sejong_tdata/journal.org" "~/workspaces/sejong_tdata/worklog/20181124.org")))
 '(package-selected-packages
   (quote
	(cyberpunk-theme auto-virtualenv auto-virtualenvwrapper exec-path-from-shell virtualenv color-theme-sanityinc-tomorrow arduino-mode docker-tramp yaml-mode highlight-indent-guides smart-shift json-mode ox-gfm org-preview-html auto-org-md htmlize org-bullets realgud plantuml-mode org-plus-contrib org bash-completion markdown-preview-eww flymd markdown-preview-mode markdown-mode+ markdown-mode emacsql-psql emacsql-mysql emacsql easy-kill django-mode csv-mode conda auto-auto-indent ansible add-hooks ac-anaconda jedi-core kubernetes auto-sudoedit anything-tramp tramp-hdfs docker-compose-mode dockerfile-mode docker request websocket ein ztree zenburn-theme windresize starter-kit-js starter-kit-bindings sql-indent python-mode python-docstring python-cell py-autopep8 ob-ipython material-theme jedi-direx hydra hive go-autocomplete fuzzy flycheck expand-region elpy el-spy ein-mumamo dracula-theme dired-details+ darcula-theme better-defaults autopair anaconda-mode pyvenv elpy py-autopep8 auto-complete ssh ecb)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background-mode nil)
 '(weechat-color-list
   (quote
	(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;-------------------사용자 설정----------------------------------
;;작성자 : 김성노
;;theme
;;(defun zenburn-init()
;;  (load-theme 'zenburn)
;; )
;;(add-hook 'after-init-hook 'zenburn-init)
;;(load-theme 'solarized-dark)

;;(add-hook 'after-init-hook 
;;		  (lambda () (load-theme 'cyberpunk t)))

(load-theme 'zenburn t)
;;emacs font 한글 폰트 설정 포함
(when (eq system-type 'gnu/linux)

  ;; default Latin font (e.g. Consolas)
  ;; but I use Monaco 
  (set-face-attribute 'default nil :family "Hack")

  ;; default font size (point * 10)
  ;;
  ;; WARNING!  Depending on the default font,
  ;; if the size is not supported very well, the frame will be clipped
  ;; so that the beginning of the buffer may not be visible correctly. 
  (set-face-attribute 'default nil :height 120)

  ;; use specific font for Korean charset.
  ;; if you want to use different font size for specific charset,
  ;; add :size POINT-SIZE in the font-spec.
  (set-fontset-font t 'hangul (font-spec :name "D2Coding"))

  ;; you may want to add different for other charset in this way.
  )

;;show paren mode 매칭되는 괄호 강조하기
(show-paren-mode 1)
(setq show-paren-delay 0)

;;줄수 표시
(global-linum-mode t)

;;emacs 외부에서 파일 변경시 현재 버퍼 자동으로 다시 읽기
(global-auto-revert-mode 1)

;;;;;;;;;;;;screen 셋팅;;;;;;;;;;;;;;;;;;;
;;remove splash screen
(setq inhibit-splash-screen t)

;;remove toolbar
(tool-bar-mode 0)

;;remove menubar
(menu-bar-mode 0)

;;;;;;;;;;;;;;;;;;;mode;;;;;;;;;;;;;;;;;;;;;;
;;버퍼변경시 향상된 모드를 제공
(iswitchb-mode)

;;문법 강조
(global-font-lock-mode t)

;;탭 width 설정
;; 엔터 입력시 들여쓰기
(local-set-key (kbd "RET") 'newline-and-indent)

;; 탭키 입력시 영역지정되어 있으면 영역 들여쓰기. 영역없으면 탭키.
(local-set-key (kbd "TAB") 'indent-block)

;; 들여쓰기 할 때 실제 탭문자 입력
(setq indent-tabs-mode t)

;; 탭 사이즈 4
(setq default-tab-width 4)

;;투명 설정 
(set-frame-parameter (selected-frame) 'alpha '(95 95))

(add-to-list 'default-frame-alist '(alpha 95 95))

;; ananconda mode
(add-hook 'python-mode-hook 'anaconda-mode)

(setenv "WORKON_HOME" "/home/soungno/anaconda3/envs")

(pyvenv-mode 1)

;; conda mode
(setq inhibit-startup-message t) ;; hide the startup message
(global-linum-mode t) ;; enable line numbers globally

(elpy-enable)

(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; auto complete
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)

;;ein
(require 'ein)
(require 'ein-notebook)
(require 'ein-subpackages)


;;jedi
(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)

;; notebook
;;
(add-hook 'python-mode-hook 'ein:connect-to-default-notebook)


;;tramp mode
(setq tramp-default-method "ssh")

;;ssh
 (require 'ssh)
    (add-hook 'ssh-mode-hook
              (lambda ()
                (setq ssh-directory-tracking-mode t)
                (shell-dirtrack-mode t)
                (setq dirtrackp nil)))

;; PATH
(setenv "PATH"(shell-command-to-string"source ~/.bashrc; echo -n $PATH"))

;; sql-indent-string
(defun sql-indent-string ()
  "Indents the string under the cursor as SQL."
  (interactive)
  (save-excursion
    (er/mark-inside-quotes)
    (let* ((text (buffer-substring-no-properties (region-beginning) (region-end)))
           (pos (region-beginning))
           (column (progn (goto-char pos) (current-column)))
           (formatted-text (with-temp-buffer
                             (insert text)
                             (delete-trailing-whitespace)
                             (sql-indent-buffer)
                             (replace-string "\n" (concat "\n" (make-string column (string-to-char " "))) nil (point-min) (point-max))
                             (buffer-string))))
      (delete-region (region-beginning) (region-end))
      (goto-char pos)
      (insert formatted-text))))


;; dired-details
;;(require 'dired-details+)

;; ecb
(require 'ecb)

;;(setq ecb-show-sources-in-directories-buffer 'always)
;;(setq ecb-compile-window-height 12)

;; ecb keybinds
(global-set-key (kbd "C-x C-;") 'ecb-activate)
(global-set-key (kbd "C-x C-'") 'ecb-deactivate)

(global-set-key (kbd "C-x C-:") 'ecb-show-ecb-windows)
(global-set-key (kbd "C-x C->") 'ecb-hide-ecb-windows)

;;ecb 오류
(setq ecb-examples-bufferinfo-buffer-name nil)

;; customize the keys for ECB
(define-key ecb-mode-map (kbd "M-1") 'ecb-goto-window-directories)
(define-key ecb-mode-map (kbd "M-2") 'ecb-goto-window-sources)
(define-key ecb-mode-map (kbd "M-3") 'ecb-goto-window-methods)
(define-key ecb-mode-map (kbd "M-4") 'ecb-goto-window-history)
(define-key ecb-mode-map (kbd "M-5") 'ecb-goto-window-compilation)
(define-key ecb-mode-map (kbd "M-0") 'ecb-goto-window-edit1)

(setenv "IPY_TEST_SIMPLE_PROMPT" "1")
  
(require 'epa-file)
(epa-file-enable)
(setq epa-file-name-regexp "\\.\\(gpg\\|asc\\)$")
(epa-file-name-regexp-update)
;; gpg 파일 auto encryt 제외

;; make emacs always use its own browser for opening URL links
(setq browse-url-browser-function 'eww-browse-url)

;; org mode
;; The following lines are always needed.  Choose your own keys.
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)
(add-hook 'org-mode-hook
		  (lambda ()
			(org-bullets-mode t)))
(setq org-hide-leading-stars t)

;; org mode inline
(add-hook 'org-babel-after-execute-hook 'org-redisplay-inline-images)

;; org to markdown-mode
(eval-after-load "org"
  '(require 'ox-gfm nil t))

;; org platuml
(with-eval-after-load 'org
 (org-babel-do-load-languages 'org-babel-load-languages '((ruby . t)
 (plantuml . t)
 )))										

 (add-hook 'org-babel-after-execute-hook 'org-redisplay-inline-images)
 (setq org-agenda-files (list "~/org/work.org"
                              "~/org/school.org" 
                              "~/org/home.org"))

;;org babel 코드 실행
 (org-babel-do-load-languages
  'org-babel-load-languages
  '(
    (shell . t)
    (python . t)
    (R . t)
    (ruby . t)
    (ditaa . t)
    (dot . t)
    (octave . t)
    (sqlite . t)
    (perl . t)
    ))

;; package auto update
(use-package auto-package-update
   :ensure t
   :config
   (setq auto-package-update-delete-old-versions t
         auto-package-update-interval 4)
   (auto-package-update-maybe))

;;Tramp 설정
 (setq tramp-default-method "ssh")
