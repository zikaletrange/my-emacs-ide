(require 'cc-mode)
;;(require 'semantic)

;;(global-semanticdb-minor-mode 1)
;;(global-semantic-idle-scheduler-mode 1)
;;(global-semantic-stickyfunc-mode 1)

;;(semantic-mode 1)

;;(defun alexott/cedet-hook ()
;;  (local-set-key "\C-c\C-j" 'semantic-ia-fast-jump)
;;  (local-set-key "\C-c\C-s" 'semantic-ia-show-summary))

;;(add-hook 'c-mode-common-hook 'alexott/cedet-hook)
;;(add-hook 'c-mode-hook 'alexott/cedet-hook)
;;(add-hook 'c++-mode-hook 'alexott/cedet-hook)

;;(semantic-add-system-include "/usr/include/boost" 'c++-mode)
;;(semantic-add-system-include "~/linux/kernel")
;;(semantic-add-system-include "~/linux/include")
;;(semantic-add-system-include "~/gem5/src")

;; Enable EDE only in C/C++
(require 'ede)
(global-ede-mode)

(when (file-exists-p "~/gem5/Makefile")
  (setq gem5-project
        (ede-cpp-root-project "gem5"
                              :file "~/gem5/Makefile"
                              :include-path '("/src" "/build/X86/"))))
(provide 'setup-cedet)
