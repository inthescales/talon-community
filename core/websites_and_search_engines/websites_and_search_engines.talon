open {user.website}: user.open_url(website)
open that: user.open_url(edit.selected_text())
open paste: user.open_url(clip.text())

search {user.search_engine} for <user.text>$:
    user.search_with_search_engine(search_engine, user.text)
search (that | this) {user.search_engine}:
    text = edit.selected_text()
    user.search_with_search_engine(search_engine, text)
search paste {user.search_engine}: user.search_with_search_engine(search_engine, clip.text())
