# Guard-KRL

A guard extension that runs krl commit when the .krl file is changed.

## Install

You will need to have [Guard](https://github.com/guard/guard) first.

Install the gem with:

    gem install guard-krl

Add an initial setup to your Guardfile with:

    guard init krl


## Usage

Please read [Guard usage doc](https://github.com/guard/guard#readme).

## Guardfile

    guard 'krl' do
      watch(/.*\.krl$/)
    end

Please read [Guard doc](https://github.com/guard/guard#readme) for more info about Guardfile DSL.

## Thanks

This gem is almost completely copied from the guard-less gem by Brendan Erwin. Thanks!
