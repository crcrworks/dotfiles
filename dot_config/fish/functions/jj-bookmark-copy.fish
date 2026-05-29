function jj-bookmark-copy --description 'Select a Jujutsu bookmark with fzf and copy its name'
	if not command -sq jj
		echo 'jj command not found' >&2
		return 127
	end

	if not command -sq fzf
		echo 'fzf command not found' >&2
		return 127
	end

	set -l copy_command
	if command -sq pbcopy
		set copy_command pbcopy
	else if command -sq wl-copy
		set copy_command wl-copy
	else if command -sq xclip
		set copy_command xclip -selection clipboard
	else
		echo 'clipboard command not found: install pbcopy, wl-copy, or xclip' >&2
		return 127
	end

	set -l bookmark (
		command jj bookmark list --no-pager --color never --template 'name ++ "\n"' $argv |
		string match -rv '^\s*$' |
		fzf --height 40% --reverse --prompt 'jj bookmark> '
	)
	or return $status

	if test -z "$bookmark"
		return 1
	end

	printf '%s' "$bookmark" | command $copy_command
	or return $status

	printf 'copied bookmark: %s\n' "$bookmark"
end
