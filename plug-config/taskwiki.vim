" taskwiki 
" https://github.com/tools-life/taskwiki/blob/master/doc/taskwiki.txt

" disabled for now due to conflict with default filetype
" let taskwiki_disable = 'yes'

" supress default bindings
let g:taskwiki_suppress_mappings="yes"

" default sort order
" 'status+,end+,due+,priority-,project+'

" custom sort orders  
let g:taskwiki_sort_orders={"T": "status+, urgency-, priority-", "C": "end-"}

