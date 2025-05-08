(setq elpy-rpc-timeout 20)

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
(ert-run-tests-batch-and-exit
 '(not (or
         "elpy-company-backend-should-add-shell-candidates"
         "elpy-eldoc-documentation-should-show-object-onelinedoc"
         "elpy-multiedit-python-symbol-at-point-should-save-some-buffers"
         "elpy-pdb-break-at-point-should-break-at-point"
         "elpy-pdb-debug-buffer-and-break-at-point-should-ignore-breakpoints"
         "elpy-pdb-debug-buffer-from-beginning-should-enter-pdb"
         "elpy-pdb-debug-buffer-should-always-begin-at-first-line"
         "elpy-pdb-debug-buffer-should-continue-with-second-breakpoint"
         "elpy-pdb-debug-buffer-should-enter-pdb"
         "elpy-pdb-debug-buffer-should-forget-previous-breakpoints"
         "elpy-pdb-debug-buffer-should-ignore-breakpoints"
         "elpy-pdb-debug-buffer-should-stop-at-the-first-breakpoint"
         "elpy-pdb-debug-last-exception-should-debug-last-exception"
         "elpy-pdb-debug-last-exception-should-ignore-breakpoints"
         "elpy-profile-buffer-or-region-test-fail"
         "elpy-profile-buffer-or-region-test-succeed"
         "elpy-profile-buffer-or-region-test-indir-failed"
         "elpy-profile-buffer-or-region-test-indir-succeed"
         "elpy-promise-wait-should-return-after-timeout"
         "elpy-promise-wait-should-return-eventually-for-resolved-promise"
         "elpy-refactor-extract-function-should-extract-function"
         "elpy-refactor-rpc-rename-should-rename-in-multiple-files"
         "elpy-shell-send-file-should-accept-large-strings"
         "elpy-shell-should-echo-outputs")))

