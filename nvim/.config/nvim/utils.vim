"          __  _ __           _
"   __  __/ /_(_) /_____   __(_)___ ___
"  / / / / __/ / / ___/ | / / / __ `__ \
" / /_/ / /_/ / (__  )| |/ / / / / / / /
" \__,_/\__/_/_/____(_)___/_/_/ /_/ /_/
"
"          UTILITY FUNCTIONS


" Returns relative path to the file from where vim was started
function! LightlineFilePath()
    let fullPath = expand('%:p')
    let cwd = getcwd()
    return fullPath[len(cwd) + 1:]
endfunction

" Check if session.vim exists in current directory
function! SessionVimExists()
    return !empty(glob('session.vim'))
endfunction