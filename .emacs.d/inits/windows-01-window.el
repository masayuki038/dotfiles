(if (boundp 'window-system)
    (setq default-frame-alist
          (append (list
                   '(top . 10) ; ウィンドウの表示位置（Y座標）
                   '(left . 20) ; ウィンドウの表示位置（X座標）
                   '(width . 230) ; ウィンドウの幅（文字数）
                   '(height . 66) ; ウィンドウの高さ（文字数）
                   )
                  default-frame-alist)))
