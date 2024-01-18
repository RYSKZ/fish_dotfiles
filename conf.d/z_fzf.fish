function j
    if test (count $argv) -gt 0
        set selected (z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --filter "$argv" | sed 's/^[0-9,.]* *//' | head -n 1)

        if test -n "$selected"
            z $selected
            return
        end
    end
end
