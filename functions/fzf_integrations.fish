# fzf open file
function ff
  set file (fzf --query=$argv[1] --no-multi --select-1 --exit-0 \
    --preview 'bat --color=always --line-range :500 {}')
  if test -n "$file"
    $EDITOR "$file"
  end
end

# rg-fzf open file
function rff
    wslview (rg -j4 . | fzf | cut -d ":" -f 1)
end

# rga-fzf open file
function aff
    set RG_PREFIX 'rga --files-with-matches'
    if test (count $argv) -gt 1
        set RG_PREFIX "$RG_PREFIX $argv[1..-2]"
    end
    set -l file $file
    set file (
        FZF_DEFAULT_COMMAND="$RG_PREFIX '$argv[-1]'" \
        fzf --sort \
            --preview='test ! -z {} && \
                rga -j4 --pretty --context 5 {q} {}' \
            --phony -q "$argv[-1]" \
            --bind "change:reload:$RG_PREFIX {q}" \
            --preview-window='50%:wrap'
    ) && \
    echo "opening $file" && \
    wslview "$file"
end

# fzf git log
function gll
    set selections (git ll --color=always $argv | \
        fzf --ansi --no-sort --no-height \
            --preview "echo {} | grep -o '[a-f0-9]\{7\}' | head -1 |
                       xargs -I@ sh -c 'git show --color=always @'")
    if test -n "$selections"
        set commits (echo "$selections" | sed 's/^[* |]*//' | cut -d' ' -f1 | tr '\n' ' ')
        git show $commits
    end
end

# fzf git add
function gadd
    set selections (git status --porcelain | fzf --ansi \
        --preview 'if (git ls-files --error-unmatch {2} &>/dev/null); then
                       git diff --color=always {2}
                   else
                       bat --color=always --line-range :500 {2}
                   end')
    if test -n "$selections"
        git add --verbose (echo "$selections" | cut -c 4- | tr '\n' ' ')
    end
end

# fzf kill process
function fkill
    set pid_col
    if test (uname) = "Linux"
        set pid_col 2
    else if test (uname) = "Darwin"
        set pid_col 3
    else
        echo 'Error: unknown platform'
        return
    end
    set pids (ps -f -u $USER | sed 1d | fzf --multi | tr -s [:blank:] | cut -d' ' -f$pid_col)
    if test -n "$pids"
        echo "$pids" | xargs kill -9 "$argv"
    end
end

# fzf change directory
function fcd
    set directory (fd --type d . "/mnt/d" | \
        fzf --query="$argv" --no-multi --select-1 --exit-0 \
            --preview 'tree -C {} | head -100')
    if test -n "$directory"
        cd "$directory"
    end
end
