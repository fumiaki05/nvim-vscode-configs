# nvim-vscode-configs

This repository contains configuration file for Neovim and VScode to manage both setups in one place

## Getting Started

To get started with the project, follow these steps:

1. Clone the repository:  
    `git clone https://github.com/your_username/project.git`
2. Set up editor configurations:

### Neovim

1. Install Neovim:
   - For macOS: `brew install neovim`
   - For Linux: `sudo apt-get install neovim`

2. Create the Neovim configuration file:
   ```
   mkdir -p ~/.config/nvim
   touch ~/.config/nvim/init.lua
   ```

3. Copy and paste the following code into the `init.lua` file:
   ```lua
   -- Neovim configuration goes here
   ```

### Visual Studio Code

1. Install Visual Studio Code:
   - Download it from the official website: https://code.visualstudio.com/

2. Open Visual Studio Code and install the "EditorConfig for VS Code" extension.

3. Create an `.editorconfig` file in the root directory of your project and add the desired key bindings.

## Plugins

### Codeium

To use Codeium suggestion, run `:Codeium Auth` and put your API Token.
More info: https://github.com/Exafunction/codeium.vim

By Default, Codeium was disabled, run `:CodeiumEnable` to enable it.
