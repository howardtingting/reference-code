#!/bin/sh                                                                       
echo "1. Running hh_client syntax check:"
hh_client
echo "2. Running unit tests on tests in tests/ directory:"
vendor/bin/hacktest tests/
echo "3. Running vendor/bin/hhast-lint on src files:"
if !(hhvm --version | grep -q -- -dev); then
  vendor/bin/hhast-lint
fi
