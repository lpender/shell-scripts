shell scrips, inspired by http://mislav.uniqpath.com/2014/02/hidden-documentation/

# Bash install (i think)

``` sh
cat scripts.sh >> .profile 
```

in your branch
```
setup_get_pr_for
```

# Usage

If you rebase your branches before merging to master

``` sh
get_pr_for head~12
get_pr_for <SHA>
```

If you use a merge commit (the big green button)

``` sh
pr_for_sha head~12
pr_for_sha <SHA>
```

I take no responsibility for this code--but I am open to taking some credit for it
