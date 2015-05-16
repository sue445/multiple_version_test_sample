#!/bin/bash -xe

export LANG=ja_JP.UTF-8

if [ -n "${GEMFILE}" ]; then
  export BUNDLE_GEMFILE=gemfiles/${GEMFILE}
  echo "use ${BUNDLE_GEMFILE}"
fi

# setup rbenv
if [ -n "${RUBY}" ]; then
  export RBENV_VERSION=${RUBY}
  rbenv which ruby
  rbenv versions
  rbenv version
  echo "use ruby ${RUBY}"
fi

which ruby
ruby --version

bundle check || bundle install --jobs=2 --retry=3

bundle exec rspec

exit 0
