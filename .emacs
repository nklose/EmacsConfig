;; Emacs configuration file for Nick Klose
(custom-set-variables '(inhibit-startup-screen t))
(custom-set-faces)

;; Set emacs-color-theme-solarized, from https://github.com/sellout/
(load-theme 'wheatgrass)

;; Windows-style cut/copy/paste
(cua-mode)                             

;; Use the F12 key to compile
(global-set-key [f12] 'compile)        

;; Use abbreviations
(setq-default abbrev-mode t)           
(read-abbrev-file "~/.abbrev_defs")
(setq save-abbrevs t)

;; Highlight the line the cursor is currently on
(global-hl-line-mode 1)

;; Scroll line-by-line to prevent cursor from jumping around
(setq scroll-step 1)

;; Replace all tabs with four spaces
(setq-default indent-tabs-mode nil)

;; Treat new buffers as text files
(setq default-major-mode 'text-mode)

;; Nuke Line function (http://homepages.inf.ed.ac.uk/s0243221/emacs/)
;; Create a variable to store the column position
(defvar previous-column nil "Save the column position")

;; Define the nuke-line function
(defun nuke-line()
  "Kill an entire line, including the trailing newline character"
  (interactive)

  ;; Store the current column position
  (setq previous-column (current-column))

  ;; Move to the end of the current line
  (end-of-line)

  ;; Check the line's length
  (if (= (current-column) 0)
    (delete-char 1)

    ;; Remove the line
    (progn
      (beginning-of-line)
      (kill-line)
      (delete-char 1)
      (move-to-column previous-column))))

;; Bind delete line function to F10
(global-set-key [f10] 'nuke-line)

;; Write backups to ~/.emacs.d/backup/ instead of leaving them in the original folder
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
      backup-by-copying      t  ; Don't de-link hard links
      version-control        t  ; Use version numbers on backups
      delete-old-versions    t  ; Automatically delete excess backups:
      kept-new-versions      20 ; how many of the newest versions to keep
      kept-old-versions      5) ; and how many of the old
