" Language:	    Caddyfile
" Author:	    Josh Glendenning <josh@isobit.io>

if exists("b:current_syntax")
	finish
endif

syn match caddyDirective "^\s*\([a-z]\+\)"
syn match caddySubdirective "^\s*\([a-z]\+\)" contained containedin=caddyDirectiveBlock
syn region caddyDirectiveBlock matchgroup=caddyDirective start="^\s*\([a-z]\+\).*{"ms=e-1 end="}"
syn match caddyHost "^\(https\?:\/\/\)\?\(\(\w\{2,}\.\)\(\w\{2,}\.\?\)\+\|localhost\)\(:[0-9]\{1,5}\)\?"

syn region caddyPlaceholder start="{" end="}" oneline
syn region caddyString start='"' skip='\\\\\|\\"' end='"'
syn match caddyComment "#.*$"

hi link caddyDirective Keyword
hi link caddySubdirective Structure
hi link caddyHost Identifier
hi link caddyPlaceholder Special
hi link caddyString String
hi link caddyComment Comment

let b:current_syntax = "caddyfile"
