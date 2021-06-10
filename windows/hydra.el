
(defun my/refile (file headline &optional arg)
  (let ((pos (save-excursion
	       (find-file file)
	       (org-find-exact-headline-in-buffer headline))))
    (org-refile arg nil (list headline file nil pos)))
  (switch-to-buffer (current-buffer)))

(defhydra bw/org-refile-hydra (:foreign-keys run)
  "refile"
  ("j" (my/refile "col.org" "Journal") "refile to journal")
  ("p" (my/refile "prices.org" "jkmfeb20") "refile to pricing month")
  ("q" nil "cancel"))

(global-set-key (kbd "<f8> b") 'bw/org-refile-hydra/body)
