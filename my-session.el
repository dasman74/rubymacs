;;; sessions and desktops
;
; If you want to save minibuffer history from one session to another, use the savehist library.
(require 'session)
(add-hook 'after-init-hook 'session-initialize)
(when (require 'session nil t)
  (add-hook 'after-init-hook 'session-initialize)
  (add-to-list 'session-globals-exclude 'org-mark-ring))


;(desktop-save-mode t)
;(desktop-load-default)
;(desktop-read)

(global-set-key (kbd "C-c d") 'desktop-change-dir)
(global-set-key (kbd "C-c C-d") 'desktop-change-dir)

;; Save a list of recent files visited.
(recentf-mode 1)

(require 'mk-project)
(project-def "lubo"
      '((basedir          "/home/danil/projects/github/dapi/lubopytno.ru/")
        (src-patterns     ("*.rb" "*.rake"))
;        (ignore-patterns  ("*.class" "*.wsdl"))
        (tags-file        "/home/danil/projects/github/dapi/lubopytno.ru/TAGS")
        (file-list-cache  "/home/danil/projects/github/dapi/lubopytno.ru/.files")
        (open-files-cache "/home/danil/projects/github/dapi/lubopytno.ru/.open-files")
        (vcs              git)
;        (compile-cmd      "ant")
;        (ack-args         "--java")
;        (startup-hook     my-java-project-startup)
        (shutdown-hook    nil)))

(global-set-key (kbd "C-c p c") 'project-compile)
(global-set-key (kbd "C-c p g") 'project-grep)
(global-set-key (kbd "C-c p a") 'project-ack)
(global-set-key (kbd "C-c p l") 'project-load)
(global-set-key (kbd "C-c p u") 'project-unload)
(global-set-key (kbd "C-c p f") 'project-find-file) ; or project-find-file-ido
(global-set-key (kbd "C-c p i") 'project-index)
(global-set-key (kbd "C-c p s") 'project-status)
(global-set-key (kbd "C-c p h") 'project-home)
(global-set-key (kbd "C-c p d") 'project-dired)
(global-set-key (kbd "C-c p t") 'project-tags)

