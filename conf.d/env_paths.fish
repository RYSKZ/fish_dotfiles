# Set cargo path
export PATH="$HOME/.cargo/bin:$PATH"

# Set remote servers scripts path
set remote_servers_scripts_dir "/mnt/c/Research/Servidores"

export BROWSER='/mnt/c/Windows/explorer.exe'

# Set cert path
export SSL_CERT_DIR=/etc/ssl/certs

# Set Volta path
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

# Set .bin path
set -gx PATH "$HOME/.bin" $PATH

# Set .local/bin
set -gx PATH "$HOME/.local/bin" $PATH

# Set conda path
set -gx PATH "$HOME/miniconda3/bin" $PATH
