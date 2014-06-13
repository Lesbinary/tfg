;--<ma-lib> is just an example for pedagogical purposes ( Malt, ircam 2006);-----------------------------------------------;-----------------------------------------------;Package Definition (Optional but very usefull, ;it help to avoid mismatch between your function names and with OM function names, ;If no package was defined,  package :OM will be used.; It's a good practice, always, defining your own packages!!!!;--------------------------------------------------(defvar mfl)   ;(defpackage mfl) ; <mfl> is just a symbol, it means : "my function library" (you also could use <john>) (in-package :mfl);--------------------------------------------------;Loading files ;--------------------------------------------------(mapc 'om::compile&load (list                         (make-pathname  :directory (append (pathname-directory *load-pathname*) (list "sources")) :name "gestionTransporte" :type "lisp")                         (make-pathname  :directory (append (pathname-directory *load-pathname*) (list "sources")) :name "insertSilence" :type "lisp")                         (make-pathname  :directory (append (pathname-directory *load-pathname*) (list "sources")) :name "octaveManager" :type "lisp")                         (make-pathname  :directory (append (pathname-directory *load-pathname*) (list "sources")) :name "seriesGenerator" :type "lisp")                         )); using "make-pathname" plus *load-pathname*, allow us to put our library anywhere;--------------------------------------------------; Seting the menu and sub-menu structure, and filling packages; The sub-list syntax:; ("sub-pack-name" subpacke-lists class-list function-list class-alias-list);--------------------------------------------------(om::fill-library  '(("gestionTransporte" Nil Nil (gestionTransporte) Nil)   ("insertSilence" Nil Nil (insert-at insertarSilencios) Nil)   ("octaveManager" Nil Nil (gestionOctavas) Nil)   ("seriesGenerator" Nil Nil (my-rotate randomize-list seriesGenerator) Nil)   ))