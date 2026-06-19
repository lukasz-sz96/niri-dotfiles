# niri-dotfiles

Personal dotfiles managed with a bare Git repo.

## Usage

Clone and checkout to your home directory:

```bash
git clone --bare https://github.com/lukasz-sz96/niri-dotfiles.git "$HOME/.dotfiles"
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" checkout
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" config status.showUntrackedFiles no
```

If the checkout fails due to existing files, back them up first:

```bash
mkdir -p ~/.config-backup
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" checkout 2>&1 \
  | grep -oP '^\s+\K\S+' \
  | xargs -I{} sh -c 'mkdir -p "$(dirname ~/.config-backup/{})" && mv ~/{} ~/.config-backup/{}' 2>/dev/null
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" checkout -f
```

## Update

```bash
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" pull
```

## Adding new dotfiles

```bash
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" add <file>
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" commit -m "message"
git --git-dir="$HOME/.dotfiles" --work-tree="$HOME" push
```
