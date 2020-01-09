(setq elpy-rpc-timeout 20
      elpy-test-dont-use-virtualenv t)
;; Disable the execution of benchmarks from ert-runner.el (which is
;; called from dh-elpa).  For some reason running the benchmarks
;; before the self-tests causes self-tests to fail.  In particular it
;; is strange that
;; elpy--sort-and-strip-duplicates-should-sort-and-strip-duplicates
;; fails, because it tests something like (delete-dups '("B" "C" "A"
;; "A" "C")); however, running delete-dups from ert-helper.el
;; following the benchmarks succeeds, confirming that the active Emacs
;; session is in fact sane.  See the following upstream issue for more
;; info: https://github.com/jorgenschaefer/elpy/issues/1724

;; (load-file "scripts/elpy-test-benchmark.el")
(ert-run-tests-batch-and-exit)
