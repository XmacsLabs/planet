
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MODULE      : tm2html_CICD.scm
;; DESCRIPTION : Convert tm format to html for CICD
;; COPYRIGHT   : (C) 2024  ATQlove
;;
;; This software falls under the GNU general public license version 3 or later.
;; It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
;; in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(import (srfi srfi-13))
(import (srfi srfi-1))

(define (list-files dir)
  (let* ((filtered-files (url->list
                          (url-expand
                           (url-complete
                            (url-append (url-descendants dir)
                                        (url-or (url-wildcard "*.tm")
                                                (url-wildcard "*.tmu")))
                            "fr"))))
          (filtered-files-no-conflict (filter (lambda (file)
                                               (let ((file-string (url->string file)))
                                                 (and (not (string-contains? file-string "MoganSTEMTutorial"))
                                                      (not (string-contains? file-string "LaTeX"))
                                                      (not (string-contains? file-string "UIC"))
                                                      (not (string-contains? file-string "X202402预备会议"))
                                                      (not (string-contains? file-string "SICP"))
                                                      (not (string-contains? file-string "LCPU_x_USTCLUG_Salon")))))
                                             filtered-files)))
    ; (display "Filtered files:\n")
    ; (for-each (lambda (file) (display (string-append (url->string file) "\n"))) filtered-files)
    filtered-files-no-conflict))

(define (export-file-to-html file base-dir output-dir)
  (let* ((relative-path (url-delta base-dir file))
         (output-file-url (url-append output-dir relative-path))
         (output-file-url (url-unglue output-file-url 3)) ; Remove ".tm" or ".tmu" extension
         (html-file-url (url-glue output-file-url ".html"))
         (output-dir-url (url-head html-file-url)))
    
    ; ; Debugging information; expect information are just some example
    ; (display (string-append "Base directory: " (url->string base-dir) "\n")) ; Expect: file:///F:/mogan/planet/CICD/try
    ; (display (string-append "File: " (url->string file) "\n")) ; Expect: file:///F:/mogan/planet/CICD/try/2/24_10_tmhtml_test.tmu
    ; (display (string-append "Relative path: " (url->string relative-path) "\n")) ; Expect: /2/24_10_tmhtml_test.tmu
    ; (display (string-append "Output file URL (before unglue): " (url->string output-file-url) "\n")) ; Expect: file:///F:/mogan/planet/CICD/html/2/24_10_tmhtml_test.tmu
    ; (display (string-append "Output file URL (after unglue): " (url->string (url-unglue output-file-url 3)) "\n")) ; Expect: file:///F:/mogan/planet/CICD/html/2/24_10_tmhtml_test
    ; (display (string-append "HTML file URL: " (url->string html-file-url) "\n")) ; Expect: file:///F:/mogan/planet/CICD/html/2/24_10_tmhtml_test.html
    ; (display (string-append "Output directory URL: " (url->string output-dir-url) "\n")) ; Expect: file:///F:/mogan/planet/CICD/html/2

    (make-directory (url->string output-dir-url))
    (display (string-append "Exporting " (url->string file) " to " (url->string html-file-url) "\n"))
    (load-buffer (url->string file))
    (export-buffer-main (current-buffer) (url->string html-file-url) "html" ())))

(define (make-directory dir)
  (system (string-append "mkdir -p " dir)))

(define (export-directory dir output-dir)
  (let* ((files (list-files dir)))
    (for-each (lambda (file)
                (export-file-to-html file dir output-dir))
              files)))

(tm-define (tm2html_CICD)
  ; (url-exists? "/__w/planet/planet/jingkaimori")
  ; (url-exists? "/__w/planet/planet/CICD")
  ; (define filtered-files (list-files "F:/mogan/planet"))
  ; (display filtered-files)
  (export-directory "/__w/planet/planet" "/__w/planet/planet/CICD/html")
  ; (export-directory "F:/mogan/planet" "F:/mogan/planet/CICD/html")
  (display "Conversion from tm/tmu to html end\n"))
  