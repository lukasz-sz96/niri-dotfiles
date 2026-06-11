if status is-interactive
    fish_add_path -g $HOME/.local/bin

    if command -q mise
        mise activate fish | source
    end

    if command -q zoxide
        zoxide init fish | source
    end

    if command -q atuin
        atuin init fish | source
    end
end

# Aliases
alias c="clear"
alias cat="bat"
alias du="dust"
alias ll="eza -la --icons=auto --group-directories-first"
alias ls="eza --icons=auto --group-directories-first"
alias la="eza -la --icons=auto --group-directories-first"
alias lt="eza --tree --icons=auto --group-directories-first"
alias grep="rg"
alias find="fd"
alias top="btop"

alias g="git"
alias gs="git status --short --branch"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git lg"
alias lg="lazygit"
alias ld="lazydocker"

alias dots='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias dots-lazygit='lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME'

alias ports="lsof -Pan -iTCP -sTCP:LISTEN"
alias serve3000="serve 3000"
alias k="kubectl"
alias tf="tofu"

alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dcl="docker compose logs -f"
alias dcp="docker compose ps"

alias ghpr="gh pr create"
alias ghco="gh pr checkout"
alias ghpv="gh pr view --web"
