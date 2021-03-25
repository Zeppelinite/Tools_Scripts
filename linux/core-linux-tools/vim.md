---
description: VI & VIM Notes
---

# VIM

**My VIM Note**  
`:%s/search_for_this/replace_with_this/g`  --&gt;  search and replace globally  
`10dd`  --&gt;  delete next 10 lines  
`10yy` then `p`  --&gt;  

## VIM FREE CHEATSHEET

![Vim Free CheatSheet](https://cheatsheet.dennyzhang.com/wp-content/uploads/2018/08/vim.png)

  
PDF Link: [cheatsheet-vim-A4.pdf](https://github.com/dennyzhang/cheatsheet-vim-A4/blob/master/cheatsheet-vim-A4.pdf), Category: [tools](https://cheatsheet.dennyzhang.com/category/tools/)

* Blog URL: [https://cheatsheet.dennyzhang.com/cheatsheet-vim-A4](https://cheatsheet.dennyzhang.com/cheatsheet-vim-A4)
* Related posts: [Shell CheatSheet](https://cheatsheet.dennyzhang.com/cheatsheet-shell-A4), [\#denny-cheatsheets](https://github.com/topics/denny-cheatsheets)

File me [Issues](https://github.com/dennyzhang/cheatsheet.dennyzhang.com/issues) or star [this repo](https://github.com/dennyzhang/cheatsheet.dennyzhang.com).

#### 1.1 BASIC USAGE <a id="org9d3299b"></a>

| Name | Summary |
| :--- | :--- |
| Show help | `:help` |
| Enter to paste mode | `:set paste` |
| Put vim to background/foreground | `C-z`; `fg` |
| Password protecting file | `vim +X filename` |
| Install enhanced vim | `yum install vim-enhance` |

#### 1.2 MOVEMENT <a id="orgc8e4a8b"></a>

| Name | Summary |
| :--- | :--- |
| Page down/up | `C-d` / `C-b`; `C-u` / `C-f` |
| Forward/backward character | `l`, `h` |
| Prevous/next line | `k`, `Ctrl-p`; `j`, `Ctrl-n` |
| Move to next word | `w/W` |
| Go to the top | `gg` |
| Go to the bottom | `G` |
| Go to beginning of the line | `B` |
| Go to end of the line | `0` |

#### 1.3 DELETION <a id="orgcb66602"></a>

| Name | Summary |
| :--- | :--- |
| Delete current word | `d-w` |
| Delete current line | `d-d` |
| Delete to the bottom | `d-G` |

#### 1.4 CHANGES <a id="orgeccefd1"></a>

| Name | Summary |
| :--- | :--- |
| Undo the previous changes | In view mode, `u` |
| Reload file from disk | `:e` |

#### 1.5 PANEL <a id="org45af201"></a>

| Name | Summary |
| :--- | :--- |
| Next panel | `C-h` |
| Split panel | `:split` |
| Vertical split panel | `:vsplit` |
| Change panel size | `C-w >`, `C-w <` |

#### 1.6 BLOCKS <a id="orge0b4892"></a>

| Name | Summary |
| :--- | :--- |
| Copy block | `shift+v, y` |
| Paste block | `shift+v, p` |
| Cut block | `shift+v, x` |
| comment/uncomment block | `shift+v, gc` |

#### 1.7 FILES <a id="org933df5e"></a>

| Name | Summary |
| :--- | :--- |
| Show current filename | `:echo @%` |
| Open a new file | `:edit <filename>` |

![](https://raw.githubusercontent.com/dennyzhang/cheatsheet-vim-A4/master/images/vim_cheat_sheet_for_programmers_screen.png)

Image credit to http://michael.peopleofhonoronly.com/vim/

#### 1.8 MORE RESOURCES <a id="orgf49fdef"></a>

License: Code is licensed under [MIT License](https://www.dennyzhang.com/wp-content/mit_license.txt).

