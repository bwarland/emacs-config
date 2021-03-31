    (use-package multiple-cursors
      :defer t
      :bind
      (
       ("C-c m t" . mc/mark-all-like-this)
       ("C-c m l" . mc/edit-lines)
       ("C-c m e" . mc/edit-end-of-lines)
       ("C-c m a" . mc/edit-beginning-of-lines)
       ("C-c m n" . mc/edit-next-line-like-this)
       ("C-c m p" . mc/edit-previous-like-this)
       ("C-c m r" . set-rectangular-region-anchor)))
