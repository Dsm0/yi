the one issue when idris is removed

```
e                          > [ 4 of 13] Compiling IdrisIDESexpCopyPasteFromIdris [Text.Trifecta.Delta changed]
e                          > 
e                          > /home/will/gitshit/yi/yi-config/modules/IdrisIDESexpCopyPasteFromIdris.hs:10:1-20: error:
e                          >     Could not find module ‘Idris.IdeMode’
e                          >     Use -v (or `:set -v` in ghci) to see a list of the files searched for.
e                          >    |
e                          > 10 | import Idris.IdeMode
e                          >    | ^^^^^^^^^^^^^^^^^^^^
e                          > 
Completed 39 action(s).

--  While building package e-0.1.0.0 (scroll up to its section to see the error) using:
      /home/will/.stack/setup-exe-cache/x86_64-linux-tinfo6/Cabal-simple_mPHDZzAJ_3.2.1.0_ghc-8.10.4 --builddir=.stack-work/dist/x86_64-linux-tinfo6/Cabal-3.2.1.0 build exe:e --ghc-options " -fdiagnostics-color=always"
    Process exited with code: ExitFailure 1
```