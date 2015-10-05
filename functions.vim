" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" OpenURL
" ---------------

if has('ruby')
ruby << EOF
  require 'open-uri'
  require 'openssl'

  def extract_url(url)
    re = %r{(?i)\b((?:[a-z][\w-]+:(?:/{1,3}|[a-z0-9%])|www\d{0,3}[.]|
    [a-z0-9.\-]+[.][a-z]{2,4}/)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]
    +\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s`!()\[\]\{\};:'"
    .,<>?«»“”‘’]))}

    url.match(re).to_s
  end

  def open_url
    line = VIM::Buffer.current.line

    if url = extract_url(line)
      if RUBY_PLATFORM.downcase =~ /(win|mingw)(32|64)/
        `start cmd /c chrome #{url}`
        VIM::message("Opened #{url}")
      else
        `open #{url}`
        VIM::message("Opened #{url}")
      end
    else
      VIM::message("No URL found on this line.")
    end

  end

  # Returns the contents of the <title> tag of a given page
  def fetch_title(url)
    if RUBY_VERSION < '1.9'
      open(url).read.match(/<title>(.*?)<\/title>?/i)[1]
    else
      open(url, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read.
        match(/<title>(.*?)<\/title>?/i)[1]
    end
  end

  # Paste the title and url for the url on the clipboard in markdown format:
  #   [Title](url)
  # Note: Clobbers p register
  def paste_url_and_title
    clipboard = VIM::evaluate('@+')
    url = extract_url(clipboard)
    if url and url.strip != ""
      puts "Fetching title"
      title = fetch_title(url)
      VIM::command "let @p = '[#{title}](#{url})'"
      VIM::command 'normal! "pp'
    else
      VIM::message("Clipboard does not contain URL: '#{clipboard[1..10]}'...")
    end
  end
EOF

" Open a URL
if !exists("*OpenURL")
  function! OpenURL()
    :ruby open_url
  endfunction
endif

command! OpenUrl call OpenURL()
nnoremap <leader>o :call OpenURL()<CR>

" ---------------
" Paste link with Title
" ---------------

" Open a URL
if !exists("*PasteURLTitle")
  function! PasteURLTitle()
    :ruby paste_url_and_title
  endfunction
endif

command! PasteURLTitle call PasteURLTitle()
map <leader>pt :PasteURLTitle<CR>

endif " endif has('ruby')

" ---------------
" Quick spelling fix (first item in z= list)
" ---------------
function! QuickSpellingFix()
  if &spell
    normal 1z=
  else
    " Enable spelling mode and do the correction
    set spell
    normal 1z=
    set nospell
  endif
endfunction

command! QuickSpellingFix call QuickSpellingFix()
nmap <silent> <leader>z :QuickSpellingFix<CR>

" ---------------
" Convert Ruby 1.8 hash rockets to 1.9 JSON style hashes.
" From: http://git.io/cxmJDw
" Note: Defaults to the entire file unless in visual mode.
" ---------------
command! -bar -range=% NotRocket execute
  \'<line1>,<line2>s/:\(\w\+\)\s*=>/\1:/e' . (&gdefault ? '' : 'g')

" ---------------
" Strip Trailing White Space
" ---------------
" From http://vimbits.com/bits/377
" Preserves/Saves the state, executes a command, and returns to the saved state
function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
"strip all trailing white space
command! StripTrailingWhiteSpace :call Preserve("%s/\\s\\+$//e")<CR>

" ---------------
" Writting mode
" ---------------
" From http://www.drbunsen.org/writing-in-vim/ and
" http://www.terminally-incoherent.com/blog/2013/06/17/using-vim-for-writing-prose/
" Sets writting mode 

func! WordProcessorMode() 
    setlocal noautoindent
    setlocal nocindent
    setlocal nosmartindent
    setlocal indentexpr=
    "set foldcolumn=10
    set columns=100
endfu
com! WP call WordProcessorMode()

command! Writer call WritToggle()
nnoremap \ gqip
nnoremap <S-\> gggqG
nnoremap <C-\> :WRIT<cr>

let s:writ = 0

function! WritToggle()
    if s:writ
        let s:writ = 0
        set foldcolumn=0
    else
        let s:writ = 1
        setlocal nonumber
        setlocal norelativenumber
        set foldcolumn=5
        set columns=85

        "setlocal formatoptions=ant
        setlocal textwidth=80
        setlocal wrapmargin=0

        setlocal spell spelllang=en_us

        "setlocal noautoindent
        "setlocal nocindent
        "setlocal nosmartindent
        "setlocal indentexpr=

        "let &guifont=substitute(&guifont, ':h\zs\d\+', '\=submatch(0)+1', '')
        "normal gggqG
        "write
    endif
endfunc
