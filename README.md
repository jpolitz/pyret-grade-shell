# pyret-grade-shell

This repository is for building the .zip file that gets uploaded to Gradescope on the “Configure Autograder” page.

The overall idea is documented thoroughly at https://github.com/ucsd-cse12-w17/pa-grading

The idea is to set up one repository that can be built and uploaded with an `ssh` key that has access to clone a repository that contains the code for grading student submissions.

This way, the autograder (with its Docker setup) doesn't have to be repeatedly updated on the assignment config page.

This repo *also* does some Pyret-specific work to download and build the code for a local `code.pyret.org` server.
