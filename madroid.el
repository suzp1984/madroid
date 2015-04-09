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


(defun madroid-get-top-dir (&optional dir)
  "return the top directory for current Android project"
  
  )

;;;###autoload
(defun madroid (dir)
  "Open the Madroid panel"
  (interactive (list (madroid-get-top-dir)))
  
  )

(provide 'madroid)
;;; madroid.el ends here
