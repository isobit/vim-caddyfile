" Language:	    Caddyfile
" Author:	    Josh Glendenning <josh@isobit.io>

if exists("b:current_syntax")
  finish
endif

syn match caddyfileComment ' *#.*$'

syn region caddyfileString start=+\z(["']\)+ end=+\z1+ skip=+\\\\\|\\\z1+

syn match caddyfileAddress /\(https\?:\/\/\)\?\([A-Za-z][-_0-9A-Za-z]*\.\)\{1,}\(\w\{2,}\.\?\)\{1,}\(:[0-9]\{1,5}\)\?\S*/
syn match caddyfileAddress /\(https\?:\/\/\)\?localhost\(:[0-9]\{1,5}\)\?\S*/

syn keyword caddyfileDirective root
syn keyword caddyfileDirective bind
syn keyword caddyfileDirective tls
syn keyword caddyfileDirective startup
syn keyword caddyfileDirective shutdown
syn keyword caddyfileDirective realip
syn keyword caddyfileDirective git
syn keyword caddyfileDirective locale
syn keyword caddyfileDirective log
syn keyword caddyfileDirective rewrite
syn keyword caddyfileDirective ext
syn keyword caddyfileDirective gzip
syn keyword caddyfileDirective errors
syn keyword caddyfileDirective minify
syn keyword caddyfileDirective ipfilter
syn keyword caddyfileDirective ratelimit
syn keyword caddyfileDirective search
syn keyword caddyfileDirective header
syn keyword caddyfileDirective redir
syn keyword caddyfileDirective status
syn keyword caddyfileDirective cors
syn keyword caddyfileDirective mime
syn keyword caddyfileDirective basicauth
syn keyword caddyfileDirective jwt
syn keyword caddyfileDirective jsonp
syn keyword caddyfileDirective upload
syn keyword caddyfileDirective internal
syn keyword caddyfileDirective pprof
syn keyword caddyfileDirective expvar
syn keyword caddyfileDirective proxy
syn keyword caddyfileDirective fastcgi
syn keyword caddyfileDirective websocket
syn keyword caddyfileDirective markdown
syn keyword caddyfileDirective templates
syn keyword caddyfileDirective browse
syn keyword caddyfileDirective filemanager
syn keyword caddyfileDirective hugo
syn keyword caddyfileDirective mailout
syn keyword caddyfileDirective prometheus
syn keyword caddyfileDirective awslambda
syn keyword caddyfileDirective natsproxy

hi link caddyfileComment Comment
hi link caddyfileString String
hi link caddyfileAddress Structure
hi link caddyfileDirective Keyword

let b:current_syntax = "caddyfile"
