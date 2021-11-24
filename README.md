# NsLogGen
Cheeky little script for quickly enabling ns-3 component logging

Usage:

- Add component names to `classnames`, use # to comment out component that you wish to temporarily disable
- run `eval $(./NsLogGen.sh)`


P.S:
What this does is it adds the components in `classnames` to the terminal environmental variable which NS3 looks at for component logging. Run `echo $NS_LOG` to see what has actually been added.
Sometimes you need to run an empty `export NS_LOG=` to register this variable first. Ways to improve are welcome.
