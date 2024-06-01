# Remove Welcome Message
set -Ux fish_greeting

# Color Preset Configuration
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline

# Init Starship
starship init fish | source

# Init McFly
mcfly init fish | source
mcfly-fzf init fish | source

# Fix Windows Terminal startup directory
## Define a function to check the parent process directory of Windows Terminal
function fix_wt_start_dir
    # echo "Current directory: $PWD"
        if test "$PWD" = "/mnt/c/Windows/System32"
            # echo "Match found, changing directory..."
            cd /mnt/c/Users/Amit/Downloads
            # echo "Directory changed to: $PWD"
        else
            # echo "No match found, staying in the current directory."
        end
end

## Call the function
fix_wt_start_dir

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/amit/miniconda3/bin/conda
    eval /home/amit/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/amit/miniconda3/etc/fish/conf.d/conda.fish"
        . "/home/amit/miniconda3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/amit/miniconda3/bin" $PATH
    end
end
# <<< conda initialize <<<

