# Workshop - From setting up stack to an API client library in one evening

This is an introductory workshop to get acquainted with parts of
the Haskell tool-chain.
There are some [slides to start things up](https://github.com/diogob/haskell_wreq_workshop/blob/master/docs/haskell.pdf) in the repo.

## Quickstart

    git clone git@github.com:diogob/haskell_wreq_workshop.git
    cd haskell_wreq_workshop
    stack setup
    stack build
    
This should be enough to compile the project successfuly.
Now you can test the compiled application:

    stack exec api-exe
    api-exe: Prelude.undefined
    
The error message stems from the undefined functions in the `src/Lib.hs` file.
After implementing the 3 exported functions `withToken`, `getStory` and `name` we can try to rebuild and execute the `api-exe` again.
