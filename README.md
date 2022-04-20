Shell Scripting
===============


## Default Editor
```
export EDITOR='vim'
export VISUAL='vim'
```

## Vim Easy Align
* https://github.com/junegunn/vim-easy-align 
```
: EasyAlign:  [ga*|] [ga* ]    
: EasyAlign *, {'lm': 1, 'stl': 0}
: EasyAlign *, {'lm': 0, 'stl': 1}  
: EasyAlign *, {'stick_to_left': 1, 'left_margin': 0}
```

### Find Large Files
```
$ find . -type f -size +1G

$ find . -type f -size +1G -exec ls -lh {} \; | awk '{ print $5 "\t" $9 }'

```

