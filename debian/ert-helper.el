(setq elpy-rpc-timeout 20)
(load-file "scripts/elpy-test-benchmark.el")
(ert-run-tests-batch-and-exit)
