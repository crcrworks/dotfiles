#theme
set -l foreground d3c6aa
set -l selection 493b40
set -l comment 7a8479
set -l red e67e80
set -l orange e69875
set -l yellow dbbc7f
set -l green a7c080
set -l purple d699b6
set -l cyan 83c092
set -l blue 7fbbb3

set -g fish_color_normal $foreground
set -g fish_color_command $blue
set -g fish_color_keyword $cyan
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $cyan
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $blue
set -g fish_color_autosuggestion $comment

# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment
