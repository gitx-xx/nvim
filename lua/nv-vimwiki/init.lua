-- VimWiki

-- fails due to list instead of dictionary
-- vim.g.vimwiki_key_mappings = {{all_maps= 1, global= 0, headers= 1, text_objs= 1, table_format= 0, table_mappings= 0, lists= 1, links= 0, html= 0, mouse= 1 }}

MyTable = {}
MyTable['all_maps'] = 1
MyTable['global'] = 0
MyTable['headers'] = 1
MyTable['text_objs'] = 1
MyTable['table_format'] = 0
MyTable['table_mappings'] = 0
MyTable['lists'] = 1
MyTable['links'] = 0
MyTable['html'] = 0
MyTable['mouse'] = 1


vim.g.vimwiki_key_mappings = MyTable

vim.g.vimwiki_global_ext = 1
vim.g.vimwiki_filetypes = {'markdown'}

-- Store vimwiki as markdown in ~/notes
vim.g.vimwiki_list = {{path = '~/notes', syntax = 'markdown', ext = '.md'}}

-- vim.g.vimwiki_markdown_link_ext = 1
-- vim.g.vimwiki_auto_header = 1
-- let g:vimwiki_markdown_header_style = 1
-- let g:vimwiki_tags_header_level = 1
-- let g:vimwiki_tags_header = 'Generated Tags'
-- let g:vimwiki_links_header_level = 1
-- let g:vimwiki_links_header = 'Generated Links'
-- let g:vimwiki_auto_chdir = 0
-- let g:vimwiki_map_prefix = '<Leader>w'
-- let g:vimwiki_toc_link_format = 0
-- let g:vimwiki_toc_header_level = 1
-- let g:vimwiki_toc_header = 'Contents'
-- let g:vimwiki_autowriteall = 1
-- let g:vimwiki_conceal_pre = 0
-- let g:vimwiki_conceal_onechar_markers = 1
-- let g:vimwiki_conceallevel = 2
-- let g:vimwiki_user_htmls = ''
-- let g:vimwiki_valid_html_tags = 'b,i,s,u,sub,sup,kbd,br,hr'
-- let g:vimwiki_html_header_numbering_sym = ''
-- let g:vimwiki_html_header_numbering = 0
-- let g:vimwiki_dir_link = ''
-- let g:vimwiki_create_link = 1
-- let g:vimwiki_use_calendar = 1
-- let g:vimwiki_text_ignore_newline = 1
-- let g:vimwiki_list_ignore_newline = 1
-- let g:vimwiki_folding = ''
-- let g:vimwiki_listsym_rejected = '✗'
-- let g:vimwiki_listsyms = '✗○◐●✓'
-- let g:vimwiki_global_ext = 1
-- let g:vimwiki_hl_cb_checked = 0
