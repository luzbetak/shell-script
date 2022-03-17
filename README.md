Bash Shell
==========

## Default Editor
```
export EDITOR='vim'
export VISUAL='vim'
```

## Find Large Files
```
$ find . -type f -size +1G

$ find . -type f -size +1G -exec ls -lh {} \; | awk '{ print $5 "\t" $9 }'

```

