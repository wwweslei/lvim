--  "https://github.com/MattesGroeger/vim-bookmarks",

return {

  "MattesGroeger/vim-bookmarks",

}



--  Add /remove bookmark at current line	          mm	     :BookmarkToggle
--  Add /edit/remove annotation at current line	    mi	     :BookmarkAnnotate <TEXT>
--  Jump  to next bookmark in buffer	              mn	     :BookmarkNext
--  Jump  to previous bookmark in buffer	          mp	     :BookmarkPrev
--  Show  all bookmarks (toggle)	                  ma	     :BookmarkShowAll
--  Clear  bookmarks in current buffer only	        mc	     :BookmarkClear
--  Clear  bookmarks in all buffers	                mx	     :BookmarkClearAll
--  Move  up bookmark at current line	[count]       mkk	     :BookmarkMoveUp [<COUNT>]
--  Move  down bookmark at current line	[count]     mjj	     :BookmarkMoveDown [<COUNT>]
--  Move  bookmark at current line to               mg	     :BookmarkMoveToLine <LINE>
--  Save  all bookmarks to a file		                :Book    markSave <FILE_PATH>
--  Load  bookmarks from a file		                  :Book    markLoad <FILE_PATH>
