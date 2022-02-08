#!/bin/sh                                                                       
echo "1. Creating .hhconfig"
curl https://raw.githubusercontent.com/hhvm/hhast/master/.hhconfig > .hhconfig
echo "2. Creating starter directories:"
mkdir bin src tests
echo "3. Creating hh_autoload.json"
echo "{
  \"roots\": [
    \"src/\"
  ],
  \"devRoots\": [
    \"tests/\"
  ],
  \"devFailureHandler\": \"Facebook\\\\\\AutoloadMap\\\\\\HHClientFallbackHandler\"
}" > hh_autoload.json
#requires
if (command -v composer); then
  echo "Installing hhvm & autoload libs"
  composer require hhvm/hsl hhvm/hhvm-autoload;
  composer require hhvm/hsl hhvm/hhvm-autoload;
fi

echo "creating script for testing"
echo "#!/bin/sh                                                                       
echo \"1. Running hh_client syntax check:\"
hh_client
echo \"2. Running unit tests on tests in tests/ directory:\"
vendor/bin/hacktest tests/
echo \"3. Running vendor/bin/hhast-lint on src files:\"
if !(hhvm --version | grep -q -- -dev); then
  vendor/bin/hhast-lint
fi" > hacktest.sh;