
## Configurations

Configurations and extensions that I recommend.

## Visual Studio Code

I recommend [these](/config/vscode/settings.json) settings, which you should adapt to your system if you're not using Zsh or you're using it on Windows.

I recommend [these](/config/vscode/shortcuts.json) shortcuts, which you should adapt to your system if you're not using macOS.

I also recommend these extensions:

- **[Beautify](https://marketplace.visualstudio.com/items?itemName=HookyQR.beautify)** - Beautify code in place for VS Code.
- **[Docker](https://marketplace.visualstudio.com/items?itemName=PeterJausovec.vscode-docker)** - Adds syntax highlighting, commands, hover tips, and linting for Dockerfile and docker-compose files.
- **[EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)** - EditorConfig Support for Visual Studio Code.
- **[gitignore](https://marketplace.visualstudio.com/items?itemName=codezombiech.gitignore)** - Language support for .gitignore files.
- **[Duplicate actions](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-duplicate)** - Ability to duplicate files in VS Code.
- **[VS Live Share](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare)** - Real-time collaborative development from the comfort of your favorite tools.
- **[Highlight](https://marketplace.visualstudio.com/items?itemName=fabiospampinato.vscode-highlight)** - Advanced text highlighter based on regexes. Useful for todos, annotations etc.
- **[Todo+](https://marketplace.visualstudio.com/items?itemName=fabiospampinato.vscode-todo-plus)** - Manage todo lists with ease. Powerful, easy to use and customizable.
- **[Monokai Night Theme](https://marketplace.visualstudio.com/items?itemName=fabiospampinato.vscode-monokai-night)** - A complete, dark and minimalistic Monokai-inspired theme.

## Zsh

I recommend [this](/config/zsh/.zshrc) configuration, which includes:

- Good default settings
- Some aliases
- A plugin for debugging node scripts:
  1. Press <kbd>ESC</kbd><kbd>ESC</kbd> and your command will be prefixed with `debugger `, press it again to remove it
  2. Your script will start as normal, but you'll get a URL for opening the devtools
  3. Go to that URL and the devtools will open!
- A nice prompt theme
