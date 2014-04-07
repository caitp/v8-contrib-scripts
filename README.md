v8-contrib-scripts
==================

Some helper scripts for working with V8 using the Github mirror, as a non-commiter

1. [rebase-v8](#rebase-v8) -- Update master branch and rebase against it with with `git cl rebase`, to help fix bitrot
2. [newpatch-v8](#newpatch-v8) -- Checkout a new feature branch against a freshly updated master branch

##Scripts

###rebase-v8

Checks out an updated master branch, and rebases against it.

[back to top](#v8-contrib-scripts)

###newpatch-v8

Checks out an updated master branch, and creates a new feature branch based off of it with the provided branch name.

Example:

```bash
newpatch-v8 issue-###
```

This will update the master branch, and create an alias branch named `issue-###` to work against.

[back to top](#v8-contrib-scripts)

##TODO

If it's convenient to add additional scripts (after all, these only exist due to sheer laziness on my part), they will be added. I feel like depot_tools generally do a pretty good job, but I don't have much experience using them with the V8 repository yet, and it feels like V8's support for git is fairly limited, particularly for non-chromium.org members. So we'll see what happens. If anyone finds these useful, or feels that they are too buggy to actually use, by all means submit a patch. I'm not hacking on V8 full-time and will probably miss various problems with these scripts, but ideally these should make it simpler for non-org members to hack on V8 using git.

[back to top](#v8-contrib-scripts)
