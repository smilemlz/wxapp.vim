function! neomake#makers#ft#wxss#EnabledMakers()
    return ['csslint', 'stylelint']
endfunction

function! neomake#makers#ft#wxss#csslint()
    return {
        \ 'args': ['--format=compact'],
        \ 'errorformat':
            \ '%-G,' .
            \ '%-G%f: lint free!,' .
            \ '%f: line %l\, col %c\, %trror - %m,' .
            \ '%f: line %l\, col %c\, %tarning - %m,'.
            \ '%f: line %l\, col %c\, %m,'
    \ }
endfunction

function! neomake#makers#ft#wxss#stylelint()
    return {
        \ 'errorformat': 
            \ '%+P%f,' . 
                \ '%*\s%l:%c  %t  %m,' .
            \ '%-Q'
    \ }
endfunction
