shell scrips, inspired by http://mislav.uniqpath.com/2014/02/hidden-documentation/

# ZSH install (i think)

``` sh
ln *.sh ~/.zsh/functions/
```

## in your branch
```
setup_get_pr_for
```

# Usage

If you rebase your branches before merging to master

``` sh
pr_for_sha head~12
pr_for_sha <SHA>
```

# Uninstall

``` sh
rm ~/.zsh/functions/pr_for_sha.sh
```

### If you use a merge commit (the big green button)
 there's another script on the
internet I forgot where it was right now

I take no responsibility for this code--but I am open to taking some credit for it
