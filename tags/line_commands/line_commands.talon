tag: user.line_commands
-
#this defines some common line commands. More may be defined that are ide-specific.
lend: edit.line_end()
bend: edit.line_start()
go <number>: edit.jump_line(number)
go <number> end:
    edit.jump_line(number)
    edit.line_end()
comment [line] <number>:
    user.select_range(number, number)
    code.toggle_comment()
comment <number> through <number>:
    user.select_range(number_1, number_2)
    code.toggle_comment()
clear [line] <number>:
    user.select_range(number, number)
    edit.delete()
clear <number> through <number>:
    user.select_range(number_1, number_2)
    edit.delete()
copy [line] <number>:
    user.select_range(number, number)
    edit.copy()
copy <number> through <number>:
    user.select_range(number_1, number_2)
    edit.copy()
cut [line] <number>:
    user.select_range(number, number)
    edit.cut()
cut [line] <number> through <number>:
    user.select_range(number_1, number_2)
    edit.cut()
(paste | replace) [line] <number>:
    user.select_range(number, number)
    edit.paste()
(paste | replace) <number> through <number>:
    user.select_range(number_1, number_2)
    edit.paste()
(select | cell | sell) [line] <number>: user.select_range(number, number)
(select | cell | sell) <number> through <number>: user.select_range(number_1, number_2)
tab that: edit.indent_more()
tab [line] <number>:
    edit.jump_line(number)
    edit.indent_more()
tab <number> through <number>:
    user.select_range(number_1, number_2)
    edit.indent_more()
detab that: edit.indent_less()
detab [line] <number>:
    user.select_range(number, number)
    edit.indent_less()
detab <number> through <number>:
    user.select_range(number_1, number_2)
    edit.indent_less()
drag [line] down: edit.line_swap_down()
drag [line] up: edit.line_swap_up()
drag up [line] <number>:
    user.select_range(number, number)
    edit.line_swap_up()
drag up <number> through <number>:
    user.select_range(number_1, number_2)
    edit.line_swap_up()
drag down [line] <number>:
    user.select_range(number, number)
    edit.line_swap_down()
drag down <number> through <number>:
    user.select_range(number_1, number_2)
    edit.line_swap_down()
clone [line] <number>: user.line_clone(number)

select camel left: user.extend_camel_left()
select camel right: user.extend_camel_right()
go camel left: user.camel_left()
go camel right: user.camel_right()
