# Set Remote Servers SSH Connections Alias
# Lab
## Servidores
alias ta="$remote_servers_scripts_dir/tardis.sh"
alias an="$remote_servers_scripts_dir/andromeda.sh"
alias mw="$remote_servers_scripts_dir/mw.sh"
alias sc="$remote_servers_scripts_dir/cg.sh"
alias gon="$remote_servers_scripts_dir/gondor.sh"
alias mi="$remote_servers_scripts_dir/milkyway.sh"
alias na="$remote_servers_scripts_dir/nautilus.sh"
alias pc="$remote_servers_scripts_dir/pcalb.sh"
alias ph="$remote_servers_scripts_dir/phoenix.sh"
alias se="$remote_servers_scripts_dir/serenity.sh"
alias si="$remote_servers_scripts_dir/sirius.sh"

## TFS
alias con="$remote_servers_scripts_dir/controller.sh"
alias dad="$remote_servers_scripts_dir/dad.sh"

## Jupyter
alias anj="$remote_servers_scripts_dir/andromeda_jupyter.sh"
alias mwj="$remote_servers_scripts_dir/mw_jupyter.sh"
alias scj="$remote_servers_scripts_dir/cognet_jupyter.sh"
alias goj="$remote_servers_scripts_dir/gondor_jupyter.sh"
alias mij="$remote_servers_scripts_dir/milkyway_jupyter.sh"
alias naj="$remote_servers_scripts_dir/nautilus_jupyter.sh"
alias pcj="$remote_servers_scripts_dir/pcalb_jupyter.sh"
alias phj="$remote_servers_scripts_dir/phoenix_jupyter.sh"
alias ju="$remote_servers_scripts_dir/setup_jupyter.sh"

# Mis VMs
alias az="clear; ssh amit@40.121.53.98"

# TID VPN
alias vpn="$remote_servers_scripts_dir/vpn_tid.sh"

# Remote Servers SSH Connections Local Forwarding
alias bd="$remote_servers_scripts_dir/bind.sh"

# Live Captions
alias apr "sudo service dbus start; flatpak run net.sapples.LiveCaptions"

# Pip
alias pip="pip3"

# Git log
git config --global alias.ll 'log --graph --format="%C(yellow)%h%C(red)%d%C(reset) - %C(bold green)(%ar)%C(reset) %s %C(blue)<%an>%C(reset)"'
