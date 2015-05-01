;;; madroid.el ---                                   -*- lexical-binding: t; -*-

;; Copyright (C) 2015  zxsu

;; Author: zxsu <suzp1984@gmail.com>
;; Keywords: 

;; Licensed under the Apache License, Version 2.0 (the "License");
;; you may not use this file except in compliance with the License.
;; You may obtain a copy of the License at

;;     http://www.apache.org/licenses/LICENSE-2.0

;; Unless required by applicable law or agreed to in writing, software
;; distributed under the License is distributed on an "AS IS" BASIS,
;; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;; See the License for the specific language governing permissions and
;; limitations under the License.

;;; Commentary:

;; 

;;; Code:

(defvar madroid-version 'undefined
  "The Version of Magit that you're using.")

(defvar madroid-main-buffer-name)

(defgroup madroid nil
  "control android from Emacs.")

(defgroup madroid-process nil
  "Android develop tool process used by madroid."
  :group 'madroid)


(defcustom madroid-android-cmd
  "android"
  "The Android dev tool executable used by madroid."
  :group 'madroid-process
  :type 'string)

(defun madroid-get-top-dir (&optional directory)
  "return the top directory for current Android project"
  (setq directory (if directory
                      (file-name-as-directory
                       (expand-file-name directory))
                    default-directory))
  (unless (file-directory-p directory)
    (error "%s is not an exist diretory" directory))

  (let* ((default-directory directory))
    )
  )

;;;###autoload
(defun madroid (dir)
  "Open the Madroid panel"
  (interactive (list (madroid-get-top-dir)))
  
  )

;;;###autoload
(defun madroid-run-sdk-manager ()
  "Run the android sdk manager to manager the sdk."
  (interactive)
  (call-process madroid-android-cmd nil 0 nil nil))

(provide 'madroid)
;;; madroid.el ends here
