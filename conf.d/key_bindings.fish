# Bind Ctrl + Right Arrow to forward-word
bind \e\[1\;5C forward-word

# Bind Ctrl + Left Arrow to backward-word
bind \e\[1\;5D backward-word

# Bind Ctrl + Delete to delete-word
bind \cH backward-kill-path-component

# Bind Ctrl + Supr to delete-word
bind \e\[3\;5~ kill-word

# McFly History Widget
function fish_user_key_bindings
    bind \cr __mcfly-history-widget

    if bind -M insert >/dev/null 2>&1
        bind -M insert \cr __mcfly-history-widget
    end
end