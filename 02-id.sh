yay -S --noconfirm --needed gum

# Configure identification
echo -e "\nEnter identification for git and autocomplete..."
export ERT_USER_NAME=$(gum input --placeholder "Enter full name" --prompt "Name> ")
export ERT_USER_EMAIL=$(gum input --placeholder "Enter email address" --prompt "Email> ")

# Set common git aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global pull.rebase true
git config --global init.defaultBranch master

# Set identification from install inputs
if [[ -n "${ERT_USER_NAME//[[:space:]]/}" ]]; then
  git config --global user.name "$ERT_USER_NAME"
fi

if [[ -n "${ERT_USER_EMAIL//[[:space:]]/}" ]]; then
  git config --global user.email "$ERT_USER_EMAIL"
fi
