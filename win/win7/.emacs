;;****************************************************************
;;(setq inhibit-startup-message t) ;; 不显示那个帮助界面/开机画面
;;****************************************************************
;;;Emacs键绑定 最好使用 kbd 函数 ;;;
;alt--->meta/M
;windows-->super/s
;ctrl-->ctrl/C
;;-------------------------关闭启动时的`开机画面'------------
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
;;;;编码识别
(require 'unicad)

; (add-to-list 'load-path "E:\NEWS\tempDN\200805\emacs\theme")
; (color-theme-pink-bliss)
; (color-theme-initialize)

;;;; Emacs  tabbar
(require 'tabbar)
;; (tabbar-mode)
;; (global-set-key (kbd "s-[") 'tabbar-backward-group)
;; (global-set-key (kbd "s-]") 'tabbar-forward-group)
;; (global-set-key (kbd "s-p") 'tabbar-backward)
;; (global-set-key (kbd "s-n") 'tabbar-forward)

;;;; 窗口位置大小
(setq default-frame-alist
'(	;  (top .    0)   ;50)
  	;  (left .  300)  ;100)  
  	  (height . 40)  ;45) 
  	  (width  . 100)  ;88)
  	  (menu-bar-lines . 20) 
  	  (tool-bar-lines . 0)	))
;;;; 不要那个如此大的工具条
 (tool-bar-mode -1)
;;;; 不要生成临时文件 
 (setq-default make-backup-files nil)
;;;; 默认显示 80列就换行
(setq default-fill-column 80)

;;;; 可以在每行左边显示行号
(require 'setnu)
(global-set-key [f3] (quote setnu-mode))
;(setnu-mode t)
;;;; 窗口左侧分割出小窗口显示行号 
;;  ~/.emacs中加入(wb-line-number-enable) OR M-x wb-line-number-toggle
(set-scroll-bar-mode nil)   ; no scroll bar, even in x-window system
(require 'wb-line-number)
;;****************************************************************
;;开启图片浏览
;;(require 'thumbs)

;;设置默认工作目录 
; (setq default-directory "E:/WK")

;;------UNDO------
 (require 'undo-tree)
 (undo-tree-mode)
;; (autoload 'undo-tree) ; "imenu-tree" "Imenu tree" t)
;; If you want to replace the standard Emacs' undo system with the
;; `undo-tree-mode' system in all buffers, you can enable it globally by
;; adding:
;;   (global-undo-tree-mode)
;;------UNDO------

;;---------------记住上次打开的文件的位置--------------------
;;;; IBUFFER.EL
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;-----不需要任何额外的包，这是emacs自带的，但默认不开启-----
(require 'saveplace)
(setq-default save-place t)

;;-------------------------语法加亮--------------------------
(global-font-lock-mode 't)
;;-------------------------关闭错误提示的Beep音--------------
(setq visible-bell t)
;;-------------------------显示列号--------------------------
(setq column-number-mode t)
;;-------------------------括号匹配--------------------------
;;括号匹配时显示另一端的括号，而不是跳过去
(show-paren-mode t)
(setq show-paren-style 'parentheses)
;;-------------------------标题拦显示buffer的名字------------
;;(setq frame-title-format "emacs@%b")
;;把title设置为“文件名@LC's Emacs" 
(setq frame-title-format
        '("  GNU Emacs   -   [ " (buffer-file-name "%f \]"
                (dired-directory dired-directory "%b \]"))))

;;-------------------------使用Win下的选择习惯---------------
;;用shift+方向键进行选择
; (pc-selection-mode)a  ;;_ Ver24.2 can not init :-(
;;设定光标为短线 ;bar-cursor-mode
; (setq-default cursor-type 'bar)

;;设定显示日期时间
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)

;;所有的问题用y/n方式，不用yes/no方式。有点懒，只想输入一个字母
(fset 'yes-or-no-p 'y-or-n-p)

;;设置字体Emacs22 
(set-default-font "-*-Courier New-Regular-r-*-*-18-*-*-*-c-*-fontset-chinese")
;============================ MS Windows环境下字体设置 ===========================
;===(setq default-frame-alist
;===(append
;==='((font . "fontset-chinese")) default-frame-alist))

;===(create-fontset-from-fontset-spec
;==="-outline-Courier New-normal-r-normal-normal-16-97-96-96-c-*-fontset-chinese")
;===(set-fontset-font
;==="fontset-default" nil
;==="-outline-新宋体-normal-r-normal-normal-16-*-96-96-c-*-iso10646-1" nil 'prepend)
;===(set-fontset-font
;==="fontset-chinese" 'kana
;==="-outline-新宋体-normal-r-normal-normal-16-*-96-96-c-*-iso10646-1" nil 'prepend)
;===(set-fontset-font
;==="fontset-chinese" 'han
;==="-outline-新宋体-normal-r-normal-normal-16-*-96-96-c-*-iso10646-1" nil 'prepend)
;===(set-fontset-font
;==="fontset-chinese" 'cjk-misc
;==="-outline-新宋体-normal-r-normal-normal-16-*-96-96-c-*-iso10646-1" nil 'prepend)
;===(set-fontset-font
;==="fontset-chinese" 'symbol
;==="-outline-新宋体-normal-r-normal-normal-16-*-96-96-c-*-iso10646-1" nil 'prepend)
;===(set-default-font "fontset-chinese")
;===========================MS Windows环境下字体设置结束 =========================
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(display-time-mode t)
 '(fringe-mode 0 nil (fringe))
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(transient-mark-mode t))
 (custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; (setenv "PATH" (concat "c:/cygwin/bin;" (getenv "PATH")))
;; (setq exec-path (cons "c:/cygwin/bin/" exec-path))
;; (require 'cygwin-mount)
;; (cygwin-mount-activate)
;; Donno how to use :(  
;; Refer links: http://www.emacswiki.org/emacs/TreeMode
;(eval-after-load "tree-widget"
;  '(if (boundp 'tree-widget-themes-load-path)
;       (add-to-list 'tree-widget-themes-load-path "~/_emacs.d/")))
; (require 'tree-mode)
; (require 'glade-mode)
; (autoload 'imenu-tree "imenu-tree" "Imenu tree" t)
; (autoload 'tags-tree "tags-tree" "TAGS tree" t)

;; Perl mode
(defun my-perl-mode-hook ()
  (setq tab-width 4)
  (define-key c++-mode-map "\C-m" 'reindent-then-newline-and-indent)
  (setq perl-indent-level 4)
  (setq perl-continued-statement-offset 4))

;;; CAN NOT LOADING ;;;
;;(require 'tree-dir)
;;(require 'tree-info)
;;(require 'tree-imenu)
;;(require 'tree-mode-group)
;;(require 'dirtree)
;;(require 'tags-tree)

;     (add-to-list 'load-path "/usr/share/emacs/mylisp")
;     (autoload 'thumbs "thumbs" "Preview images in a directory." t)
 
 ;;;; color-theme 色彩主题
 (require 'color-theme)
 (if window-system
 (color-theme-xemacs)
; (color-theme-bharadwaj)
; (color-theme-billw)
; (color-theme-calm-forest)
; (color-theme-charcoal-black)
; (color-theme-ld-dark)
; (color-theme-gray30)
; (color-theme-montz)
; (color-theme-snow)
 )

