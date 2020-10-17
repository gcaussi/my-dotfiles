# my-dotfiles

Meus dotfiles para programação web com tilix, tmux, neovim, zshell e vscode.

<div align="center">
<img src="https://octodex.github.com/images/megacat-2.png" width="200"><br>
<sup><strong>Fig 1:</strong> Megatocat into action</sup>
</div>

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

## Visual Studio Code

Também utilizo para algumas tarefas o Visual Studio Code, que é a minha IDE preferida que só perde espaço para o NeoVim. Minha lista de extensões:

* Bracket Pair Colorizer
* Code Runner
* Color Highlight
* Dark Molokai Theme
* Live server
* Material Icon Theme
* Prettier - Code formatter
* Settings Sync
* TabNine

Eu também realizo outras configurações que devem ser alteradas no arquivo .JSON do Visual Studio Code. Pressione <kbd>Ctrl+Shift+P</kbd> para entrar no Command Palette e digite Open settings (JSON). Agora copie para o arquivo:


<details>
<summary>Open settings (JSON)</summary>
<pre>

```json
{
    "workbench.iconTheme": "material-icon-theme",
    "workbench.startupEditor": "none",
    "workbench.editor.labelFormat": "short",
    "terminal.integrated.shell.osx": "/bin/zsh",
    "terminal.integrated.fontSize": 14,
    "editor.tabSize": 2,
    "editor.fontSize": 14,
    "editor.lineHeight": 20,
    "editor.fontFamily": "Fira Code",
    "editor.fontLigatures": true,
    "editor.rulers": [80, 120],
    "editor.renderLineHighlight": "gutter",
    "window.zoomLevel": 0,
    "explorer.compactFolders": false,
    "extensions.ignoreRecommendations": true,
    "tabnine.experimentalAutoImports": true,

    "material-icon-theme.folders.associations": {
        "infra": "app",
        "entities": "class",
        "schemas": "class",
        "typeorm": "database",
        "repositories": "mappings",
        "http": "container",
        "migrations": "tools",
        "modules": "components",
        "implementations": "core",
        "dtos": "typescript",
        "fakes": "mock",
        "websockets": "pipe",
        "protos": "pipe",
        "grpc": "pipe"
    },

    "material-icon-theme.files.associations": {
        "ormconfig.json": "database",
        "tsconfig.json": "tune",
        "*.proto": "3d"
    },

    "files.exclude": {
        "**/.git": true,
        "**/.svn": true,
        "**/.hg": true,
        "**/CVS": true,
        "**/.DS_Store": true,
        "node_modules": true
    },

"workbench.colorTheme": "Dark (Molokai)",
"workbench.activityBar.visible": true,

} 
```

</details>

Após realizar todas as configurações desejadas sincronize tudo com a extensão Settings Sync com sua conta do GitHub.
