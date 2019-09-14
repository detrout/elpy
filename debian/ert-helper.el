(setq elpy-rpc-timeout 20)
(prog1 (ert-run-tests-batch)
  (load-file "scripts/elpy-test-benchmark.el"))
