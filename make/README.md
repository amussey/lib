# Makefile Extensions

## `make help`

Based on a gist from [@prwhite](https://gist.github.com/prwhite/8168133), this include provides the ability to add help contents in line in Makefiles.

To include the `make help` command in your Makefile, simply add the file as an `include` at the top:

```make
include Makefilehelp
```

For each rule, simply add `##` and the help text you would like displayed:

```make
integration_tests:  ## Runs integration test suite.
    @echo TODO

unit_tests:      ## Used to run Python unit tests.
    @echo TODO

clear_cassandra:  ## Clears the Cassandra database
clear_cassandra: random_dep
    @echo TODO
```

Running `make help` then produces the following output:

```
You can run the following commands from this Makefile:

integration_tests:             Runs integration test suite.
unit_tests:                    Used to run Python unit tests.
clear_cassandra:               Clears the Cassandra database
help:                          This help dialog.
```
