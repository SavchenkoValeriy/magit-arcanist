;;; magit-arcanist-run.el --- run functionality -*- lexical-binding:t ; -*-

;;; Copyright © 2018-2018 Jonathan Jin <jjin082693@gmail.com>

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:
;; This library implements functionality to run arcanist.

;; Code:

(require 'magit)

(defcustom magit-arcanist-arc-executable (executable-find "arc")
  "Path to the `arc' executable. `magit-arcanist-enable' will
fail if this path does not exist."
  :type 'string)

(defun magit-arcanist--run-arc-cmd (cmd &optional args)
  (apply #'magit-start-process magit-arcanist-arc-executable nil cmd args))

(provide 'magit-arcanist-run)

;;; magit-arcanist.el ends here
