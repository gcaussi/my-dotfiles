# my-dotfiles

Meus dotfiles para programação web com tilix, tmux, neovim, zshell e vscode.

**Imagens**

Clone este repositório para o diretório ~/Projects/

```
$ mkdir ~/Projects && cd ~/Projects/

$ git clone https://github.com/gcaussi/my-dotfiles.git

$ cd ~/Projects/my-dotfiles
```

## Tilix

Copie o tilixkai.json para o diretório ~/.config/tilix/schemes

```
$ mkdir ~/.config/tilix/schemes

$ cp ~/Projects/my-dotfiles/tilixkai.json ~/.config/tilix/schemes
```

Agora nas configurações do Tilix mude a fonte padrão para Fira Code Regular 10 e o tema para Tilixkai.

## ZShell

Primeiramente devemos instalar o ZSH:

```
$ sudo apt install zsh
```

Agora instalaremos o Oh My Zsh:

```
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Reinicie o terminal e abra o ZSH:

```
$ zsh
```

Agora substitua o arquivo original ~/.zshrc, lembrando que o tema que uso para o Oh My Zsh é o kafeitu:

```
$ rm ~/.zshrc && cp ~/Projects/my-dotfiles/.zshrc ~/
```

